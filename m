Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200E62E3719
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753491594; cv=none; b=VX/ZWjOscyBzaq+CzKIl2pc937hp3XNA+AFUU0aemlt5Gp3X43Wpjj7h/0hrsqg3ZJRAvZUccr8EzNiw42SsTOa+/c1p57iH2SPvWnQXIqwtWKo0qgWF0fXuhA2jnqguJAsngU1kJywqRaQ8d/R/JEm+Sykqpp3VikkUwd7drUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753491594; c=relaxed/simple;
	bh=AsE6B1D0zPHehyAzQBHQHXDHDwdoCgxojXUBx8pD0sE=;
	h=To:Subject:From:Message-Id:Date; b=na7gtjEHH8JiKkVSZGNGyn4+zQpWQBUkJT05jj+xWV4wNCmd2lfaFKY707iqakgwXRcTFXaWFq8MZXv6056+6GA+N4DwybOHsvcHgSIBbQ5xmrMZlaJGoVdyPJkXsvSBMh2EMCVrRewit9l3ZDoxvQYi87qhr8fxNq2Oa3uKCGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaxqzpHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaxqzpHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE94C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753491593;
	bh=AsE6B1D0zPHehyAzQBHQHXDHDwdoCgxojXUBx8pD0sE=;
	h=To:Subject:From:Date:From;
	b=HaxqzpHYFpsc5bAzgS2GDEGVk2FVvybt7AZw07LSipzqhUqGnV9+ox2AdTur23Loq
	 Kz8cJmhRy+wJ3gh7JEue4RxqZvMjz/Eg8hvA8Fw3OUjDkD4nMj5e2Zv0YFOJdQFND6
	 hCycsDCp4j5R7J8anFF0nxzsNIC/cObO9mKKfgItSqrKFiJbgDo25bWZc2L7vXM2nv
	 FjMJfrudzy8RW0jw5fYEr/bCTASBsJdoRKMR45MNStJkPvyrldNKX4mLP8q/Wbtsy7
	 6TgRQRK4NgG81mEdV//vBeofKw7eEFaOjG0if41Vdvdi7eI3J63o1UWLRBCoKAjrjy
	 jUG4jTTw58xfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C4C87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349159357.3319.8497661456058674708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c4959f1bec01433a9422231d391be4effc26df25a4cda90616868e14e0e47a
Date: Sat, 26 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753491593
