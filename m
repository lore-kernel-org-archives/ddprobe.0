Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7693B1AC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719652463; cv=none; b=NSeXJmxohwzTCGmpH3bGL3hPBdcKtcOniodo3gvdJuqCqOhAf5LaDFF1RYsM4Jk+e9pt5f4n1dj56gn9JX9fQiTA742ZTliXw/esbJbU9jID9w1nmeUeJ8LpdnU+0vd44oIUtJzrBMo8vtE74D7KX7s8EO19JYZRj//KG8nVM+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719652463; c=relaxed/simple;
	bh=N3ufWlIVzr+ABgztyuElDy+M1fgwdLsUf0VUMn6uOFg=;
	h=To:Subject:From:Message-Id:Date; b=avnxEkH4Ms/tBDTnhgvRiW0SurFnFyQC9CLwhfS/EbrHLtLzHJGBghOwHq4F2pt0cgilGY9tj/E50t5tYZp5PoOjjMlw3BFLXUZkC/9Xtps332up+8Lw8YtnxsRqewMeu/6he0vQlw9D13DDVSwniM3If/0lEEdLJY27d7E3cwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jawhJXcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jawhJXcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14C4C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719652462;
	bh=N3ufWlIVzr+ABgztyuElDy+M1fgwdLsUf0VUMn6uOFg=;
	h=To:Subject:From:Date:From;
	b=jawhJXcdgOu0bbOpgRipd2Og8SWGNATYJKqAb84pV6WGtTfQLtPFyEPN1OKavofTh
	 M6eXmpR7vTOLn+v2zWICmuCimlHyVpfVH9J4NqfWu7fSWoRnI/ngKmEyAxyyKt7WHA
	 lxdUk5yEsen2mPRRRc1wa8G4n71RgfZ8yYN6G0dAwwuZ1R86Y377M7dbf6xaMiXpL/
	 da+cgBdzLkuWOGrJnUIMQmI+HT28taoj+eGKRQHppiC4THRxkLeALC2ZfLgVZpUBHe
	 uvx1F+pTotNvKnKoOrjlhXCcDod8DIUvyOhrbIb24VW3SJpiwKw7mEmBaAeYDCdAXa
	 lpluQXKP1GmOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3C3C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965246278.32276.859840752142716240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a358a950169444a70127449ae05987622c0a85d528a66c74643571e98c7d186
Date: Sat, 29 Jun 2024 09:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719652462
