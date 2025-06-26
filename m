Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F33F2EE980
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750963795; cv=none; b=LfLhkOqwLXb8NSCRQJd/af7j2WxkO6+G/In5fVGUcLYx2M3mgBxUWwTFKFUbFsDu3U2GMveZ8ENlFHI0/qg4i39+ORu8/biDkKRekaIgYAmubTL9H4t2D7DNuqK+9Jy8+FLSI+XFximDVd82DbcVhxfBFS37vMeQ5dU4rvPwDtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750963795; c=relaxed/simple;
	bh=/prs7zIgF3q+BRKeGY5lNErWYo/7P9q+y05FM1YWk0k=;
	h=To:Subject:From:Message-Id:Date; b=YrectqPhuAc5kOzzg1EUp16KqGxkxayyuQ5uTsQN6bdXYHMOpB3UY0HdCVhjY86ISB9NGk5FUNA9Aoj6i6HCr4KeraV7AdSN5KAgcHIhxd+ZbS7cdCRkZncanQNUQX/l/4SIa+TgwfU5T8Y++kxVKBCaJ1y90VuuqzQQYhrsQnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrVOsLKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrVOsLKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3176C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750963793;
	bh=/prs7zIgF3q+BRKeGY5lNErWYo/7P9q+y05FM1YWk0k=;
	h=To:Subject:From:Date:From;
	b=NrVOsLKeZM7wijpKk3qrIs/v0j636O4uaFhcw2HcjjiA3+OYgrH/0sUh9m7bCyNEi
	 +QpizPiZh2ieIeyNEI9lsz5uz81UQaQ8I9Ohd8Wj0tMihThatW+DwHhgj5oskpS0H6
	 pitRpXaBJGoezGuv/7hDMDQzz8BN35Q3Gyf5oMYmJgMoUVllSvHfQrw3Ic7kdyr8Sa
	 jENUPziP4zDr5v/pNedOm957XtoZwIQwDPPgqCJ4828/wDQyQfWnNMrHMEAjNYmYFe
	 CbBB6Mphq8C/dwwYFZRJmI4/NPlmErBdTiyf6LDJguR0Rypyilc7++dEY/by0SeD9w
	 PRu0UhmBKXhwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93436C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096379358.23634.14163383727582848321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319d984e9f5f91daa2e61f9fd26f915117959e2cd1b68af082566021dc1edc1e
Date: Thu, 26 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750963793
