Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681331C693
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720216523; cv=none; b=tXtZgtHjJmo549NxFiGPDh8bJyvCejaEtT2vAD0BLw+AVNWQk3rd3hXnzogq0kj4Jrm0yn13WWD7cSL3177cVLUK2Z53Jw0y8IPUTten6CIxMVTbRjzmhUMP/EY73OBO9BbWdHhI0hySJOm2ZY9nnFFhWE/wtYAEtiEYauLrok8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720216523; c=relaxed/simple;
	bh=hk/pbA4N5ovggk4SKkU9QoQIumFEe9D5FVYRnGhPasE=;
	h=To:Subject:From:Message-Id:Date; b=icosYe+9j9OgaEEQt+8SGTo4laRBt4sH7ufa5bDPWtoOIkRqN+AbtwzWA39u4hwoRnHmZ3ONuO9CoJCCbf6m226FZyI/Qxx2T/s3Bm79NSP3jIaiM0ygWW9b02W1dTUr/mAfmQQaroecMH9BeZGgmodQeM+C1B6382iMebV4i4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CinMKQms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CinMKQms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6720C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720216522;
	bh=hk/pbA4N5ovggk4SKkU9QoQIumFEe9D5FVYRnGhPasE=;
	h=To:Subject:From:Date:From;
	b=CinMKQmsvwKoc6RYY0+/5pc2Rt8rNCV5ZeQo+7ep/gAbDYAy9I7YgK2r0pwLQgw9K
	 zuJ9aiKee3W0lPeGQ4WmF7Tc1tch8yPFpewGEeYDz9Vk/SjrmXyWUXiPKuOTf6SZMs
	 0IhXrALS7wyOXjwe9QSCzTsDWZnYK2DQKnYpcc88br3e86GAdFIyIhIQVxamLTr5xS
	 XZNTjkK5maGbk1Kb7x24RbSj+DwEs9oebBgwrz30EwmUhqQPHaxYD143VMEeivJBbe
	 aFfmkhD8cO9TeM1fgb7hZHUwYTbmFr9/OlFtnqgraylvYOsZCUrD41qgm0wTbwHlCQ
	 KxoCZiLPDuBZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11A2C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021652278.21004.16349892971833808415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84487bd3e33966ca834801e92729508cfb6a7fea9037551baacfcd74e22f4c5b
Date: Fri, 05 Jul 2024 21:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720216522
