Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B520142900
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724066754; cv=none; b=Px8LpaIa7Q0Q39G5r6o/PdYhKKdrJt6SrVcxB0qIlEOKowhapX9uZdzpww/zaEeUd+ZQGUWQ7VIi+hiWztWJFwl2bqhnEEzSFpVY3axFJuNyZoTgX8bl+Db23cTxM97Ck5/Rl+d2NX1czWoAaHesYad2u6wZCeh4EJkyFObv6dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724066754; c=relaxed/simple;
	bh=fRDhryrmtuk/GH3ywUlHHMZ3bB336DZdsy8bkqFqpbs=;
	h=To:Subject:From:Message-Id:Date; b=dtLracEy00GbIMoZiDY4sRYsi7R1n68TCd0zeCp9UGuYRt0YyA5AP79OZZwOHpGEuGrVgy7k3bM1WVwH2+DUTVBLo1zDjJd1DYLvtP9t9zjEzhVTJ1LS5OigXacbpFQbgJrLGj1yYYAyvB3fbGqih5JHRRrrpHR1gPlnBOxq3ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2Mq8z+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2Mq8z+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3006C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724066753;
	bh=fRDhryrmtuk/GH3ywUlHHMZ3bB336DZdsy8bkqFqpbs=;
	h=To:Subject:From:Date:From;
	b=G2Mq8z+gsePOchGepRJMTRBOMmmuXOjpOkg10u72OGdMdJ5rDbKbrQdEYC2nr6NaX
	 bxsF1H70g2e7CiNnXBj6pO8QZhWvS5TcCKTVsiGZElwWH12pUrPcNHVZH2TzDjOnQp
	 7nUJWXG7QeB1ALUoviy+4kTbvK7K9DVAavHru+Q4/JmOlqGauj3NqW9sNcfv9DzHYh
	 ay9WjSs63zjpg1ONWgfaPB+IaTPOl6uk6hzd7wGKWDGEiejluiCMc2K/dK/Fg0edQa
	 gVzLCBTR3DjGqL0A/nZbBjClUjQAbe3sFzIk01OlCBol1aidSvTeXAVeiuUyVc7Dbx
	 jNX4fq1TJcU5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D736C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172406675363.32553.14169287057829527765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356cf29250eee23e8224518eb5b0c563061196bbcb73843a80261c27d35466a2
Date: Mon, 19 Aug 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724066753
