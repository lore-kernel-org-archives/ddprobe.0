Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D50B1D79BE
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737020154; cv=none; b=epWgnURBYyVHf3PGeYdHWj8ePW3tZVqgb3I5ny9Huzh3TXw6WNVH1iwpBxAJEZuxUAIc8rsCzaft5ficjMP9vE+Qbfe5P8rS35+s/nPmzkMJa5YNOnq3hsQYaCIuPZQ/vCQXpofEc9ws+qmr6kb22jF0R+l+zhYW9g6+Fa55DoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737020154; c=relaxed/simple;
	bh=Pmghf7swzzZ1eOTkv9fMkk2jFtOrBXx4Pe0Q36IvrFo=;
	h=To:Subject:From:Message-Id:Date; b=Tn5SiTseT8Y17ROoiOWL+2ft6G6cTEHEhJ2MabhHBdiavBK2Ui4t+pAvGdjVQoGKHIQ5DoRAkKX/0PF2xrC9TVrU6ebbuYxB8BJvvLz9F30rQ6IpV92BCEJmMljW0/D1acTqLFQLZhKZAUnl7h6GyYEdnxgLI9zGVDiuD2l0Qhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dk+IB73d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dk+IB73d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAE8C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737020153;
	bh=Pmghf7swzzZ1eOTkv9fMkk2jFtOrBXx4Pe0Q36IvrFo=;
	h=To:Subject:From:Date:From;
	b=dk+IB73dvqXJ8oeaZOMrWE3ddkoReXGRNsTJCE3hih7XhRIfOeT5pU4mlGn+YCvdm
	 bbpxEpYXkb5usdAZd4gIn25Z65DYBIYBK+x14ZOIBDL2023JRsHEjH8kwLXBXXklsH
	 fworYL/65Q5vK8qv8YVs7hfaveVwF8DF8h3NW/aLv1bNU6Fh2UsYcAHG3Owp0fmffS
	 Dt4ssnf8ioLO2QVpLURM06iZYvcKVxSW/zJi/CFyNw5X0xClATJpe4fJl8atoKNsQC
	 kZHBkakXekCL9L7ahhx+fpFBmEU/LnKiNlq/7nHh0URRDrkSfgYs+R7uGo994bwPOU
	 kblfXRRupQ3Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9799AC02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702015361.25293.11390945648177875511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb487a015069f80af4fbdd6342e46e7a9c71668ade74ad5be0ff048a4e362d5b
Date: Thu, 16 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737020153
