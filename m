Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B86F22B664
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729815354; cv=none; b=YCe0MArmKFZ5tH1XQjLVGQlhZVt9ITzXcIAbSzZH1QdwqZ+0wUyzhKTDuJacVat6/1RcJo4IhtNghWNX50469GR/PadWoNOuojJqBUkVD5Sf3iXFiYpsOUVvANv4OAkovD0iHU0cnEbJKLOLkZExvJfobP5QWYv5vOid3HiL0I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729815354; c=relaxed/simple;
	bh=RKn4U2hhPN29kt2cF46FXKzHKrVhefrTWltD5upEfB4=;
	h=To:Subject:From:Message-Id:Date; b=sgVOSv4wib9O4Otb5SaGVF70epO5a24KY5QzO5nsPBtDbmJc0WiYSeCHfcRsRJnivIEjtA8nXQiC3vtxdhZJyt3LOaFBD1xD2cJX0Ns3sMl/xB4Bfe34C7nyYtV5V2VAG5zECtVtOy/xwQZ7MISGhIqo7S1W6fvBuVrIn4WkeuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yuv4j7Lf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yuv4j7Lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF91CC4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729815353;
	bh=RKn4U2hhPN29kt2cF46FXKzHKrVhefrTWltD5upEfB4=;
	h=To:Subject:From:Date:From;
	b=Yuv4j7LfGjuVmT2b0+d7nf3VewNJLGUDmTlnr6JRojogQzEhpZvBL3as+LEbu/5Ys
	 BM/q0AwIuIsXKGuw4oICT4rgp1SCVEaffA2o3iqmspKc7vhIR81ld5Lgvury5dSWlN
	 YCCgTw1lSCH0h1iMASiuBsqA2wOdcsq9u86RNWegKfaIzXdZf1zga3Tta52MA88JGh
	 1S8TCV8JmEn/igaEcmZ35Av3p3SMrgwZjMd7jgBcWY+m2X2zu7sBMm/aUjHU+iMi2E
	 3UcMIyG85chN2M58qkr1AUSj3GYWO/NEMJTLF22dYjQhBG0E0dqDcOFMji0CiI3mjG
	 zAVnBSvKa9hUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C34D10395
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172981535359.4510.1382500582904520597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6761067b7e949c67a195b6012d441c097dd70a218a027367ed6144b76da0d1e
Date: Fri, 25 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729815353
