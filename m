Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FAC4C9D
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751807994; cv=none; b=rc50fsgsl6wPaZuLmNeiLam6l3qlfPbM4JJ7ei1LM2nloqAbcIJxuAe4f/uFaiynpUmQhTbPYKgYIXDv+ba/+HM0eY3p8lWnmeGoKsGt/EsDfWvkNlgxdeSzbWg+OFOqlDIxnGJYzCR98OHtEV5f6RPIuJU7Va8LWQ8DZgq5i3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751807994; c=relaxed/simple;
	bh=s3DoS3uxHaImQqT0sy/yt6id+l/4e1RU5lV+D8wGAX8=;
	h=To:Subject:From:Message-Id:Date; b=kZciY0kIeaiDfOToOLApp5C6QqDRdhAmqzpaU9CsPCX5sFtWCUmsvj3q9IwM2p7iT8DjimdL/lACiiYXOj/BlJMC8q+5QaYsJShU3br8V4HFEtC38OwZuRtVzAJBtx/OROcuScz3k1RCtST8zpsKFPWRykxqvcB3wmvqDPwpxZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otwrXpQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otwrXpQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42EEC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751807993;
	bh=s3DoS3uxHaImQqT0sy/yt6id+l/4e1RU5lV+D8wGAX8=;
	h=To:Subject:From:Date:From;
	b=otwrXpQKXB/BWbNI2z0DKGC2VjlLl9k59fbYnyty4buy/VTObBo7654R4pqEocI2B
	 IY4QqAP44o/09/idAjWSzjNmVmw4W8/VZtIomlaV3Eqkv7M5DQQwcLezjwugxlufvO
	 JyMlOVQGXsoc75S6n5bpvwF9+B8tZQHeasqLgY+6s0jfYP3fz7/IDtS3rIQRhgJdnS
	 UTCOGjigiiVFEBwTDPc+e8cTMkCn++WJUap8YL+hhHXcr3Jxs+FuhwdCvd1aIxjDDB
	 AN1qnY8tanvuO2xe5TFyvIW5mUBR2LYaJv3TVWctqNcoUTvOKQBe6fhSLHth95pwcY
	 yxBd4/Qx7dFRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92092C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180799357.13003.15723444688154957394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1c484773864409a80b44628e53b9c81e44782a2a39698531c49b5fdc4a6686
Date: Sun, 06 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751807993
