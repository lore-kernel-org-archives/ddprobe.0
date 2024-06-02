Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB95D51A
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 18:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717352123; cv=none; b=XbOnJoshI0vxSbFzU1FigjeqeI4S14TTTFiGCaWkD54SWuLNzuAebvZDE9Vm/MkmFnNIRIP9Xxx/4OrevKT+eyahK+JHXapypcFbrNWm/ALEsUACN0lUHdIfs2MH7UnGZBgdOiQtULKYIyIA1MpcS2cBYZUq1AXE2m72ALR4noE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717352123; c=relaxed/simple;
	bh=gHiAJLaUgEwEiBYvhG6AVqducHrC3bOJH0KzyGdSG0E=;
	h=To:Subject:From:Message-Id:Date; b=QFkmJuXuNr/wxnpesY3vHiLJKO3+IBMPzDdr6OlIZFf6x+FFlJyMlhQhRpQu4eiYFA29A5fJkzZwpHsoI5FtOL/upwl+afl+Hx5ISayl7Pc1TsdhkPEU7u3ktg+uKtg+U/m9E7oQ7WNIcCrTQNAoNZ10kKQER8gboJXxvilLOTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/IPhGfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/IPhGfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA51C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 18:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717352122;
	bh=gHiAJLaUgEwEiBYvhG6AVqducHrC3bOJH0KzyGdSG0E=;
	h=To:Subject:From:Date:From;
	b=E/IPhGfodKItG2XccGK59moKBNh/CYGf0RAEMiBJ0WYMTj+yv2Ep199E9b59GT5u8
	 gT3k/Pu1oYCcY2YXiR6H/TIPHj5QMxydmZpygo73oz9mK6VcI3+XUgi2iIPOl/fVY9
	 2SKkNJdIT39XEfnohRUR5hoSiigyKlSgqVA2hQ4mRKVKQzE259aWMQADhRW32POTh7
	 rrHRyUntH3XqvVKPdUip0T0WxmbRBF+lMs1fri2VCIxU1K+7clbx4PNYXI1oNSkncN
	 PtpPZkGg0ex+tSxlitlGv3iLk+YRGdkm7BNPqfeagAf6HcS+JPFJ2QtCIfLzam3EmF
	 uE1DqT7VzF0Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A9BC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 18:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171735212277.7052.6803705909039665470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0309d66f3c0e07077806eac49814ad9c34f4d55f07a5f7f6c8ffb582ab637f
Date: Sun, 02 Jun 2024 18:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717352122
