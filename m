Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4922917996
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748773794; cv=none; b=BQrrS1/YlwI7yiydci6uRQ57W7g8T0jQURggSjMFx6K1jtqLmu9BQeKYcNnWpZpocfQJ/4EiYda0igcFrKgi8KffDLYbCEib2VlNpJBpiFjLAFj0fqw0pAXXyemiA35WHwozDNOewj86vgOg8r4gtfz2DT+D2n885EY5M+yUeow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748773794; c=relaxed/simple;
	bh=xHE2fw/B4KOSsqpT6mtu6s1p7i66uKqtiLf6WXtrrXU=;
	h=To:Subject:From:Message-Id:Date; b=T5ZZdvZrHTqQilbMzabFMzjqg5hqRYpog0r1O2mvDYadtJMGONQ958rxYmG6SbVt4Gu0Jc1ExIVncfZyM+hZ5glYfA2eDbYMYEhsxSXBTgqeWCXpbP7sd3A8LWb5qkQLkwfEkVLqkuF40P5YL9D6FXIgp59YJN6FRKgd/mQUQBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAdhOp9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAdhOp9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C44C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748773793;
	bh=xHE2fw/B4KOSsqpT6mtu6s1p7i66uKqtiLf6WXtrrXU=;
	h=To:Subject:From:Date:From;
	b=NAdhOp9cWX4Feahumu4bmryYfEksFfjRv1M6f+lUtlehsJx7KXf+k2jUn5iFiWAvA
	 r9crxmvhTlXhoKukoyUJmzlVwMDOkTj7iPgnmM/2mqZgkr9ll9M1uxljDmTTyT8cvL
	 F4r486OuM1I22VkjEKbvifcbm66WzfulU1/9XPwiX7IZMTpsa9ica1/D7QmD+EkdwD
	 heg2sw7A2C3/qPN1vWsbcnKGcqJ1EW9hSem3zqP/pqC8bZgUnKn2GmGrXP0m4E5y+e
	 Nm4vT8fwm/6ZzfElLAQfxE54eSomGeY1M08w7CvOy1IDq5xD/jdquBuPnwYRRUrVXX
	 dVce03fUgJuJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F115C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877379357.22950.10738098634414458427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfe2b41d7624eed1421a346913635270cd1b4f3c2f3b274f5b16c10eff19468
Date: Sun, 01 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748773793
