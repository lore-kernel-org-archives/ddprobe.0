Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF231E50E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750596595; cv=none; b=TGYe0nKPIMEPIPMoCQCrHLNB1tHPqhmrQtOjKzjaNQlWnaylkDeQH4d5G0sf6G8u/PB5lxymv26wdnXAeFZARHtgZTdn4jhYZ9XdrOmYTrEUE9RaNRyCfGk9oyfkY1fw8X16tagWp9k0s0iWf5S05Bjdz8C7FkmhwHsktB6sTtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750596595; c=relaxed/simple;
	bh=R4y3B7d/FR8uQ0zI4I+n5sq2FnlLYynkiPnc8YHMlIU=;
	h=To:Subject:From:Message-Id:Date; b=dSN1DbSynQNVQ5EQPLRhE9RTy+Ch7MOZqrnB2FlzcAqe9EQHaQzIkWxeHdNGGk1bomQmh6c9PDsiCS9NxGXyiOk9AVT7mSeYbFDu4KGi++SgVudHNZ7N9wV7YneO8xvwJw0HX4HorzFo0TcS/mVAYtHNilXGtcegLY2jzNPZbyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtEpw7KA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtEpw7KA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36DBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750596593;
	bh=R4y3B7d/FR8uQ0zI4I+n5sq2FnlLYynkiPnc8YHMlIU=;
	h=To:Subject:From:Date:From;
	b=LtEpw7KAVSIAzsMJKK1aUmywo3dBnD8IoLeRFFVqCc+51lh1zsiX8aeQ6Y/JkyW6k
	 d3uM9dM02c4O9wgK0y3ymENfFLxcLh3x4tb7L985c8wUgCQiGgpY79jEWti2d5kgsZ
	 0ror/QC5GzUeSpZtwtWsjkDMrnCW7IhQ/tJx7CPVDM9t2SbZSML3xWhST3vRM1gxO3
	 wPm6hZPkCGD9BGwB044CAFgjn+ZNhjoGXXbh72EgD4gziiZ/ASnR/Losx/E79uMBwx
	 jplsuiDg2ZjPCND9D5C9SE/PiGIrc0JBB97+sBwlfd5A2wyfGVge6/edMZy5IUXgVW
	 LU0acr8ENn8Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91976C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059659357.6996.2341207490844632447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9776690832e6a5ef1957661aa99920affb2a1133db34f2c13c89b594b6f6e9e9
Date: Sun, 22 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750596593
