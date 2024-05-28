Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBEB6D1C8
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716879263; cv=none; b=QqHV8FRMxxZ3jusseF+t2WZvjVughjO97hz+EQLXXPL3L9rtvIm1tUTksPT7uCe5dv7UAkrVbAMvKJpTmzw2qPZsNRTdnCK+QmWhB0LJ6TJWtfOoWSkf7z7zOveAi1x3qtpvvNOofdEhKxt28ao2uPbL7Gw0puWHkQOB86ATiIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716879263; c=relaxed/simple;
	bh=rASR4YDu42+74RvOKSmXSbMGGdwjMdIAUGU/6RddivU=;
	h=To:Subject:From:Message-Id:Date; b=cGOVo96uYZcqmKLTK6edSBLkrbQv0ujMHDjacEot15Lyz73S15gACsKkzryti4qq2+KTviLFGB/LQIdn5681ZXk95E+8eZz86IusvrUJpodxb4p/cUnIlaDO5oNfK2Bq/PVzflF4dOuq02uOlkynu0MFypYNQhiNZoVtaIfwsUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQNyKVFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQNyKVFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B95C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716879262;
	bh=rASR4YDu42+74RvOKSmXSbMGGdwjMdIAUGU/6RddivU=;
	h=To:Subject:From:Date:From;
	b=TQNyKVFTMfa/c8BbrUyW9a+LPdAUy+5/2DpoNaG3Rj6x+qutmPbJVunFaqT56wHhv
	 G+RHY8fsi+duikd2QeA1Prb+uWyhhfP6mYUJ9uLFRabvdjVGGSwt1vDfgZI7E/FljR
	 42o7pI0qOpB3y4PwcX+sWaeuIKVadPBda1yR3u4jiTptOg1kIofOtAnxflwfadkMwu
	 JyP0/vPac8ySrpmePpj4WRxiSq/Bf4AYbHd5fwQ/HrnvRpwQpJjKm5mzXHgzz4NL3b
	 3AjFTgRD6hSNBN8wSWMrmflNi531e4wjN1hr6VZ6F3LJSHUCiXlYfzzyJcsam9aZwU
	 4Zpd8fO6x2nbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22BBC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687926278.15046.13217402664205254459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa580bb007f2426c3e6cdc2dd20252f40df1568409827bef176f8fdfac222e5e
Date: Tue, 28 May 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716879262
