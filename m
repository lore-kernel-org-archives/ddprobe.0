Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637DA1755A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720940423; cv=none; b=tlSj2OHNztWsDfbUP7gd2AQipAqn6iTjkmP/QEo6cO8FVM7vpKkgRIkbc3xTR5gP6dSKsvMd9gjm/qKLwRDH06Zbze9Kbpi9HQdP2/YaC2FqKsqEu7cMx2QifqG05df/12x7G5SGaKUvnkev7jpEob9XeXIBLqEIs+EYVU4/edo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720940423; c=relaxed/simple;
	bh=f1uRDYz9fIQbzAJrSRzZmv1O0B9oswfMfvgwiRXz2aI=;
	h=To:Subject:From:Message-Id:Date; b=OW9XIn34nFL1Q33QNc+c6hNAir/FfO8L/v3FxZGaempz9PbSWNzepYaDM5c0ovS/EHDQKfujagrAaW8nC8B9g7huXR1aX2vyhZ6MkhLvh4rWW3CQoQUTthzLxfs1igJPtZgNmUSp5dIo1sQ0rfX2bMIzk5d8h2IfilCt/s1vgq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmI/Ikbu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmI/Ikbu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA4FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720940422;
	bh=f1uRDYz9fIQbzAJrSRzZmv1O0B9oswfMfvgwiRXz2aI=;
	h=To:Subject:From:Date:From;
	b=bmI/IkbusSHgs5KnjymOO5vqFzO+dYCgLmXdkRzKzsX68V4X0IkIWP5OjXcYiQ6Tp
	 +A6wRVsZ7qxWdAyaK/u4VyXYKxBdvfC2cH4guNCE+OIzr83WEIwKIPe14/FC1iLEZz
	 6Rf3ymKo+e9X0xm3qEtmYr2hz9TZWg/q8mnPYQlqLJYPKkORzYoklshiue6HcEE2u/
	 DyB+u2Y9zj1S72HJgM/f1tWdpR/Jtd3qDYYfwGcWKiYmg4jynGklCxMRSHnzmXGmG+
	 S+s5CPy6fio+zdlneNq943GQA1GwwxJR5jI8MFG2mw+ivpQUUDnJpF1d33/nN06jzR
	 YQ7rzCNH6Y3Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0783C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094042276.27668.793348924107231021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b032c27d16dcc5e83c69455e589cdc6aed83332e25c79380539a740e28eb892
Date: Sun, 14 Jul 2024 07:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720940422
