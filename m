Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F202111
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735389354; cv=none; b=RBGxoRvU9bYRY38rJywn/24E/Hw4nkPFa3fKJow5vfLyPdNwQOSEdQbkKC/AT+aA9SoGmAtb3V/8ACSHFEqX9CPLOL5nPT0g8vlPzqnOfbjOD48mGJMq1nv6qQlApk6m+wSWpmGWJRGSxPWSJXahFfKynv634K4aqgS3OxaCiKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735389354; c=relaxed/simple;
	bh=sKqrDJdAp/PsCj+3bFmFbbqAA6kxs9Wsdc3NTTQVnP4=;
	h=To:Subject:From:Message-Id:Date; b=sRpaovPWqJQ/xeJ3vFirsmJEBagk3e2IameP9Mw6GgwT7XGgcWHkL7ubXOgdQgFgdiuNJM4GkNc/XRobl7OLjRDaG0UzQCGIAGnOtCcQ9uTeoOXxoWTU4WhENyyjMhUOqxFgJU7ec1tfgAN+XIJDyyRXeFa7rUM2luC45YJmWow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZ9QjKc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZ9QjKc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E37C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735389353;
	bh=sKqrDJdAp/PsCj+3bFmFbbqAA6kxs9Wsdc3NTTQVnP4=;
	h=To:Subject:From:Date:From;
	b=LZ9QjKc06HY6TtmZNqF5udc7D6JWMjTvj5ZnFpNwSyvhsfqkQewlehdxFqZIcCUW0
	 ZG/UG6oq0lIfyPE4cnLzLgvZoq3ipXfZOE9mL3b2JETd+OTYl7H7VFLnmPVZUj88nI
	 sNrDtv2x64eo2ljQOAgxhEUYaYbgEjABvMQ7lfCRpkik1Z6dT60lOdN0uDr8afi3Ml
	 j4jSOqvxRLXKCl/A1ghK8kcywZnusrcjTB5agJtnntQquxm79Tk5jmhQp+oWHhi3eD
	 rXNqxSmbsYs6v6Qc1hD9rt7kqFRZcdwxwxwKb6P4f8/7UGNoioCeY3u/4M8jfBuAp3
	 sAQDBDcQnEQqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A085FE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173538935361.2320.5073289580127679863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40087db45eb7a7484a8e1fa02fc2470576c49282dd28d600f738b271f3027b8
Date: Sat, 28 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735389353
