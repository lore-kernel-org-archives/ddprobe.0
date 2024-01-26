Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3331B5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706273897; cv=none; b=VPNuSndMXdQTcQ3NDSexhG9aogxqkkuKzYmI1wK2iur3wSgqlo48FG/Iw6zO7sZ7wjJuPpYRaKPAk30N0jPztCFc9USIB9OQpU6Cs5tH3Fu3QWZ7foegnFtD7oAcaMxPKczFP7VxghO7RIJ1R53OzoYW3IgVWcVFXFLU1HLKyDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706273897; c=relaxed/simple;
	bh=vWLu+59KUGPdvgtZXWCSZmym/v2xYW9dpVenntfeIb4=;
	h=To:Subject:From:Message-Id:Date; b=n+V3FI2vJxSbgfk8AJ3EvXJzhDMpvIQlAZ3vN5CgCJc4ETeS20Zw37ki/qDsEtgjG7PFEvGrkFEdaY6toClQhmwVnRJM7fZJfiEHkGS7Lj80nofX/fEeLquSeu43POJbhJzhUWTHTQY6hmpixnW/st9JWS9eHQTJnbAD3zQ5jWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHafyUFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHafyUFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA75C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706273896;
	bh=vWLu+59KUGPdvgtZXWCSZmym/v2xYW9dpVenntfeIb4=;
	h=To:Subject:From:Date:From;
	b=oHafyUFlybrFxnaGhKn3FUelJDaaGx//Qwr5tCBxOypeaZK2vQ4+Rrh0hvcmJwbYE
	 /RZ91geUqRknGP1Lq+BekAL90o9H6owLH21pC9mQcBqCX0f9yWw0glfX3KyQh63qLQ
	 cXnuL61N6rptwtHYNpwNDPn+VN8L9fENwx1H3fkGgPMVuthy2F6W6rkWH8uPedSdhZ
	 XLtBabnyaX35WC1oB4jMZmbGmbc+EJ3virQFSOvh2EUAEmSJFwqwP0mRW/3HuR66WQ
	 KbuX3hjSLbvYF2VNRxqVPsx1UM+8fcgItvaD9BwO1JEop0m0Q709KVUGWk+AmtNtp2
	 47OJbm80Q3Xnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608E2C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170627389638.4741.3438947237364283354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c26a37f560b31af869b3dd353c5c4660143dbfdd14e3d9b384accb4f4b0b1a2
Date: Fri, 26 Jan 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706273896
