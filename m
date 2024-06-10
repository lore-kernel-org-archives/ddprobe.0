Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5137D101D4
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717999643; cv=none; b=HrwneibzWmS/kkA/7lGI6WA24x0GF5i8leIMdX457c60tlLd/H03WJ2/g1zqOKsMO2Gsx3Tk2XxPQzGtQ0cbDoy9ngTJ4X5KiErb94ioeAYdc21T7Rxk8uurAh7LN86X2HMU/fhSqhIJ6B3uAdWVT7g0jSevGUZ0rmqm+1xRvkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717999643; c=relaxed/simple;
	bh=CaO1Gx1Pbu0MaxvbXNrox3eGTK1I9tPmpp6qf8Parb0=;
	h=To:Subject:From:Message-Id:Date; b=q/sUUhkYN8j9pJZT0CyGrD4qX+qLwA/aqlNFaJFkZYAeG7otZnkSCghgJJD6IJU+j2WGGCnVhnmQ3fcio8rUmBMWcp9XvS1hEBzFiYM9m8KuskPERzOg8WxDrinonwwKga8TrXwP2KI1dtP+0ZVyNxUWzkRjruvFQS3wJikX2Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dk1dZO+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dk1dZO+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EB0C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717999642;
	bh=CaO1Gx1Pbu0MaxvbXNrox3eGTK1I9tPmpp6qf8Parb0=;
	h=To:Subject:From:Date:From;
	b=dk1dZO+EmDApyIJFgoxC+qpO4oYO1Lw88HpauURThsTOGj2Az3aEOTv1HcajsrWO+
	 +cjAptNXpsyrrPXK6QcgKKIK4syOTjfw/wnxhK1fXfvVQecotIBEnHhdI6SdilXrEF
	 ZTnB9HfEs7wStgGoQZWiuR7h+7XXUcn88Q5OSmMXqE0bKUolB11OhQCHX+dIxN3eOZ
	 0RffRLgeXvN9G80gPx4Cgm8uu2dgkinS8jKCVGIZK09/4hWvHqN4z5/9aE80yDiTaK
	 i15zTLxYskF8gdFRkUt4zy/2P33bPtgXNttinSqf4fjS21jVqtr51GiFRLdvfNiFjy
	 ueHXXBz5eVy3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD82EC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171799964276.6828.1051564813990753283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c745330c284922dea0ddc218fbbff7652d73d437ab1eeb45ec8f5a80a670e7ff
Date: Mon, 10 Jun 2024 06:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717999642
