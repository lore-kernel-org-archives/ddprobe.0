Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEE312B94
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736374554; cv=none; b=N8Q6rHbL6nqzrLXXXbW3cdcNaSU5HQUc9wCky7fZkckwxJ13+G9VGvFGDxLlaIeQ030jZmZWHnBgFhmTJ6fL+/628HlkvaND04deYN2DO1xshq2BtRhvFmkZmUxiqXpVZfuQiIJcoiQ9gQbxPXAmmVzH+rHdQDd3cGBoPL5PZvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736374554; c=relaxed/simple;
	bh=KE5Mp8S2SapYMF8QW6U3xH+PYbgSS5FCqMzMi/jc4qM=;
	h=To:Subject:From:Message-Id:Date; b=ncxh0i+3CcR0sGzagm+o2RbRbcFrYCmghoxRHQUdhjRWiXfkNL5wXgtNzCZSzPhVmk/xoVOdkXhsE58Xa0kHizBMW3B7CioHPY5tvZ2AfzyPauUx9AOnmVs458u8T+aPYl4NU+RyHSwfNJOj1nI96cP4xMjnmk8mUO4dZqAhaBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rg9yR1MM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rg9yR1MM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B359DC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736374553;
	bh=KE5Mp8S2SapYMF8QW6U3xH+PYbgSS5FCqMzMi/jc4qM=;
	h=To:Subject:From:Date:From;
	b=Rg9yR1MMBpu36G8cZWQAbQ9ibeGY5PxPxHQQYbT1grLa08u6RoYHB4bsbKEZQ2i/U
	 mAdMcsLHcS7VB9gq7/QaMjW1KWX/WlV0TYo9Duvisa1e7r7BpLfEuep05V1txmbDQ4
	 GcgkIgf72uQ/tCk2/sNRQHJfF+D+4vOKpRgXDoqwe1HmOYHzydDPDZZlUoeK5zjd9B
	 3+aD565LJzpQOZYjLarzFppdma0dIroIcz92WQ7ftIIeu86qoGXzp02XveVzuopo0E
	 Ab+TUZ5ybsoUwMOe3h/ZfoD5coYIV6vK65NJMI6MzkUDvOjUwY4K4cXBdnVu2jKZEp
	 WlMYMlogs0fMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FC8E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637455361.4369.9788364954328360183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70af608ace33d6a80ca9d04b253397d027d7e02915f24df627cebd5fdcb28e2f
Date: Wed, 08 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736374553
