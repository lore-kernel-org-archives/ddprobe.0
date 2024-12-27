Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B54013DDD3
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735284354; cv=none; b=LudQsfukVZm1+Vr3Z6jvMR4M5agNuCpJM7EGqshqA9Q0J/qhfweDddqlrgR8m7X9+VLVRy/muqC0tW3X5T3++VlUsji2v/DE+Qt62DclW5Sy6gCNaszLCbh5OiJWtysvjJzB1nBKHtrugT3Uz6IfpB0Bs7YEFuWGSGGqB+Gr0bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735284354; c=relaxed/simple;
	bh=8ZkNGmTrLMz2S4+osEXIxx/imbtv1DcjBvAVLDeclu0=;
	h=To:Subject:From:Message-Id:Date; b=cz9b0PHuK0dRpqIbHJo6koTAvcOqmYwO/UYsP0KVzmxQ8uPW4cWJIclqb+AEYQokcIJ5Rlb1hjyEWNQBX+zYqCzIkQ/QPbj5i/k9j4YxjjZWRMOwEArfGw0V6T7Si1an7aOJ8NQw7mVsRJ9YaCBostqvaDVHuA/t89ApdczPfJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWlXupyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWlXupyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE8C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735284353;
	bh=8ZkNGmTrLMz2S4+osEXIxx/imbtv1DcjBvAVLDeclu0=;
	h=To:Subject:From:Date:From;
	b=cWlXupyfOZP3ooH3Vrk1F8ElX2Tmz0kiG4RO2/VK9XUDVAvZnc3KxKBwDpt7Q6Fgr
	 vwSyw2w2y0CKGDnoxyL1asFMolbfxcaiBdzCHadkPIDnerloZSEGseAeK8rbxczrwJ
	 XhnPZeH5y1fBxLiH/GxoWTfB6RBC0au5X+DSU0eXivrZQmokNaxCPBEvb0qHCh54jI
	 yv/YY86Ff9DZNqbuUL4F35HpP6onimES5Wu2J6Hqr1BOVIhByCXo7Wla5ZJD+Drw/+
	 Dbd80P0C7aqMT1ieQS+adRvHCC4D1oFiJdwa+4mqB5vwJMHOTzwvIcotxS0rWrZbY4
	 IQElhpv8rxa/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9019CE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173528435358.3510.3991798579825169190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3f721b4ba75cc05e23a5b3ca370082b90617435b3f5954da927bc2203871f5
Date: Fri, 27 Dec 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735284353
