Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353E2219A7A
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746656394; cv=none; b=RngOZYB82DPYreU9I8Vr2698BtJrrjOMcA1ExHZ+Glxa9PhtTV4YfMUzTbUVjhWMol6Ay2O8OKA5ktzM2e9JaAjp/goYjqsmaNNQg27Ze/cjXBdl9Ub0AmfP4NtmQN/lAqcyeVhq90a4namQjn1ZStdOwoLZBvWoketa5TbrehA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746656394; c=relaxed/simple;
	bh=zLo48n3o+HEobx/GBrE3+gRnG4a9ww4V4z1rIS7qTSQ=;
	h=To:Subject:From:Message-Id:Date; b=qG0hy+F1uBerhIkJwWn8DQZdSn8zY07GO4Q//RY3ZXcEciSivWduv75/Sq80X4tQaE5j9tDDUKuzL1jo3hRtyRVe58PJQ+OVlj7rKeltUIqs13YyfiCHTWzUlx6/1c4sQmXZrIl100xnEMjSsOlcydMLKts6F4JQRN1MZTAwV/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kapZ5F17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kapZ5F17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E471C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746656393;
	bh=zLo48n3o+HEobx/GBrE3+gRnG4a9ww4V4z1rIS7qTSQ=;
	h=To:Subject:From:Date:From;
	b=kapZ5F17BjzhbU8RYjskNj5Z3plwE9jUx3E1Y0wJV201j6LGVJ4Rfd7wpkeGJoe5A
	 RcF8vZnqwZS0NCV6YSG9hEt0fdDPVYvCV9vx8VOnNToo57a/RwJAowny+n58awUWPA
	 XKRV3h5WNEwgR90zr4j24ngeiUd9Sz44daQJ7M4G4ndGmQvLpNUsVgdR10WvIO2qzy
	 OcUCPyZzu2m4kDvV1u0noi6zblW+GFndy7ogciVjJRHt92hMs9WYJgNfbt9UlrL+dz
	 Pjd+T5Cxa5cV00GE1ev1JBkg+tLjD/2IpT9tWCFDN7BUmbdP/zObRAsD5YdPvTbmXc
	 JzTQiMZW47Uhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E388C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665639357.4050.13855341337363227390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d64219a12e1586964e0c0165537d4101dbb9c9a4aaa557ef5ade76dc22b519
Date: Wed, 07 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746656393
