Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2229028EB
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732680354; cv=none; b=bMXg/Z6lf/SNc9nnQFoEBmN1Q7y4RiCUsqk3f2Z4+MCO46eGOAPT1GMN6qlRCg6CC94dPlbzHEoLJWOVfphUW6oG/+5BuReQ/ec6aPlL/xzJz2E29QnJTpcpWALlReaZ1i8QO5pl/PJaHEOSYrcnA0IZIla6ZjGsMUTQbGLj6JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732680354; c=relaxed/simple;
	bh=fD26xsDfzvHsOr8hT++NESneKllCxtYMVtfXlfEyrU4=;
	h=To:Subject:From:Message-Id:Date; b=cDo8YnL6kd2R+9zo4PTFDgiyhDfiwlj8AzuNQX7VrZG94t8g/6/y04EwBCvfuelyHmRZpT3S16+zuS5Hr3yxANUOQ2LsfohyWRdnFEeKgl8+7vmjcuowsCuNc0AWAm595CvOvLRUM9oYHk2mZIieoVhzSt2hOZvZHZWjKdhAjhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NygRYnhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NygRYnhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBEDC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732680353;
	bh=fD26xsDfzvHsOr8hT++NESneKllCxtYMVtfXlfEyrU4=;
	h=To:Subject:From:Date:From;
	b=NygRYnhAj4a+gwJPmCAQhpyURDBrCLh2kWTxxfnqaZXI/GHvrWgEeiNMFfYIH+zyU
	 FDDF5cYYSr0xIsknqf2XgTlfQh/KKisc4ArFPMbmFEOFV4LAeU5UfU8NJoV1dJeLXv
	 qMovDxhuJu3jbgtFtA6ujHLJj979IO96q7A0OO2eO14V1/z09vx0pDIFeOTUHpJt+P
	 04gvb+Lcz6h2G1psrN8VC8UZJpZxutEW1u1e0i1CAoZjdw5iIZj3KPcxdpFs8ukki+
	 vbiKJDUlp7Kt+8H3TgAOa/bZJPfPPkQKVQxVj0KhFYGQBR9J7kfdUAL9rEZOS1AL+r
	 71BUgWHdHFPaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1F1D66BB0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268035360.24215.6352507248469375450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86584282c5330cf859f1288fb5db265849b49d0be75dc8c1a12ccecd04d68d8
Date: Wed, 27 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732680353
