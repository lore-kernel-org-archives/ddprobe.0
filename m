Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6303A268
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722960354; cv=none; b=IWDboWnYFIj26sHha8N4nOwkpL4Er5aW2w0WnEArn3xJm7SvMyV/2TBoeK1gB3xpU1osua1sj/KXDY0SFyOAYr+C6yRYvMXlXMB4j63xkG6EqnnEwxLkF2wzh3mtriFqyIyRbHEhwFyB2em7he2v93y4Xm7pkYzqOyynsEgsIms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722960354; c=relaxed/simple;
	bh=rjUTeEKFvs3BIdPUFl2MXA/BfA55vqWNCgkEEPQuHGg=;
	h=To:Subject:From:Message-Id:Date; b=swGddb277BR2QHwocSsPjx2Q/de+tMsBUX4OnAwDuyL5TWExn5z/LYbPDGMEQG66iT0ze3cwfE3wuapvFFCd4NYM6CWOEZ1xyuaf5cagNwb58w2lt2UQUc6zQaK21wu/EGacQBe7u5TTlXNeTD+vV8dEfOjLmukAY5c9ItRalLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkwviY6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkwviY6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F21C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722960353;
	bh=rjUTeEKFvs3BIdPUFl2MXA/BfA55vqWNCgkEEPQuHGg=;
	h=To:Subject:From:Date:From;
	b=QkwviY6dxVfiV/fz4/INBoucMUEuPNFPgWgRvSGtZFV+BoFNva8oukQKiRiwNueLB
	 R9RtpJtOAVsl1iph2Y54wQt6OLHRGJvrQoa9daMwS1AxHTH3U8RXVaFUg+Sd2bu+wg
	 OqKCR5MfxS9y+gY3tUl5Zz8Hoyw/BAe6jK00UidDW4k5vIWntqGcfmxtVILV8M63Z/
	 s++JqUTYE35KyEAOxXOApjFBX8aldwdWmlPiJ0bgMM2BUCFz5IuCz0GB3xjEKIhd5d
	 +TiEFJDP5r1VLaHmJS9zXMUTt/u3sgOj8J94mdtAQZ1xeJJmEzuuVdPRrRr/izYsj1
	 a0pRf0N7OQT8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AAEC52D71
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172296035360.11027.1858447702568514214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fad61c66a6ed3cb5ba1f32fe8d852f8239d6ea2d4e02399fec60ae62d2f024e
Date: Tue, 06 Aug 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722960353
