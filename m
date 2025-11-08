Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB152FD1BB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762603194; cv=none; b=Cl9Int2Ywc8lr/TidtzGS10aYqkSzU/h4hZQNZcRQEfztQfGkZf4NV23OOQNreWsaZ/kDG/FCtA0cSYS8LmNCimyA6qEon1q60ohwOqLQdLXg56WvbksxBA3xGVnt8rcMq3nlt0A0gCa+LHfBSrrRNHJK8+/kmxv7M5zgh4zd/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762603194; c=relaxed/simple;
	bh=usK9msVQk1nVkWyJaFWGY1FStVy4/jsT+mGyKphGK4s=;
	h=To:Subject:From:Message-Id:Date; b=rHNWnWGrwaiJH6KqDxf6AbdFTtIljqjQSB4698chfHEaFKLD44caSpkOIAehzrkTO/CNhGcHtcIvGGLJE2cdLgKush3mSEWi4qoMvaF2OE/e8p2IcaXvSsXqImbtDnNe21SqfLxFRIEyGRY+yEs203RVWLYtLTcC8dusU7mI+LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVQRynL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVQRynL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDB4C2BC9E
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762603193;
	bh=usK9msVQk1nVkWyJaFWGY1FStVy4/jsT+mGyKphGK4s=;
	h=To:Subject:From:Date:From;
	b=jVQRynL61BTxmHd3rfdwRbhhUZvFG+7RlmgqxrM7ULecqpqzH/+SmBvm1V+78ylie
	 IPV4TF4AI8z8JCbrDvCykji3/KoFe8+jhTBTUe7Pw3CiTsAFJO3yztjGwqsQkmEYNN
	 Z+NhMAqiF1SqLlN2QzWB15BjLFTBoKNusWpyIBPxCr36SnRjX0jX9w/b807TvvyMqR
	 3vNbh+irloig++eYfMLij28LOD3SRUbJ/RlX3BNf071Yq7nmspmH25E6TOeGDHc7w2
	 1jmNjL3tBc3KNY/WvY4ExKJD5oItQ2cJSsjgy0T0LogI8cfRnHVVvd6RrO8LaPWJwt
	 Nbk8Jhk6mltZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A5CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260319358.10728.15416009034930756375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb99333349dba8be1662fd4239a292ef0f4254fed0b208fa7cbb490c47149f1
Date: Sat, 08 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762603193
