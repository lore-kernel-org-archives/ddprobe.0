Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003E717FAB1
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719163343; cv=none; b=nYTJk+jvvY3Y5YFj0pIamakMRlTXZqH/spDmwzwYKBF2N5dYY3ytTOIU74Yc3ep5l9TaX2aTejVgl/d+E/t1FRIoy/p6wYGEii0kfwpanpPsKwNZMOAneCGUSz+IccENUL2/e9L5mINiK5mt0CdXKCHdPURLf2+ag2iTqsmjLZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719163343; c=relaxed/simple;
	bh=bj3h7UMwt4gGHGkBMU/NzgReJ3WLVsYNIhGGQko2HMI=;
	h=To:Subject:From:Message-Id:Date; b=YgyZVEMzr8qo1MP6Uld1gFiKu5Zc2Zb5hhNds/SiZIo2gvxvZs0+3ttIAqDgfPL0GynR1ktekURFsDl5zoNP0EduoQ3A1GrRqtXSOT/j7HbjWcQK7x7mI8NzDF1o4scRXZIEF5KEa2R164OvIi9ORSDvWQevYUBygEUty3TukzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iY/TlI0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iY/TlI0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7078C32786
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719163342;
	bh=bj3h7UMwt4gGHGkBMU/NzgReJ3WLVsYNIhGGQko2HMI=;
	h=To:Subject:From:Date:From;
	b=iY/TlI0QJJShoma+cGkN5nzjOgJUl9W0PKuFKDl52Rj7fpOJx9kUywVjeXvCikzTz
	 m9gDr8PjILYq/kJyNIBv6ytwIp0JRGJ/MWsJ9guGKq84ErlCbP/kXAH/8caK+TxpJw
	 8IghRXoD5NTFgzyPuf6CYRbZJ0d2a5MlKBIX0e9Z4CJkoPPi7SF9H5lzhePXOzBNmq
	 tvHg12K07rX503aAlekt/mbOKJ88UoH2Rkd2sRkhIJ7HHw2qVX7C9ywkdlquxn8oL5
	 7HsFzAoKP0GbOpM0OZnY2QDGdTy/Fk6HL7JyyDPzlfjnxeVxMYZfxffL5qF1dnkYPv
	 QMGyK62OUQB5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0785C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916334277.31795.6502423136886272263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e19e01dfcc67ffc159236f3d9ef6779a3ce294fe592e3e3ab8d0f47be9c90a6
Date: Sun, 23 Jun 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719163342
