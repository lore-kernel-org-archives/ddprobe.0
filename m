Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390D040861E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781096734; cv=none; b=n/32bO8UEiDouEr+Gn58H/ckDw8YVGs8b7sMoYl2jvpe9GN7ug1GSzPEtIOsactVCMlRI1n9L403aRqh1KWcpY1n35FEV5cs83kY9KP8JwF0awz7U2Ihk4Z+mWiTRyWSDbQhPwsCiFr+NMGFRUfheHkf3H/rJhf14a/oFgqheY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781096734; c=relaxed/simple;
	bh=k3h4DLZ3LSf07Vq5aetScTZhc5wftsx7/8EM7WwYMxI=;
	h=To:Subject:From:Message-Id:Date; b=fkOdh++ZOexLNF0a2f3fpaXVomQYQcsKVdb0OCZlvHhBGa4a6M9pcqTiu8EPaqIO8XVmrlKVttzzCwVyKen9QboUCv0l6yexNM1tWvl/j101s2856egEPHg/250YoR/hExSsJsy5ffs8grTVCR7+MhefLs5+LUutHbyIq5pdmU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ls7CUY9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ls7CUY9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB02DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781096733;
	bh=k3h4DLZ3LSf07Vq5aetScTZhc5wftsx7/8EM7WwYMxI=;
	h=To:Subject:From:Date:From;
	b=Ls7CUY9FAJuQEjzGsbU9WUHWAR1cIh19AzCCq2INhrrtwhE1+lis4rxmFiSGL95mx
	 C8xK5kQSlsjCAIN8TFK7o83Ph4/3WPUnv/slisW7tDsBE3gf3PqFc5TPcOV9YATioX
	 WZz9C7TZPGcxUKk5pCLg/hBXp2bL/UzGe2rNiq+0SJpzjZUS0bdr3/DizdIhgXckeh
	 jw1ZhZl6jWCfPm36DN+jNPTcpz3+yh3AEQeRQf+f6Jwo3c3TPeF1RqR1E2zQiGd36y
	 ESysifvzvIlUvgQRMTs1DJ3mbw0lSzSpSlbdnoF+z/Jl09V6bRQF6GmdwpfEqDW8vB
	 xqge2m/O1ci3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEED8CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109673370.13982.197968548426554594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a854e03de198357b07e7e948b625267b08fa17d8595a7a17535d99fd1119d593
Date: Wed, 10 Jun 2026 13:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781096733
