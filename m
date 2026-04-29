Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2217A3803D0
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777429654; cv=none; b=j0HmjpBqcXb3P2Z5lwZ9YHvGxpJadCXTh2VPQXMKCyx/FU6yLfIu+nVuqzVt4WjiSyeewUQbhEeZsUqLqhKvMqW9+2YVk/SOs8G6nLnFy6nNUBJxLdm+AbzTAHrjWwirZrVlFips6SqthU3STnqGtFRXucf6oUBBudTEenzt8yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777429654; c=relaxed/simple;
	bh=oanXyF0JSSf2v5sJaiwnrfiQ124IyQXsPqR4NV3Dqf4=;
	h=To:Subject:From:Message-Id:Date; b=Fy4XOMXNuIzUUztT0ERwPnS2krrAZI6RgOcYlqvvF2+haLa+tE/aIy3wYVeuzAVFTnoTomS3XUNZTggJyAaeEqWhFu2SETiLANPMwxVxYLmZ9crUcz/P1lojwWlSKdZcyhbL1Jlj8PwIK4x1vu9n7O6t2BjIkqbSHHw1teTYYT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NH0Hyr/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NH0Hyr/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80A2C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777429653;
	bh=oanXyF0JSSf2v5sJaiwnrfiQ124IyQXsPqR4NV3Dqf4=;
	h=To:Subject:From:Date:From;
	b=NH0Hyr/AwhryXuKgLjsUOcbZdgjOdRceqJ/kPyX92Nst7cwc6EqFedIJ0w4FMM916
	 iOhGJxTluw3p6LM/MvZnZgQCXFaOWNlSqXHPEXkh6o9BrScpZxbdL0UF0yfMOXtQvK
	 UUAP5+BkCDtZ6J8yT/Ka+RXbxRVORRjomxiz+rZOFuLRO3f6LBnOYUYuK/fPdIQimC
	 58LYFgozBlTgOz9DZFGq2T1truxbF6pJIrKiMBfVXc8lolDwGO5kBqyKcSED5uHRPE
	 YWxoljhuX6IpSPgHoU77hvGvRWGA3yCu2StZxVhRvjmDI+Srw2DJdcJHj25FgIWRib
	 Dy6uPxsZGEuOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A969FFF885A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742965368.32456.16948412066418946506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c67c00b99e14331e745eb295d7b9a45cae6dfb661c4926af37b8c98798b6e16
Date: Wed, 29 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777429653
