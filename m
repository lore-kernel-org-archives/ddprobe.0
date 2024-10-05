Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1BE52F88
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728153954; cv=none; b=Dzyn5gnliKxTyrjcX7ewDLhMa0PJ2iEOBeBoBxPYa752Bzogh8NLfutVWefQYsMb1lE4/HfpopILIQErGq4hA5964irDu6RU/4mBKof3er9nszZETgI+QjdnfSUmMw6ntt2vk+l+lAtl19UPZUaM2d6FPiGlGtL/aDl3cEhEy48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728153954; c=relaxed/simple;
	bh=vGsAcd3aMA/umkOrSwW1uTc9xS5EpABPzlSY8l88iW0=;
	h=To:Subject:From:Message-Id:Date; b=P2e15+Z/MFFa8UlvUQFFTbMtfWS8/k0W5a7SnPJ5ZMKHmWyEzlIM/8LdsE84XFW6292nrf9mlviX548ISmqtyVvSfXlhkMzAu8SGfCLvwrkMn4/GLP/ZLVg97A8KSPg7KMsmxqsIYCInL0MdTyz/dE7kz/HBq9bvy7aOiaJlH0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhLDOYAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhLDOYAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C83C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728153953;
	bh=vGsAcd3aMA/umkOrSwW1uTc9xS5EpABPzlSY8l88iW0=;
	h=To:Subject:From:Date:From;
	b=WhLDOYAgl6bSpnrQx92ikoQWz3cH9Nff6R+b2RvIS6WFwnRcoWG2UBVb8VSAqEZeV
	 gThlI4CLYMwVNzcsDcomz8jKl4VS6wuS111ph32zNzSQlseESglOEdN50Jt1C+b1N+
	 PjqZSOKzb7WC6SOLHqUmzbyFj4lRmdBRt2zTM9NOoibjqyvtP87p2u9eVyBmq4dI6V
	 U7mIKtUNyB7mrVirWKPzuv0yznzh8t2E1RCZLoMU3giYrDEO8C/Jh+jauxfzw7tIY9
	 ufkb4IjZ16pSimN+CeLTYwUk/4nTSGWiNLdpzA8kgCAK197Gb3qINjXxwpMNVgYOJh
	 a86cf0JDyLI3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BA4CFB420
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815395359.19065.11029178686107129586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f70c94966297579ef9d30599dc584c3bddc148d7248092569a70141f8e623e
Date: Sat, 05 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728153953
