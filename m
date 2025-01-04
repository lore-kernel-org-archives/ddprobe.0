Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372C0146D76
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736034354; cv=none; b=pn+H1xYT3yl5LDnX5jNC6F2ED+v3p1qYmVqDZe0i2RJKInVv09D5XolHw09ZxFPx5gTrKMPbngmvGN1OnFQD1wAA0vO2KIre4ZpM9+joHqFtDxmYeNajRueyoZUVSHqD7lynKyzPmYPdzKcW8bbql9LZW2Z4WStgv/94W8+2BGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736034354; c=relaxed/simple;
	bh=QrNP9282cJjwLoSQCUfH35G5YDoe1saj43CNrSv+1uU=;
	h=To:Subject:From:Message-Id:Date; b=vFRMj9J++f09f5PKNWnscTqZOZjDdpXAkw4v67WpelwZGBhbESeTePhItOuabKZNo3M3pgwm/1bbclUolcMXgJiOFs5fU6COOaIwMuhShtByXwHur9qr+FbNvWKWQ2OAVElIMfP8PXp1C6RW03o0df82vX/HyeLif3ewvG8VlBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3m86eQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3m86eQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00B8C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736034353;
	bh=QrNP9282cJjwLoSQCUfH35G5YDoe1saj43CNrSv+1uU=;
	h=To:Subject:From:Date:From;
	b=Y3m86eQ+mRmzlJ+QPHHFClSbpKJUXvOrjoMBg5fFe2j0p+1I18prt4Nd0NPR0lIeO
	 bJ5Fr0VInK1I/1ypQgep4JKvkQNjddG3TJX5C3yGwzfOrn4kFPlTEzqZl/LBd1V0PM
	 cd8PjA3W0++PAMnKFWElZtlqvjGN6/7LyDOR5yaLmrdas0sdAs8DAjiAlNWCvcQle3
	 Au8AY9DIemDj7/jrRYIJu89yOOCZw0RKsw3OPG8xvjxntyhjRa06AwrIFBn0hMUDIY
	 VrU62Ucry3qhhIRj3o9dGl5EYnWvuvQV5jkoZ5FKeZeYMVHzr6XEvIuNxwMrSFAHUn
	 yHSZE2TIEz0eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FC3E77197
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173603435360.13871.17657829753856665454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409b21082e548c23bc46b57429ab738112de365e530f30fa007bbf38e9996871
Date: Sat, 04 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736034353
