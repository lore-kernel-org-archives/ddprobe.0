Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C25D21830B
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731014754; cv=none; b=HRblAKq4xMSnz90dhipwp6lS9mOXT2n09/TcIVhSO+vAPZubhzCQ5PgIlxkqL4kvbJuzlXkGm5lXfAsLSRnLQN+SETwOg0h0pDAlX3nmr0VvBa5BfYCw2oao2YCRjl1yWY3wW5JZTrrztM4WHCaWJPU4pkU6Dh7DTIV3kfXC3no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731014754; c=relaxed/simple;
	bh=Bu3hoyF/kPFlZ18NwE4Mhm4urAcfcW6+vYDvot1iXjI=;
	h=To:Subject:From:Message-Id:Date; b=Vo+2TDNjyRQfzVJWKBrHP1xkYCS5Dza2C81Ieo+g4cfOG8EE9mUMkzVJ0/mz7TlvjbF8EYeDAqhJgCdyb+hqYv0KG+vWl+TzcVSxTmsu5GVh83FBegOWigtNduTTUC4zyxtVcprQIvK/PuDrPGk6Snvey2Jau36ms3ROLXjSsGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9MOkdnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9MOkdnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65D4C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731014753;
	bh=Bu3hoyF/kPFlZ18NwE4Mhm4urAcfcW6+vYDvot1iXjI=;
	h=To:Subject:From:Date:From;
	b=W9MOkdnWbnz6LlR5GKwSaA+lUWMfXWgWexvMzXd/iZUCLUflxkMaeHxlcSVDyQ/b+
	 oMGNK8KryomyDu7XL3yE7f/l7WpAWU6D3vlRg93AiMkvarCE7gZo4KaE+x50kxPC5V
	 iDJFk9ayFqzKu+6aQPdpTseomnr26mf1jOsWR/F/+nsAR8vuwFWRCCq0Rym8hDus8d
	 lV00+lTYzm56vQsLvM4tPcANcAHNwYSW3LPS5LHf0BYyOXIzlvD421o2m7yyQUzZWM
	 9FkPO+dtumM+FFemvMODdburl6wQ0fwNj5HCqHjek5Amld0UunUo6/Zn5LiN79TywN
	 B3aDJqDhtDUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF4D5D68A
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173101475358.10597.15776617060992733388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c22b002905026d6cc799c1392466f466ab8a04c4db87899a8f1ae6dfb5af4bf
Date: Thu, 07 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731014753
