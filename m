Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F328257852
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761674994; cv=none; b=TFovin4j7SNfMF/31GZ30c/K2+gb8TrC9qInBAjdfhIq354rEWLvFrPy5IbANEHm9j1JLtLWP+2kxvUUUjh22VGlTCEV6TjdzDLwcS0kwv8aMzPMJEhfOokTe9kPzbPWAfk8+88gYZkIKiXZevG5c5SyoKvsy9TDYcvw2fqdZWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761674994; c=relaxed/simple;
	bh=wwRlsCczqdXMpq3X005ZtXzVUIXThfiHDXY57ErHEx8=;
	h=To:Subject:From:Message-Id:Date; b=dWT8BQrVqzDCDA6sMk57ECmt7+Q5scvmkEex1WNylzd04dkVQGOOQpeIQn9seMxTHUv2094Y/owyZtleXPRXI0cV2TPpMUtHTTUBR4/RoiuUbjV6gOXsIY9RUYxz8Gk+1qAFN4RstZLIrtiH7ZvCEhR08+Y6ALH9xkJvo3X8cVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpaNCzGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpaNCzGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3394C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761674993;
	bh=wwRlsCczqdXMpq3X005ZtXzVUIXThfiHDXY57ErHEx8=;
	h=To:Subject:From:Date:From;
	b=JpaNCzGw9HekT43+AbNBhGrNwoWH29zqryVeMaQmVVa3lj284Wc8NbfcxrXdoKGl/
	 nWvZTuTTdUU2XxY4UMnudMSBcB6E6mkqps733v7mD7R23xvw/hMDyp+ySSD301X+4Q
	 aM/BMOg5oipQUlVlAcxfYkyp91vfxrgrGLseusyWALjfN75krBoOSh8+UsfeC+CdEt
	 NBIKYHLKixICo4baORS+09Di8XPUd0xXWHakOxV+wvIV3SsljrKsrp0+5UJp5/I160
	 ftWEFXtLAgZHJhjuytOkCeB6gr2juWUMymBfhRcUxxuTQtx+WmyaijI7IlSdKtb/O1
	 pH3zJ35WCrNSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4FCCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167499358.14175.12667020450459079438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11d9dc9e65c48453d5b7da061320f29e0ebeff1ae78848748429fcd9682b802
Date: Tue, 28 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761674993
