Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F5B1C69D
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743341994; cv=none; b=MhxzQC0FbHGA2GjjmCfLWBLL8bMdQJmV53QxhlMWjtJdQmSbolm1tlhWAs89wzSBa9X6nYHLr6TQ9k4UOZioByzp21S9+ST0AcE+CgBr0SwjaZnChBO+sQEu43EbfykCYsOAC4j4FRCBApVNNxO/qrF7xlBueloLMllzxTcifmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743341994; c=relaxed/simple;
	bh=rlSpudeAGJQW8RDozeoo7GGdDclbV9HMb7azMMWDAyQ=;
	h=To:Subject:From:Message-Id:Date; b=TAnGFECUx7vGrnT70uSj2Ad5j6RfFLY4k2C+L3TJabysIRjJB4Jzld1drjbcK23SdbgO8k4JFJB8pZ9Bt3DG5tlBShBZrEiBxsjZWTHPMcBF//UBJ4MZEcyYy/nJR0r9IwMNJSxLp9WZdAMSve7Vj8OdTfBhVTKo79RHOJ0yX6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miK6iMzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miK6iMzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCC2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743341993;
	bh=rlSpudeAGJQW8RDozeoo7GGdDclbV9HMb7azMMWDAyQ=;
	h=To:Subject:From:Date:From;
	b=miK6iMzGcF9qoGrYhJV3UsmnNNy97yLYHlDUZIlOaK70Xz+zwCIF09UOEUvgUlnQ+
	 2N5uxxm9VL5ygSL6saRnyYpxmVXIwsKP/fSeXtIYzpKGf37/QWAJ+gPQw/MQLx0+v+
	 0yQbgJ/L5EGy7+gMCkLS2XVUc9D7GgiB0fFwwJYTnAchUpifKylQ+XjI8Ok5EGxiyb
	 JUzmBA12pyOySbpcuAda8opi26gY30uqH8mPfFMYluoDCS6DjJe1jLQnKg+l+AD5jQ
	 z0Vx3z+Uap/cKcslr1/PZorGiVyyCRMnoKLMOYYR/mOqSbX6B3Bu7zZi6on5IlURjV
	 9R5aRlcO/+22Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99755C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334199361.26695.14998574011733671921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2b7f63ee465aa6aaa665d0732c936d59c96b2b7981e50dc8fabbe889d01137
Date: Sun, 30 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743341993
