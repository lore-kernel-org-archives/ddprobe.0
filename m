Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC2F1E1A33
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738941954; cv=none; b=cWEmMejbMYreWjgQ3WlgN1uObNpdfnuXdTN63Ewn3SrIAUXsbthIvVqGp0qNN9O9zilB7aDe42cWXiEBOxgLhn+QpmkjqcghD6L0o25GL3iBq6CgynlHIXp5FXkAX5knpNBsWAeH4+mHaI+MTH5A8AKvfcntDq36gTz9SW2QYN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738941954; c=relaxed/simple;
	bh=YEW31kwx57AUTxbC7h9pdGoiIpt5LctlqKYmmJTJ6TY=;
	h=To:Subject:From:Message-Id:Date; b=dplVnvhf09sPTj214ALbD3G3RRkyTdjGeJPS+pyAW/ScqZgiThf0FYaEQy0MYLP3XMYbyzzWZ8BTn86TU8j4zYYKzI1elIxpmkPt8/mt9zXRRec0k/GNj49kc4F1evEX0o6D9KRv3ZZk6JmdzdDi8kQ8KRCcCGIgebaOG8lXAtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1Ja5q7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1Ja5q7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBCAC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738941953;
	bh=YEW31kwx57AUTxbC7h9pdGoiIpt5LctlqKYmmJTJ6TY=;
	h=To:Subject:From:Date:From;
	b=k1Ja5q7LNgT7ekSJCgO1JM4L6yjEjioenil5OW8uXFarqX5ERuyKSxv2yv9zDjC4T
	 cs9smz/VbHqhPagXUs/vGQzTMJ/a1pTNc4X9JQLBTM2RaaQGazVNHaZqbC7yd2OVdR
	 S/0HoZZ9Q8Kpr2x09ehfD2PhCL52NywwD7raXm0i/6xuYhvLfKY4N2YBsBdDOVWUrl
	 KXpYtQSoP7RT0hHA/MLS3xDNIC1sMq0ZXCGmQLFUrQhboEunxU5RUVXcrZz7KqbZhn
	 9rCVA0DqsMshUDDCwCovTczO1mmkTYjbnOZnw/TANoyGjYGA0J9QqGoXTyWyBIvvs+
	 vZOD64OTjJB4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E7FC0219C
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894195368.6592.14247291396144530858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27887c65932d9bfd0a6145f6d7f9cbb9a5331695c8ab1eba36f1ee3c61c4fd3
Date: Fri, 07 Feb 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738941953
