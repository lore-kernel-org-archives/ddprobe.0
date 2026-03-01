Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249891C7012
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772387694; cv=none; b=uE8ptc5e0zI7ooGKT1QNOXTc1RDb3vNAkcLxyD7yzzBM7ZhFlmqyYXjLYNElj5Gbv8zZd1KQszoCnNohv2yJdnqRWjmVbUyQFAZMWoC0diDku4HDVnL3ypsyQu1fKwtwBWH9C90118/+NwA6EHrFYDSK+v5zZ75/2n0vBoWcVuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772387694; c=relaxed/simple;
	bh=Z/+mYiRAKLi/F5POSk7egbDAdiBy/9LWnmw0VEseGPw=;
	h=To:Subject:From:Message-Id:Date; b=m3rkUetQvZB98jg+vClMN+6nl7XjQJ0KWDUr/Lc3jdoTU0Aelqw7/oLNNqzaDKa50nfPBRxmWno0iDqE5zFteF35dDGBdOGmKtSjstZVfoARF6MUvbnxJRnMyCjw2mm4jV3aitix4Boh3YNvG9+wEvpUDqI1Q4Rpv5KARHz2b1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eozgY0MZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eozgY0MZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6234C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772387693;
	bh=Z/+mYiRAKLi/F5POSk7egbDAdiBy/9LWnmw0VEseGPw=;
	h=To:Subject:From:Date:From;
	b=eozgY0MZfGNpwb/byveHOuKbWJFp8OPrItXfPputwVBJoOBOfyEhWfi2NRvJDg5QK
	 JEepreOY5Jt4ZR1JwrkGK1LVjD/kN5qWMRBKJoYJsK6bMKpbIhMxIEwFcUshLfqhqE
	 LeYp9oZqxIJWDES/Nqt3ya5FaUHd5OnXvNNja/Krn1+vCKIAxyO5aVRIH5NZxNQJGH
	 lSxcqRuhrso/pO027s305hTExSLYZUVU3gBnEExEqfQVrLWdDCVzNE8V5EuM8dEE9m
	 BLFEbLug1f2ZOeV7uFhQ+a2TQr0FhKsRndE1SB+ZTi90I2yjh8bS4OZ79Y1NzIWxKX
	 4N2lVFyZgdYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9740BFD0073
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238769360.32654.11087617129570609159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4fadf67dbf3c2ff432616bbb3288a458fd50a0f6ebc1a9bb6637554c760d94
Date: Sun, 01 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772387693
