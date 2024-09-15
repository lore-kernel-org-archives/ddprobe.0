Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3404318D
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726366554; cv=none; b=Vcrw6C+SKiQYJFUAPgfp7SnIutCjB8dIUbvt/9vkRDcQWgcXaQugUs9VRLMd4GRRdEx/TBNtxPVLJbpmHJk5go6TLIJ5EPXFZnlyNjkB+DqIp+t+9bn+ZLZxMmETUkWQkfOSXH9Rd6YFks8614iF05jznRkIx4/9gOcqOShGEj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726366554; c=relaxed/simple;
	bh=zpKx7cUrrkMWkJfvVF6GfjCvN6eysbp7Nx5xJuqjgrk=;
	h=To:Subject:From:Message-Id:Date; b=LZW1nCl/3sUWZFzn8q1YzIVU45teHHslfgeAoww4IaNLiGhOARASvAVhgH9dsnYSN1VvMz7vR0YN3ByE7Ug40UtSL6hlT9MWuzrtHHPDg7+B6Ozt5aiTKV9Jz9a5jS7R+ZnmsDBm3quTN74rXtvWhwgQeBpQ577VWrHXx71ZTlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5UArDlv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5UArDlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B024FC4CEC0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726366553;
	bh=zpKx7cUrrkMWkJfvVF6GfjCvN6eysbp7Nx5xJuqjgrk=;
	h=To:Subject:From:Date:From;
	b=d5UArDlvcjglCftDaPizOGqvefy0R88BklC5tzYda1/MzOObfFTKVVtd0sWKuw5Dp
	 6dFrW6NGBGUE8tJ4bWx53iTp7mS0bukBxBmUJnDfQssWE6b05Go3jxb/lOQDMyfppi
	 gOgZHA4B6Y2p6HMsQoKa/wH7uUz1AaFgT0JDeO9XtyZWcNJt11lnv9iouwLJ4G0jnE
	 3AWkiu04vWiqzm+QNzVi5ig2ndnq6CGscoWh1h21X2AzRmOF+qhpvI+8xEDs/4Wp9B
	 /KR4pkG7XmKcM1Gm1SzQfl5QwaT6tdZkgy0MNU8gJX+Lg3P0W4k4MUmQkVIIJo3tpL
	 OlKlZiajbDovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99004C35FE1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172636655360.14983.17432785311057307456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c45de0370b8a08b0d7479e1cd1bf08bdf2a3d2e18986f9dadda78ed551baa7
Date: Sun, 15 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726366553
