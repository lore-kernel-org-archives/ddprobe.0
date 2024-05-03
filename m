Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BD0146D57
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714721543; cv=none; b=tXryY7aCGrG5qHme3BD1kxZ+TL3ssYQ8wE2m1a3fpSm68dqVW3ygjmAEKQT5H9NygpNJQCrZIjpnLUjURjto0HTahguvlCrZDXKpP72pqiPiuCMRNaWA5TX6dOIDM7HkWaGDh4gB7ViADgoYFEVIqZgYdFbqxOo8Su2frmCL8e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714721543; c=relaxed/simple;
	bh=xRl6DoGdp2Ppm2r6KizfEm7OFzhoxy1FNMFuwdJQfoc=;
	h=To:Subject:From:Message-Id:Date; b=LrFnsBknwvIOnKhtSMcx4+uhP0l0XCQ2Tib86MOJHvTqdavxutOmGh/ENQsbIThCNZP0Q6H0le+L/9alBJAnXIzMdX6L25FF3UfUV9pOUkTIWS71Cm4w/BRxOc5EaD8wiGcU5Xlbq+vCyNolfVngO7QWoMzHZIoyzqHaN1qbMiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zf/Vbg5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zf/Vbg5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8338C32789
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714721542;
	bh=xRl6DoGdp2Ppm2r6KizfEm7OFzhoxy1FNMFuwdJQfoc=;
	h=To:Subject:From:Date:From;
	b=Zf/Vbg5cly9RioDu7kzvgjoCH/cvVLB72gygEmDRxMhbIH7foBdnqQbwDeBIr3Lzs
	 8ac+A+CuCNemTFJDLL9AVqjSbQ5MwjRUcTC69W/oT00JW+PPGaIYVqdb2CPHcm8QNi
	 TGmCCiH79PUED+lbTMjKDe0cSbb/AAHqhrvGKuqZgfGM2gre6Fh0HCZ7HgBkWISawK
	 fJakcf4/ehBsEK84tlsj4rqi5coyicsW6CGRABy1oN2WgZj31PV+47qXO26gg77fhG
	 HTTIE2LYeKM0IDTvXmoxeWsCTOUq+q2cA+FW9T0ozL9vAoIcaYtv7B6pcyzkr9M/OF
	 G4REaliI8QfHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1073C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472154278.3672.9114381597398464515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ad4532da76058fbfb0ca91aed55e39e83661d23cf69715f7c8a32593c438fc
Date: Fri, 03 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714721542
