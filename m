Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F0486136
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718227703; cv=none; b=JzUN80un6Frpzr245mx+7FIo2aMpYGnhBUXYq9dFPcXBFeeDz5vYds99v7B7T4f0aO+u6dPeeeVdu5b/a/SggCa9yWbiSwiJ64bNIAl3cPVZMiUH/x6sgBWjj4xCmv7aDW5QeHYM6k7WEw/90wNZsMslbhNMXGKC9HDcKYbYy0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718227703; c=relaxed/simple;
	bh=N8I4xN9idTChKOrTa2omQOlWxGslrH9Tcor/zs6e0ow=;
	h=To:Subject:From:Message-Id:Date; b=NiaHy+de5z+H/hOZGpeXt9EB+wbZfHBvAt59KMd/IXS0DZf5qX98UPrQ3UAt/1TypQjgCov6VJ13DYT/T+lHKJdqnzg1AGRo2UIoxx6WL9fDymWimWJM2GQHBBIZzJixJ2IlIW1Xe+Uvbs/3BVa77onuCHlbsUXHV6CeYJWk+AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yr1XSPyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yr1XSPyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9F99C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718227702;
	bh=N8I4xN9idTChKOrTa2omQOlWxGslrH9Tcor/zs6e0ow=;
	h=To:Subject:From:Date:From;
	b=Yr1XSPyuGl0F6vzXTJey4H531/Paic+AGu3/AWbxQZmumzyPzjnIYi6hXvxyzYmN+
	 DrhDeuarPsnLlz2RZc8LJC+KQGVVIIDyaWDjA7KbE+sx8pKttUhjMLsbmfxaoMVCNh
	 w7xZ6OgaO3Dc4bAww1UTW+/zhkN3riz3D7/0sYHaw+wMn/HVi9TBW3PG4mXGGKGb5O
	 9r/PJ67HVcrp4L1GUZlQougmVEbYj9fpcuDY8PfkpZ3Zzt4N0Ldfgzmbs+NqNuu6ra
	 tk2VNXDsxf28S31KkDyfxHAqcfh++0OjZiGxkEmcOjZxUlX7kytPT5jF3qIGOCYz8d
	 XiiJsMlyPjCNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C5FC27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171822770284.17364.7213810053403862159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba5fb4c3915dccf02de476ed491d85dc2d6393ac28d0c8162f219277ee19296
Date: Wed, 12 Jun 2024 21:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718227702
