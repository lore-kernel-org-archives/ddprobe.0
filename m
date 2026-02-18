Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E190255E34
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771385694; cv=none; b=VoM8YJsZa6MB7QJV3PeVdwu4xwLczy20DJhXdAMM8R+ijye0tdHi7DMf2bEkeh+p1SCxhg5YYEjffmGslPG351PWioRKfweTjztlA86BWwJkojKcx9ToDx+b/OhzGkO4zbDW2VO2gRmIukvJJ9UawA3kvQavwsqUHr61AzCdgQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771385694; c=relaxed/simple;
	bh=M7IRb0J1PPvjyN+z34dA2MNxKV2/fEC3HaraGijlmdQ=;
	h=To:Subject:From:Message-Id:Date; b=hiulCTjViQAke8glN1604qHfymEsqugJ6G9YXDCOTGtTm2+ZHG+tE2VPR54OFLz9pW4CeplE9tuTT23yp2+u5w29RRwYaLjriufFUEVLLDf2HMzXYPUgYRvKJ1S8Tzuf3EYsCwmiOOOfoN+MHrPyJ8ZVI6TTCScXrS150+nGW8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fo+hwn3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fo+hwn3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE88C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771385693;
	bh=M7IRb0J1PPvjyN+z34dA2MNxKV2/fEC3HaraGijlmdQ=;
	h=To:Subject:From:Date:From;
	b=fo+hwn3qKZ7hMx26ZI9yOYqlhYyuvSign85sAhbOeYe1e6wVtbttXoy1JKA1TxMqL
	 dRa+W3OrJ5a0j/RKgLwllVC0Eg3Gu8Ghj099v5jRdQstORSBTGk3mBOED67SQIzxbw
	 l0AFeIFJFsRjN9sIgXFMz+kKRjNFu+GBqM+9zlMM9fWMj61dsPLc6cBxj7DhDhU1A+
	 YeruStHlvjFHhuARO8qiai+qWL5IjNgdY6nrGQvvsoQcZgS0Jfk2GJfCtjXddQ7f9A
	 VIpM3woH9iEgYS1fLR2uX6KJxwaSeS0uAwuQroerDHQqH4x9L2VfFG2aINOAVBiV8S
	 3nWhTNHtRYE1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFD7E9A049
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138569359.17562.17281541557082237899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648b6fab2ce4c402b49783409634bc99e3bc4df40fcff24b5d8f4ed5b045229e
Date: Wed, 18 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771385693
