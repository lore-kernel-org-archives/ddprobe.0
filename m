Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A6663D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719157343; cv=none; b=dnEsr/VczRWpkZF9/yin8WIE0wGXrmWis9qJfqtlKM5NSJoD1PrFz2AVqfXFUIhSQ4Fa50qpfSKA5Vu/bfv08C1RbFNfcn2fKwLxuM5WyFSkAZ2P60fmo4FOv1iHtWbG//Sk7jyhw5+oXRVYYC0h+OZesDNUfLxlkmdEhQChSiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719157343; c=relaxed/simple;
	bh=8kzVFgrlzc6EIB+4+nhbMyMotZO8UR8r7ESv2ompKAA=;
	h=To:Subject:From:Message-Id:Date; b=opbDvUykvXwfw9UShE1+INRLMkT5q1AEmR4yiiKpGQisg+8R7x8Wc8QzGnh+qJLweEGHvxe/g6RYqJs0HZ8v+IeQCokJ7UvCdyjmyUOqJjww+WsQf450reja0qOP7FF8HGy53lZJBEI56vTMqqXMg9emPzshoKi14AdOLhCiSxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJfl2rfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJfl2rfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E048DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719157342;
	bh=8kzVFgrlzc6EIB+4+nhbMyMotZO8UR8r7ESv2ompKAA=;
	h=To:Subject:From:Date:From;
	b=dJfl2rfXkgfczN+kSu2e5ILiQ86uZoy0tfADS4weTwFl2GTfATNnnWWn1HUCrTDKq
	 PyHricZ9nCq22n26eKdcCy80ASA2qJGPXANz4LhTtChqJUXmHq9HdMYE4O1EqvfkWF
	 yd+pKtJWaaq6YPBSK3JY3sbHKlphCp9pf8IM8T8RGQYBleDhN3hLznKIBwO/DGodK+
	 1H68xjzHPlyG/bn30R5J4MI2KlG3xn2ju2+b1rG+FidFwDxP2XRZ9QherMI5VnYFaE
	 A0tehNl1E8+PeyVexKJYO25M9vQoNqfS9BW7kWchBrIJivP3uF5yWd9dx0+xxB6Gcv
	 gd8lXNtlXNn0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A24C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915734278.15208.1032772134516803188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7c0529463182e647c4286a26c993aad9e2a8963313083d915d708af5866cec
Date: Sun, 23 Jun 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719157342
