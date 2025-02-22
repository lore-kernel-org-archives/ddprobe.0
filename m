Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3E8D530
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740266334; cv=none; b=C8iJe3OVSjNo844Uf1uAzhSsSIz3EtOMm+DK6i155ZOEHcgX9SvJMINFwiAZmOc+SauqDJg5YQ5HKisXsvrtK6l8z+9USoF+vv7PA9UeVb0Jnk5qzcc4zj/QeD/0Hu+hqVvGSTYyUgsZfsTXtHKRuhFFI+E42RcSUFKf2LtDaMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740266334; c=relaxed/simple;
	bh=I0LiQG3dbmD6oghjsOg4erAXAhufgbSMLj4tVWrrAAs=;
	h=To:Subject:From:Message-Id:Date; b=E1UTPZz406utbpfUg2ccMdVxwQwT5Sh6I6iNCEZJiz8v8z+3uYK9CvlyFGL2RXUCbpH852l/pfq4fIUIf2FXqHgOwjCorR5cUIH9E/QVAgtYECu9ME0mdRs0ryB87a0TxJt4a919b4RXGwhAcdZhhyZxmJ6SvverjlXJ7fM+XaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VF4P3TfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VF4P3TfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6B7C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740266333;
	bh=I0LiQG3dbmD6oghjsOg4erAXAhufgbSMLj4tVWrrAAs=;
	h=To:Subject:From:Date:From;
	b=VF4P3TfOyWFFQEuAlEpp3xIZw1cyGJGH9UNEhvNgpR39ieNpRFGtAtYU6X9KRIxbP
	 bNb9+GAsjxSutf6EAzPGIWpaMGceNfZ4gOx8TqNotuPrEh9mLPD0WuzLTKPPXd7AIE
	 n7htVidqeQPtqCrdSj7oT0f740l9lyKz7m4iXxruysTkcbVCv/4QcC0hP0c1Z9WdtD
	 XCm09LodqJmXwrFIGthMG4lNvHMn8kwlP3I32cQ3TDt0yCGT2buV+0+xJn37jGDkwl
	 MxVlEb4RSxzEQxoFb1cz+Wfnfb3V8Nhfb69/cpGOsEIfICQJYLdPcpFO7v75nitAkl
	 INf6YOk4cWukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCD2C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174026633362.20053.3558583629632651158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8509ab1f615faf1afba385cb7cb085832d707b3d2d8b1215385686afc9806414
Date: Sat, 22 Feb 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740266333
