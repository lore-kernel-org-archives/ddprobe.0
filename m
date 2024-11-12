Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAC61EE02B
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731407754; cv=none; b=MvNUlBCU2Tp4DjfzKsSUM0qYeuV/U2rLRewXaIox3st7KDciay5RgpB9HJcHFqShagtRnC/4oUFSKHpqHmCsG8Ey+qm/2o7QbSePsxddLpp1sk+D/Nt5AKZrwYJQTaf5L02aFjRjQFNKv5gaXMgbod0Fs8OpY6uqUUfmi99zN2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731407754; c=relaxed/simple;
	bh=1BjVBYrpgEBJ9c1xM1J7Z3XIH0LyEy+3f429mwBay6g=;
	h=To:Subject:From:Message-Id:Date; b=AsatyIjRJM8EusJysM6Y0e+/Uh+m/GzZsID6y8fzJE/9QI3Qq1qmrsG8uU+YuaRyb3KaQ65dCpVZ9zJzDcvNwu67/iIJv2PqmNNl60GeMy3gmVwrrV8gLbv72d7Gk0CemBOHujFmG+AqPxTnzTvU/AEoaati7qLEjfuOUcndZ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUfvzfOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUfvzfOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52E8C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731407753;
	bh=1BjVBYrpgEBJ9c1xM1J7Z3XIH0LyEy+3f429mwBay6g=;
	h=To:Subject:From:Date:From;
	b=LUfvzfOlPDFB3Sti/VYJJRkKz05y9dldHcAAnuXHFDfJxIcwsPbah/ClZA+GCceLH
	 0XekMUCHI39siYGHlhGXrKipJacX2DI10fvQQ1a3VP0AtQ+ELWowQrgcsMMiXASwJG
	 AZ+wBg6CyG5LP76CHslwxZIPTGHwTReG33t7Cui+2ERhI4notKn51Qmic7Jo1NRAkt
	 xsm1t8Ow68tWuV8y7ZchS2/TFqaDUW+q+s6LjfuvF5XGHjretuGCsxZ9yESI5rvZqn
	 LG9L83b0jAnb+h2C2i98g1kCrf6rV1l+xwxIiGr8mSqwgLctJaUPYy/IJjjU/DwV7R
	 oeJtvENaoN9fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2AD32D8B
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173140775359.21058.6373699987107399530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e45a90127ab1b00987bfb49d3f542d287c1560286178674856f47722276b3e
Date: Tue, 12 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731407753
