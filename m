Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35194207A2E
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741219134; cv=none; b=Wz8reOYU2rFUlAXhY/Zpf7m1y3OYMEf/PMeUHMEcNAEN53S2NON9qYjwHyrvmzlbb1rGrlb8KSAT7mlvq+aHgTIyVhwhCb3Kl1NLp+/7yHMFB7QEXEIis2k6c1hW1OhnvN7FFf2v6IksVVIUWJ3MxLF+9olPAu/be7dxuN10Dak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741219134; c=relaxed/simple;
	bh=N1/Cu6//Rl+T+1JCbGfJ0HaqMsSf5rKCUff1AHZkRWY=;
	h=To:Subject:From:Message-Id:Date; b=i9iLs7blIL0yXbutnX/4BFhkcQNwiD1FcxkkjKUdmm5GiOSD9a2bowQThsm7R1DbNG5v3dztjwHrSIG3Dmtwil20usAAL5/pulC0RTZn6PRpB5v/tbeDCCMzQodlVP+oA6w6LqOjIJVI1+Uhb3QmAJ9L/5GiKZVfUw4BqzZ/zTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtGhELu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtGhELu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F13C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741219133;
	bh=N1/Cu6//Rl+T+1JCbGfJ0HaqMsSf5rKCUff1AHZkRWY=;
	h=To:Subject:From:Date:From;
	b=OtGhELu9XwS37NGZfpMXBS1NVaGiG7bw6FmUcgkAOqeYXTqYSKMfXzmDrwUlLl77y
	 bq5oGL+67PXtROJbqL1u+kHRF5FgQ+mPc3L2va/nTEP4vjQ1VzJ9ik5MhcVj+FSzzE
	 auPxhwrlt8kLZT9t5A7a6WX+oAg6qUZtAs4jGw799xMXL308wRG2hWHul9buIqcYS4
	 dO4WQPsT9g+M1q9F2QH9C2Cl+BuM/pK1SRaWzhmej7yM4/RWPo29I0kC1rBxcmDzCo
	 X1z4Nt7qTsweYXVvfTCD7Uda70npKv/iY23aQZbwGs5TFl2Iy1+3lQQpU13cyKinec
	 GU0dmt5K2DYjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF0C28B22
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174121913361.3913.10458179437363478671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98406102d68c716a6695cc9be455e8ba85b49bb3f1b60f9bc2806023001a2da8
Date: Wed, 05 Mar 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741219133
