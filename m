Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165DB18A6DF
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751705394; cv=none; b=lHFsS3p4W/bp6ABb2XIQGMQC6QdLpJX5hTtfZg3pGbEtPUKNsaFKF3ZJ1vCRQLRifUvzsSjsMyGQAa2RDo4G2ioZ4fSCcDgquWPBmHPW8mmbM8q3EwKwJdbW3a8Gn+9Pj44W4g6n1I0Zz+KhsaXZl1MgxFRR3Hkd67iTZCCILNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751705394; c=relaxed/simple;
	bh=UUuW2/yIOUcgO1nsdcVeoeRjmkiE8n4WSDOFQXvFWZA=;
	h=To:Subject:From:Message-Id:Date; b=EHF08cDCn6FotbHmomYyCjgBiC2aVIVYg3NKITrT7Fc6Idf05sF8WAXd3BemrwYAtLw5ljG17uV/yCIO7UYxoXnpjNRylVVzV65sPa4FNDwokgS+oBYJkqW8ZO6hQPq7TxUF7RD2+XTYH+zkmvKAL0odarCVO+pme9IPUd4ps6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpYOma/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpYOma/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EE5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751705393;
	bh=UUuW2/yIOUcgO1nsdcVeoeRjmkiE8n4WSDOFQXvFWZA=;
	h=To:Subject:From:Date:From;
	b=BpYOma/FzbZe9J2nVJCtKuwNSdp4FA+ydvxCR+7m/QhiT0hvQdOl0yclcmIOcXKGk
	 c5/+B6070CbVjZGMaEnWnU2p0gub/l6xhBCzJfHn89NZoxVTjdoO0inj73GeuNVSMg
	 4YJvQ58VY1e07z/T5+Y8TZacCftQNRZxu9AGzsV/OX59QPo/xVp0VR7NQMNH3atuLa
	 6lvl+62qdysFcMfW/sT5hLwb8txsM0WnLBtEZM6C+chmQmNBESXYAfHIqk/jwQzmQO
	 86hr2jQ0UgxppXY1vqQqtix7c0wElJQx1PMXzU7EGvff89E7ddQ+IEzjdw+2yuWVZm
	 nRzBgjtrdf2Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93102C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170539358.27305.9825121960141731258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c458e4440e0da94d0b81fd269265227c31b55a556f06cc3f716af25ef7447fbd
Date: Sat, 05 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751705393
