Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C783F1B9B24
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723013153; cv=none; b=PcxPBLHzHmWJ7KO6WGdD08L5A6gz4dVqYN8fqgz43AYSxu9hctjRetkJpdQ7pdbS6QawAajmWDMlcLF69M1sprHFqKvKGDgrWkFf5p6gFyEzzLP5jY3Sv4ay+b7lipoKBMXfai4nH11ESAdDfW7vLgQH3vFxvdhfty0pNkbCTqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723013153; c=relaxed/simple;
	bh=Jvx7jZEIsbTCrMGrUNsNeuVluD64OjRbYfZoZj5HQqU=;
	h=To:Subject:From:Message-Id:Date; b=hyMpC6G28p0XWHdr9oXT1Un5Urdy+gdc5BT6RlhRxagZ6z0HxmkqUpSDn/kTjj6dS6GwIY+hzT5zsbvA7RN7aRbSIyUA/hfluNkl9K0kAX9ZmLSSEVyMJJW4DEq1Jjii43JC6rriTrbXa8CTUkIM7H/Ib2r+/ab9n5UFYXKifxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQ5zr8Di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQ5zr8Di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA93AC32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723013153;
	bh=Jvx7jZEIsbTCrMGrUNsNeuVluD64OjRbYfZoZj5HQqU=;
	h=To:Subject:From:Date:From;
	b=DQ5zr8Di5+O3ib63XEoXGfOHtU+7j3m5mMT5gbkvCC0lKbRTMjH3ydsZyMUdcpDCf
	 1weeouJFetvJ0CbQJREdXELndoK1ZjEYqiOfrWIIITckUJll42+RxODnmnAYayE1ar
	 ryh3TAu1lPVZ/kEXXNQVSg8EM2FL99+WJiviAdMWDVh97Bv2UBkydBnbGGGOISZCYZ
	 ba5m836M1+KAlszIQH8vcz7DMPNhq4TWdYVa49N0COmzBrXVzc6FC9LptmEDotnrd7
	 ej87lDfkBVVX3sqAN8kYU5HkL1teGAxbuxB3/3bTwDfGd4deS+PlKzUlKoGu0Ov4Z7
	 f7uEU0uLLZzSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959BEC52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172301315360.8956.4070099110760365520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e25cb9e3fc6d35ec9a65922e66d2f4a7cfc035f2e833dbbe3ac6a1c8e218a9
Date: Wed, 07 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723013153
