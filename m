Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CF833EA
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735368954; cv=none; b=ib1YG2ON/vNpqibFfSIDK4yLYWL41PTUplnyVmFMnb+Q6h323ncFssWaxw4UBCLPYJWmHZ9vdE35UjAxpfxfGVKC1Rt3YjDwjOh5gQFnbkePNsKGsna5yxO34xBfQRx4w9/5jeKt8RqsMek762s6uNXM3FMUDlLQ7QNxpxK9ZR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735368954; c=relaxed/simple;
	bh=VTHQdl5NtaWfzzDFNfmwtHQtWlHbdVbrBo6spa1XWOY=;
	h=To:Subject:From:Message-Id:Date; b=g24A5uEXEy/mK6W+/HL+GS4EiMFBEwrngV0gCwDA5zGPV3Rj6yj2d/4hiFHQ6Xo4MerQmpZ867mCO9kgOFl2BxEcbt47eYXaqCu+USrsVNGSbaYxxaaMShE/2z8pnTew51DhwGtj+IIfriE1vWfXZTEnofJQHDeI/thSrWX1ixU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0hPPMho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0hPPMho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBA3C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735368953;
	bh=VTHQdl5NtaWfzzDFNfmwtHQtWlHbdVbrBo6spa1XWOY=;
	h=To:Subject:From:Date:From;
	b=j0hPPMhoFlIW0PTnYfn9rEWOVGI1Gx9TC6+SyIo96OzTcbhvqcMqbIZdfaWs02JSg
	 hY0vfij+De561HKJ/O4quiJpGGAfh5LNXxtX4C+61TmQ2GbVYbhMPmnp0HVQLQ0oED
	 NpuhRYoGNIcvFxH2v/JHX5mrp/3VK0xRDUo/l0V6p1ouHWhAM33X9TqMiMxkg/WpET
	 zyetD6Ju5WXOy1ndWga9ca0ajhPViD88eHLwE+tlwpvqBqtuTIDb6rTioKhQePwUuZ
	 gVmjd08k4u9i7BKeyuy9ClUCzAk9n+qzpq2PSXp5zAgszblqUN8TkfqcQPO2uf0wn1
	 wDZ85Si3s14SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE41FE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173536895370.12234.10594076798750304506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08f8c4c8212f1189e727520ed0731d88345cbd5585ed72c727ee418900176f5
Date: Sat, 28 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735368953
