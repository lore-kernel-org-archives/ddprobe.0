Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353401A2643
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748494794; cv=none; b=uDSJ6rVVlG0p5GPBLROTV/bYxchzkT9efid5kYVgmX5ccLvgigWTURCGIl74yTJInoJCaf5LNlj6oQWEyborCgyPr9S87aZyX4i5CU590CymgVWTAMrEH0bU1/oRAx4NgvtBT9NQUqhmIDVcI3mlNNAxf/upaMum8KdraZFdcHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748494794; c=relaxed/simple;
	bh=3Z+WP3hluG9VSpGP3fTWW6IAcwB8y9hR4j236WnJKlg=;
	h=To:Subject:From:Message-Id:Date; b=ZOOV3K7HsuM25ukWGxBZN4Ukeu+gPfUIIsRRzOYVWEqeZn9DQxQqHnDEuAZT7wjKVIJ5ZLzD2Q1ucaGHo7/ovJ+DZ6nrRdvC8OdL40Rq5KR5U7+isXgq0SwPm+9/IarjQ3FCpdyfIOkuyYzWRcEgrNID/H3XIyMv5b2szCNNxiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWLoTnGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWLoTnGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD6C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748494793;
	bh=3Z+WP3hluG9VSpGP3fTWW6IAcwB8y9hR4j236WnJKlg=;
	h=To:Subject:From:Date:From;
	b=mWLoTnGOl3/wEXd2KSoNmO4FjMVJ8CCmNDUUO0xT12nSpEVbplgkmUDUNRMVhB5Fm
	 troz5W0b4/Ds4izfBUfNr2eZP8aSb7jsgUJi/+FLxwRpuVf5+ph6CFQUgjYOctUui3
	 NNZoQxde1Am/ThjHRhbGeH+clF/lKIgwrjYluYkGidtl//6rLu1/Pn1rzw6izyBc7G
	 AQ68a0+Id//RgNJkENBvbqUhPfxJpi8+zZ3fcYg7/Elp5/wav+jbYp9DhX5aesM+tV
	 V9ZcL1Ng+m2Tx/Fq6WQ3C5RzudEHI10eTz2hpP1EJEZyEhsEz4pBt/d9c53cde8Efr
	 eF4abd7q+MUkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF67C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849479357.16500.1202503955523691804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f806e772d97c976e5f8e949539a669a097b1fde830cb6a072394b048e8f8c07
Date: Thu, 29 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748494793
