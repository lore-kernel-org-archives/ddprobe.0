Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2F8AD23
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745713794; cv=none; b=GvgU2YyIlAKkIWhS+lw+dKp3Mirt00cnTO4WMfWWXonoj/Ev+pGuhVkap3TY1sIsMcYa3o864gwrGptiF2AP2HE9tcBf3EEK5kfjMkTusirioQmYV7/3sDD6Sgv8sHZHBKpkipSS2E6TIKLFrWgyMXqnjLh3n1K8L++BQzOb7HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745713794; c=relaxed/simple;
	bh=f95tvuN8i4gfmBgEF55DVthkuXS1ROYoEh/a5swGT0U=;
	h=To:Subject:From:Message-Id:Date; b=oi3nKkCOJctklQkvQ0WZsWh09hdnALk0SdtdJqDByoTkrBKD44+RXXwwf4Alxmgv4bBK8WkpyyCBrws/AgzZkCYaQRosi3s7HtPLpLfcUPYDV9G84LP++G80OT3gouysLCrxUbdLJ1LXVZ+3mFiuwIOFhxq47mkRhkU6sObdGDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2PkxWhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2PkxWhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D97C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745713793;
	bh=f95tvuN8i4gfmBgEF55DVthkuXS1ROYoEh/a5swGT0U=;
	h=To:Subject:From:Date:From;
	b=k2PkxWheOoteGyyO/TI52hglASo+Rm853PO68s6Q3Q10DVRPCZvF4TVGxlSLMazpd
	 u7UxKZmZPQEKMLjkvT1g6H+p3EHkYTtyDMMlaQ5ipWaXopCK9Njev5IwULS2gl9gsv
	 pjW/hHJSRfy6dixjYXRjyjqovn6t+0tu+CAuU1tvMRDHLKe+kJiAMI52ZS+Oxv7UAr
	 YZF5I1PBjsI00bLG6FTYZP2UBFXla0fFZK4vAV9kzMn015ipD/1l2Ub0AbAKf/QJPp
	 SIRahhH3tURnpXZ2bQ0oFFrhdQ1MxR9QK6Mbt9HMcvz/r2QJ8DkShhcn+M5ucTtoGj
	 Fi3u47EkI4L4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D6C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571379357.28465.15091380732602744702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d72c88512705aed3286c26c1716565c5b46b129a4aa06e28b6c481a3b698c4
Date: Sun, 27 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745713793
