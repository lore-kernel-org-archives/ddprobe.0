Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529F714F90
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743018594; cv=none; b=ocJjR8LuGWOXMm7qOqklTyYXfvPc0rip3B8VfWsLe0MinbUQkrqlebqW8nNJUlq11EP9YD89EGAUhPQb90C7h83jwDGy6xjJ5izcEt/sPVXz2W+hpRWuTYPDq6Sgzt8vlmOvBKIinwKQH4NpJnkrSBWuAHPL1nt1V5fpP+HwdNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743018594; c=relaxed/simple;
	bh=1HzX4dZsLYzSeYIpczqKqbymwu223WAS6LGbVu/4Ijk=;
	h=To:Subject:From:Message-Id:Date; b=uZdO+14D/Ac2TMGnbv4RrqQtrDR6belIOyOqEWpq8KWrxT6mRsrpR2dejCjtL3jgV/8cHt/HbxvnLqpifCn5Zlta1Xe5fX/mtP5DGkvpB70oJmflMf74KNoIkayCRQTH7UqJzbRnI45W5GsBVHYlRLTFa3eS0Sk1CHLceTFLD78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyW6Bs8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyW6Bs8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B82C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743018593;
	bh=1HzX4dZsLYzSeYIpczqKqbymwu223WAS6LGbVu/4Ijk=;
	h=To:Subject:From:Date:From;
	b=IyW6Bs8boKri+7Wf+NYqVdd3r8NwnzQQdfrXDWW6gD83cXnClJ+mmqmOq3Kj7HOfI
	 DSBPk7dgrDDfY80qOdvZ41i2+sh5kuXqBv/3eEIsjX0c5MpJX2Q2/+3Jlbf7Ivbmcc
	 Of8FuciCKDON5QgHfY1eGS4DSd9Faiv26B0PDsRj1a8ZrDzpFJ8Vl/ta03Y6bulrXO
	 BZPYkS1Yam8MQVVTRMEG0ctWnGu8J0mb9qCgkENVc5ycYZ/0BiFOatIOsca7eCCzOh
	 e77hAopTG9V0JQOHMg4KEW38Fb3xifwisNW8N1bqd/2KTEl/0LBqoG5Mt/qDwfmmJg
	 KXgx/0J/w/pgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE93FC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301859367.13748.7645850572974346454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8a4b3f38bfd7dc0f65f8765b9885a7c0168d15ef8c02c974f19bbafbb59cdd
Date: Wed, 26 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743018593
