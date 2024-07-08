Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C35C12E75
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720473983; cv=none; b=hUFWrhBODvtzqdLBDA2kYLnJbuYuyox3rCpmg5ox51Sdg8xKbMjjgM5kajb2B7oGERdOB9IaCYuLVYHWxAZ40jwxgfpxpuMBSoQ2cpuuFrxcErVzdoes/ljmN7W7z+C5pJwPrYW8dko6AiSEBdVjAZTC1GKmAIBQIHZOTyBO/HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720473983; c=relaxed/simple;
	bh=pbCie0nSUmvECMjaBMxNMDHLu/amnRrafdcQ0SId2+I=;
	h=To:Subject:From:Message-Id:Date; b=uz0BwmBImINBngH8a05sK4Y/RjFNJEczMa8kgmaY26YizgVo/bMziBmMbGZbH8VTTG1LoWJeZUHBDo+FyWv8l95S3+hRjUGta+/aYCj3YInjsCo1ZqJkDMhZSzflOTcdUlSSS/ZLZmsKYlXsAR/sYaZN04KsqdrMR2ApF6WPXLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sS8SntOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sS8SntOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79E3C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720473982;
	bh=pbCie0nSUmvECMjaBMxNMDHLu/amnRrafdcQ0SId2+I=;
	h=To:Subject:From:Date:From;
	b=sS8SntObWPRasmahIAxxrCoU7Q66KAdemYeYFq4MVdA3IXGihaI9j0pKeHaM35zAK
	 LAykoLiL2nBAEYfCirWrJ1tPOh25HGj8SLrE3of85XANg8AVUUEzupwk7pUifuSqhv
	 e2IXaWncfKgrK3Mfhghz3OKyhaII2DxYiDyS/N5OOPsOh+PuCVCe+TsACz8ZKDNJIQ
	 w+qxvBH+SCK9vPyYNbwHjtSkXmV669Wjk4Xvsfc9uZDFBw0FgikiGT+rMluG9lsM92
	 MSsTFIoOPpJV0Y61m1b1tntP9ujSgtNOdZQu0JACArNtErdQCdykxS89vUpWc/n7zj
	 FhrZoHs4lpLZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D85C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047398279.21027.8762448487663532208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6125869667ca70c30d687ca7ab9d2f94587e2c0f5eb7fec6c4609fffb039166
Date: Mon, 08 Jul 2024 21:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720473982
