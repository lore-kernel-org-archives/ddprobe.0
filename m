Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3871E189B97
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724141754; cv=none; b=j1lLKqHONk1D6FkS2m0YrpjqgQKj6kmgmUW5P7G3Z9KN/9Ub8rBrFRL3W25YDLTo8jKStlMwxFQLjCN3E+7/4RtywdpoMXwO5lElJ/4LZBe5QP/bauez72tG7HhWWUnS91378/vxnHe4JDbWEUCpY+oAArWh/6dpF9jK/eLHT6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724141754; c=relaxed/simple;
	bh=y/bcvQ+9r58eqsa5XHeSAXYOohFtk/D60cL13lmJkTI=;
	h=To:Subject:From:Message-Id:Date; b=TGyX5LD8CkA07Un1qIn/nKbzXZnhHB96oG88j4J4aAUjce51YGAA8eklkUnSkeg5Lymg8nyV5TC3rgFbX6J/hP8rpAZW1BsX7T2oMwFTUCaTAo843st2JgKeIf8Qxmr/9HhIHSdv47jzBM9uaXNZpoGoptdutracqnsBHmLmrmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2Djmjwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2Djmjwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C3AC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724141753;
	bh=y/bcvQ+9r58eqsa5XHeSAXYOohFtk/D60cL13lmJkTI=;
	h=To:Subject:From:Date:From;
	b=q2Djmjwl8iA1nh0Wjne09WhiJi8yFTnVNqmL492V+XVyM4EUXVW5gt90o5nvKIMWw
	 YRbxzG2uIOUDm8grLQSqpUSgmp0POApb6Y7uzyOYb1z3427/BNjZeT+FiNVHRPlIkh
	 YE76Y+TPkj8iCeyoOx2MeQ235n+9aijh+wuw3KoefVHswSW9sPRLmP0OeuEZUozbxl
	 JsQfXmWswiAPvP+8l32GAGhjYlIlvhl4IK1UkqoTPuj/wY1kLoniOVzDaTMgcd5e6v
	 V7UOY6+o/7fAWaEsCYohu08T3Gp0UZmEwmwvgiH91s8RAPT42ZRa8BFg0ZQ988JJLa
	 51xrqsXbxilYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A7C5320E
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172414175360.30493.8069109090015232927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fc23629966807b17c7b0b3114f4c5c3ac1e15a74ec456c36dbb64c5bb172a4
Date: Tue, 20 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724141753
