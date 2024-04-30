Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB561F171
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714484543; cv=none; b=ufFFiF0WARsrwkZD99nHKBT9f1asiwDxKZqOUiwBeLMZdWKkpjdEMVpwyiMX+fKthM9x6bVOdvjBEWRbyO8MY9X6nJkEenQ1g0sFTja0DeT51+p/vG/QUuY1eVt50J4FCoK7JbCkEIAcsYHn3nsKyv9Jui1YxKFcFX4MGPYxTRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714484543; c=relaxed/simple;
	bh=G8t/sFIdsHA7k8MeP4kIg8C8CwjFLPlGwPX2mcHQ2MM=;
	h=To:Subject:From:Message-Id:Date; b=kliUuBXw79CXcZI2GHvffqeyj6+89xxfhRZqqjiX3Rmkwp7zGsQ8ndej1/rmdvjvwQkLiCcc68ZvKbRb7VzPupoBnI0fuD6j2Zi0qtjQ4W7siObqYIr0LMQNc+QZLCuMhjpVD/24uGZQZVgIY9QdA+16JuWbwEcLoiIMZj84zcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6FbwFQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6FbwFQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7BEC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714484542;
	bh=G8t/sFIdsHA7k8MeP4kIg8C8CwjFLPlGwPX2mcHQ2MM=;
	h=To:Subject:From:Date:From;
	b=k6FbwFQgIMV8owLuM98XzI47LNvy6BjcY+9cuc4SCwLsCYo2Hl29woNXFH6B6HwUK
	 7R+RGcL+FE+NXrELC5SkegJzuOZXgfwu+p6kXw1XEmWlN23cnqY8BiINrtWtfXjxBj
	 cyYadiyROfTFKw71G1caT6O/CMOZ+olvX6Lr/+3z5XmEwVIqY2boFpMQ1+yUDwulg+
	 xZ6y3I82TTbzjsc5lG7vUTNqq58cWn9uz6iz5MkxuWzRw+qIcTGJtJ1SYdrPA3JsOr
	 hUm/gHYyM5JSFzlURTAYAKJ0FID4siNmSv0BP3ulNBzC3Kioc5ERiq+vZv0ejCd50+
	 WJB+ijmE8g9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC009C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171448454276.26250.11202129104958913296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab76d0f1effa5ba4095a0837da74d03c8527858a46eab1279ddb9bb75ac4458
Date: Tue, 30 Apr 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714484542
