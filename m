Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F5F30E821
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787658034; cv=none; b=WLBm5Efu6C825gtN8r2V8/gljTaSREzJh8acRthdP4XcHrvlkQSr80es7dUtpZLX61Q10KJeRz0nrpRnQHpwCKqCa4UFNG5/NHdYFIULHAKB/1ZPvEOmUcCipb0zxiTVzDdBfXtWBgxNc08C/URJ3s5G4dUzgC25CN5P5u6EHSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787658034; c=relaxed/simple;
	bh=zwXYRFXBtktc1KHL8qFn58avAIfo/1tp80zpXvxGiFg=;
	h=To:Subject:From:Message-Id:Date; b=gykEn6GTcakHiZ1c7xX2c2fOszoMLmDVfACTbZyV+Y6aO1gaVFIvVE153pIDD7fQyHqc+fT6GaZ1irwxdrhl2Z9fJYAxKGBLKopZXvuExwaUCMDWmoxwlCti3mvOqS157IgKzM5K6/HPZ5AotoCm6gH/OkepDPcNh4n8L+Vt59w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGtOEJyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGtOEJyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF64FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787658033;
	bh=zwXYRFXBtktc1KHL8qFn58avAIfo/1tp80zpXvxGiFg=;
	h=To:Subject:From:Date:From;
	b=aGtOEJyfLEu6vq5U3A2GLFIKLPDI2J9QNlyk7yiaXrpQdWbd1gr2SK+vKu57Pmwdj
	 XnOB0qgRZseJSKyAV4XQxnTbryZTNeVdU4zNipgHwazomUVt9fe61BFb7u96Y84ral
	 8boO7qRbp2eOlWRjFXFp0xtfgJUWqv+Z7hKD8uptc1ALEoH81TdA3XPhkhvMhzUMo/
	 IYPOT4twSN7///Uz0++mx/up1Eyie+up9myFVMNcUuU3SUKM2OWIWZ6zdbIk3BXPCP
	 wH0RDp4SU6r3F2lWz88wly1/vU7rR5fhHuiEm5/XSw64ZVkQewN5XstcPORTekHM/I
	 VnVPlUNZplG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACCCC61DBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765803368.6302.16115881094894999557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d389e1d05f35ccb3578b7cd2f44e7f9c33eb26da6a99fb6d99e912b3e361a4
Date: Tue, 25 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787658033
