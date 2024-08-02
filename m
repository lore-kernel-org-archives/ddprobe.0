Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0D84F615
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722632154; cv=none; b=aO/+j6YgN0IgRcfPabcJ/MV63G4/zuXiyQscpaivZiKgec0GZfJikvPGdk5MDSikyYEOAatm/JNJbi7rilAynFCimpUiYXRD9jZTueEyg9pBa81Bcta66J19MkUXdG1ERdSZeEaqwnqHkO2rVeLHoavS4IWZSKG4yDvJbeOSO+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722632154; c=relaxed/simple;
	bh=oKnaM85dD3BP28hG4qSIlwahn850I6ayJA3+Bku2Sgg=;
	h=To:Subject:From:Message-Id:Date; b=JcRRBmGEZCw00fvoCDj8Nad/ujzm46fJb5E+vxK75U7hZFhxQnUpjAsfU2KxCRpB5V8sL5m16/FzQsxmXzwsSoI3GgmuqpULkuQ9ZlSl8jQvVvXK3MX/NW7K7F4JJdHzNGvajwFZp2oQ4v82Zt/WTzDEzIWEoD6lSLkr/Aca0Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKay6lIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKay6lIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB806C4AF0C
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722632153;
	bh=oKnaM85dD3BP28hG4qSIlwahn850I6ayJA3+Bku2Sgg=;
	h=To:Subject:From:Date:From;
	b=NKay6lIkxDP/LqbfIhT5Oq/4aTtXcBXAfmo6Kb747F1zvDjr2l7+M/2vO52L3QN/r
	 YGNR07/XwXmwx7fwrj1NywVT1loQ0Zpf021EPcYRaPqa5RWeu2MLuiYRz7kX4vKFdo
	 HYUWkeVyWthpfrST0vMSWYMMN4kRJNhBdHWkXcrde5jM02Gk5HyJwFojY6aj3uMpQe
	 jR3pe5vkQoYEbxlcGZCLs5ciLFZ8XcBAn7bJkcqepGy5jP0X5c1717dJVo856F60gI
	 AgDBK4rDXR1eTKM713hRW5OryL8GrPAZhvwswCrvJ/eYYUx4zSXdO6gBjwIAZVBO6E
	 yzcg74CQBwwsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D558C3DA7F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263215363.7954.6643482845045024651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba5cd374cf7740a1556dc599497a63d47856c7dada9f266e0f157e212b3d55b
Date: Fri, 02 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722632153
