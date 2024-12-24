Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E12442C
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735001154; cv=none; b=FEbW0HJrjcq0UCunPIJtIopsYQNGmdJanmqHrV6ZQolaHKzgJfOuKAtvKMVkKG6CCud5FJiI6OWnLpW0pVb9HpHYqmoL4xOVxb8cLJaIA2OJfCbpfqlA1jf8HRh1FKAyPL90PXZcuWWzIHb0L0Ik/E2vvzcqI+inh0GmM22ySgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735001154; c=relaxed/simple;
	bh=pwPH1rJKqGtYv5C4BGOHEDXOp3/pvNG6XtyMXBEZN+k=;
	h=To:Subject:From:Message-Id:Date; b=PiNVODx2XxNRDfnrDgm4xRG4bYrrWQOWMNMwYnKPASVAdnd/Zqw26E4DnDwzRPWPADBSHoKtpOALDhAsATt0aZTqWolkJPc4Lj2tyEaZ94PegBw2y2fMAa8gt8YMO9ytKGH11uSM6XpwfVckEccgkdY7qCVr9Qi/mdMwf6xoVKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjDEyLJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjDEyLJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD714C4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735001153;
	bh=pwPH1rJKqGtYv5C4BGOHEDXOp3/pvNG6XtyMXBEZN+k=;
	h=To:Subject:From:Date:From;
	b=BjDEyLJ5h1IwFky7dlEzfuOeqptzydKpNrVlWycpjXn7dBgaNWYpmYF9XeUCNpzA8
	 uOUKdytAMYWP5hVSjnx3iqoA28DNc9pN/j+ZbILRRzeWRfOI5COFerxr69fTvdpmqK
	 SGWEDkFNd1UmQjzhxhtC8IARkhMZu3urEStaqhjYtF9BH9pdx7pXLNKWh1uJYXhzR8
	 Rmkh0mm9dBjJn8C+ql6Y/dTh1W6kWd9lWBec6Qbr0vAl1Ldqg7td/dwh7WR7Gp8DBa
	 TXT+2Fj1sKTJ1QvvhZ86/FrdCCdgN8ya8r6LEAnAeknPfXLaGG+KhN0DbjEm7jbia3
	 zDgPe28KpuGww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950A3E7718D
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173500115359.19214.3325486924879581418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730ab261dd30f60118dcb2bf8addca497b02d2c24545f2122a37dc45228f4d71
Date: Tue, 24 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735001153
