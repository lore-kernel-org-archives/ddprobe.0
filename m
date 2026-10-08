Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B331F16B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791427834; cv=none; b=gn0nzIiAaK3/nqb4Cy8uyooVFhS30cqj9ZdVsbSE7vS6J3fjervczz2+yQbv2pD4dL8pvKfm3N4lV2o85QfOYiz6V6jh1cgu6I5wlhviIgcqh4Hi7lEhJhNWjUmlSjffo9s0HHwAlAfzKoDtWyRkNqfGJHrwiQyAQlD1Y9YC/a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791427834; c=relaxed/simple;
	bh=YOd2ZSO8s9HP9gFTDsXdn8MrIqWFGDgUXVvD8FNTfDQ=;
	h=To:Subject:From:Message-Id:Date; b=h5xm31f/qWLqig5P4XegT+jTyXzF/XnzUK0k/Cie+eyJYzJabN5P3AFyrttORU1/N2wqxzYEFAvPAIpZAKAwlMck9w4AKIXQcZ2zze3PU9e0/YOr/uhggpvZludSGxx8WlCNDYIqT08YxnzQUO6otBTwlTvniUdrr8StXnVFS80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Alo3u2IS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Alo3u2IS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B19C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791427833;
	bh=YOd2ZSO8s9HP9gFTDsXdn8MrIqWFGDgUXVvD8FNTfDQ=;
	h=To:Subject:From:Date:From;
	b=Alo3u2ISpAL9GtPpi5rcMYBQgYPEogGJHxMzeSlUlf7MMEMPMzUG8ngAj+IGdwpUZ
	 w+Jxh617r3eB4kPEmoyndXabBH8/XbRW9L0yjEz5B21xLOXhRfzIQRUHzj40x2WWl9
	 3Qb1hSrsu5Johnos25mIKNMM2+8m/I308htTqCkoZjN85oNqIk8hPl2/LC20y8M7Iy
	 3fUGvfgXJQhVuo6E3KxQwcMZ8Q3pBa8q1xV8emtxbkTJEBFbXFzoueKwoOdCopwg1h
	 XZ0gEVUUEVMmcjK5Zrk1tF288Sw1MIIlb+Yh3Qg/04xWLYRUhcHgGhARg1S5rxU0E6
	 vXYfNzxHp888g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E3CA6004
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142783368.10708.8636012073637324033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2d4040b5970e19d0bd0787edd4ce66f30d8e9c7e43519cb49edf39af8fae7e
Date: Thu, 08 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791427833
