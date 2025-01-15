Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5115F232423
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736915754; cv=none; b=PQ4pmGCzfQEHuLFNXaU05+VPFA1ZniGYaW/YcuK5sRv3jA8uH1R/jbMSKp9NXVRRCDdcVyHygYzAKRwrsn2i9JP0gjFFnxDqrIMBlW/kX98Pktzb769Y7FcNHy5N4tBKrNXvx2tWvjg1EbJq2K6wzNtJMm4UC3KAZc0pm+ZcsH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736915754; c=relaxed/simple;
	bh=5k1ULU53S+6utAu3Lj43LqzSJ5QcDYjZQ74F1Z1lhcE=;
	h=To:Subject:From:Message-Id:Date; b=qojbP57zjI063Swyo/AaSNbXkyqgiNBNWas8ffTF7oYGXe93GqRdCc2i69UFEKSAjl7Vp4ddnVMSH9gH4oAQ/DRN1XI/iAKGrKxIzMhDpXlUR7m8K/NSxeJSHBixUxhsBAPMfXQmbhwT1V1ArrxhVgWf3GRZybMwbZeycJx6c4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWUKGnef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWUKGnef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D0AC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736915753;
	bh=5k1ULU53S+6utAu3Lj43LqzSJ5QcDYjZQ74F1Z1lhcE=;
	h=To:Subject:From:Date:From;
	b=tWUKGneflXPUpP10PE4jeu1SD+XH6ceKx+Z4sQ3YCOxdwUxG1LXQaJvHMNlTNedsk
	 zYVML4ZNcOaktdFg2hdmJhHzJOh1TFWEAH//DbBVhg1dVGOuuJCbQ0T4Bz0if2poiI
	 dcaVqaUBvT5Rv8JsocJIHSej/B/58epjxHBuNpUFmX6chC0EgRQpimD1ehH7C+f+SL
	 IoNfNvLdmnozdnwlYXXHY69L6NTraQHsSrqcwHuqVVaDfzZJdsNjbNNPpOnLDItK4F
	 lidgB2w3o9MPiDAnDs1oFuWXXDW55K2DJTwOOegc7zYzNUxOQBJ1gIPX7rbre4YJv4
	 EJLSMprpJZUFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95808C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173691575359.18846.7006483230354913118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 118341ef84d4f50d3d87609c32fb86bf1b32b7d1b74de58357e978d5d46958a3
Date: Wed, 15 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736915753
