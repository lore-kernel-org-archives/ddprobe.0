Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375AB2EEE91
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783609714; cv=none; b=lI1G7gCDUFNENg0V3PN5ecAviccT5briiblA1iAxwa9NN5N09cJSpzcDLjb8p8Sz8wkWh2oXSKAm8SaKXx8mlSAekGm6qSXTV4vZvqwjUE05yoorcbJ/tnMLR++PKniEiPrkrC+UmNfEVhR4ovncvbWgfJWS0y7cfobqVoOh/c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783609714; c=relaxed/simple;
	bh=XzxUEO+wee1a3czT817R2NTfEtyoXvbB0G36+ykKmqg=;
	h=To:Subject:From:Message-Id:Date; b=L4Uqlakt4IHIqe05kmb75D9f6LtUQyfbuIxgs1BmDs4AoWRux+gORRxtb78jbT73ZYeLG5vqQTSV9FMhkJPqI3MQ3Sgyeq6DpJCW/VeHPq6XtVsG6MAKWhOn/rWAFfLTj956NW7p95bvG0f7I4ucTfT8AguS5+vvkDVVktH3D74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P573m9PT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P573m9PT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91CAC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783609713;
	bh=XzxUEO+wee1a3czT817R2NTfEtyoXvbB0G36+ykKmqg=;
	h=To:Subject:From:Date:From;
	b=P573m9PT4KUttHcxbi7U8Tnj+s1P2LXj3irBUOepUphk5Nx+uWHHlWwtwOyAFodRz
	 vcYxH7knOuzLu0lcL7WSCCYK65v/MGo9lQwXHrbZ00hrAs8ipY0VEktWPnxAWOEZ7/
	 FMEaHJTZqPixtwoxKp+Afw4+N32IJRdb8x6tGKuou+Plv9KmWQUp8eFF1kuYMBF0iA
	 P0Am+YaDjEGJ36tOTmBRPlJOlQbwwnqTMxWv/Eeje74ySbQ7df3UWE+IPP5YMC3hwY
	 ete1CnY5lHvGjZ1Ph1jsFzp6iov3nVuu6aIgBcex2ld3V6VJNGpA7nGH764zFUYUSv
	 rJRwPxP7P4f1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84D5C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360971368.32348.470259122111748776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa173db94b9b2034db27156917d209594f417697381f002577452a3fae71b4bd
Date: Thu, 09 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783609713
