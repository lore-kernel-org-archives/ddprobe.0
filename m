Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3631D3BBC9
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739496535; cv=none; b=NuS+a9u9KTRSqR3PuYLt8CXNh8NcDcZHa36fg3sx8FV6YEqUXvAyl6RGa8Y0qMmJ24IjmJDcqvkJL0WOtr1nmJi2rvy0A9dZwD4h63gQ1z0bgUUXamta2dBMqnrkWYb5c/pOKa0PPCUwM1o1p3rzY1nIn6lHoHffqySK6Sr1Dak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739496535; c=relaxed/simple;
	bh=PgJQAUBxmU2zxg5sqGywIV7dLEFvE9N/TcIFhXngwmE=;
	h=To:Subject:From:Message-Id:Date; b=fM7qLCYSUjLT441JcCfZ/nVW/DhQ8xpkV96v+/E6lN1oc/NUY8jNkiYlKyXH8Q9Oz9OHojRg7ZZjFXbFrq9kdfScIAdJrfhf29jQfBUbg7q83wHLgUHac04i44sCpQ3PVwE0Mw0vLJGx1EWvmxXL1dKVLjh33CP7YoRG4Aeyxu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBUG/voH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBUG/voH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F70C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739496533;
	bh=PgJQAUBxmU2zxg5sqGywIV7dLEFvE9N/TcIFhXngwmE=;
	h=To:Subject:From:Date:From;
	b=XBUG/voHDn6T3cK8zKDug5MxbfHpdusD502x3ESG6kY2VetvUVHXLJinQH16chUuk
	 FKm7S+3tljBtg+NOrzGTpD/Sf5NzKxPHQYlWnqPbFTF7NFPKSBj/qgMdB1UZb4W8ZI
	 5SsjgKOTarLAlG78Pso9/lvjk5kO6Slt+vPH5YuyOnjhneihhu9CtjMTr42smswuid
	 pJdND6FLs3HiLZtn0FaggDQVbgkYzqXer7TJvAES0HhwuwQ25hhXvGAVjDIgO4WPG4
	 ReOVexr97ticIDhvYUokL0wBp6hHHFiHCl6UZrl0Oe3JfkZtU97/2rcRf4RICKxWkB
	 OKiGUX5ug4Hvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968C0C021A9
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173949653360.28398.3904567841733728682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55368a79d67b91de07e36701f054e8a12530d5b2294195a491fddb7e2fceba43
Date: Fri, 14 Feb 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739496533
