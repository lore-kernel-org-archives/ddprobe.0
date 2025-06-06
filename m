Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3567D7FD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749177594; cv=none; b=NWUySSCxQfHOjiAqPA3X1uP81tDKZiKTgxk3q1kdn4C3TEaf21+wj7TJhS4pXcH/n7BCf3+yTOQAgNVBPYkEIM4q12fgoY6T5En0osSW0Dn2SCXQKKaA5Q/lCZF1d9uFnx+jH9Lg91sjxKi+VBAnKz5eJgWwIPJXJwuoRgV68Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749177594; c=relaxed/simple;
	bh=Aki8+fv7c5dL1nNIJUHNWJTOfVdo0hcAtrqUliD35FA=;
	h=To:Subject:From:Message-Id:Date; b=peMWilZHeXooqGBX38yvAcf2l+a/N9N9oPYlWvDV2LMmJJi9BxcRPtuUGxyZu89u7VaP01ntzQVb8CrjRjD5sPqPrNJbb2k4qDNr6jFaHh+aGP5e4qSkYXp46n7LgbKyFAaHTGBmgM0lkw+BKYTHp1De5E5an7QRV4/eujTFt1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Be69PJSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Be69PJSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FCC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749177593;
	bh=Aki8+fv7c5dL1nNIJUHNWJTOfVdo0hcAtrqUliD35FA=;
	h=To:Subject:From:Date:From;
	b=Be69PJSiUvfJTrXRe9sHllYV8ptMdQlOu9mMMEg21tDmViWXzF6O3NYhxAqI6JFLE
	 Vo2vzLLYpOZ8QlVQrJcNdWWLhxuWLn1Nvk44q3tFSl1tCnyuZV0dN2Rufh8WQ/MbLL
	 z+1LeM3Pu7pIh0O9WUIvjUL6CmftzDvdl953de4R4HPNrbShY+jTJrQPdUX9h6/CF/
	 k87q4l0nK/OcAn5cb1pfgu7cSK2vAXbcltmj2KPV/Q3bQhvzHO4CFpkRG295ImBZ5n
	 fOAte/dbhRKOVLseoikDI9ElIsvl5AN5Qecxnuk7Q34ysZzkACaauokzjrC5nPGRmC
	 +zaaSgd2QVxCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F098C5B543
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917759357.25782.9298821501470559004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a99bd390312671949e445d01c20535f1eed73651621395d7031684b876e219
Date: Fri, 06 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749177593
