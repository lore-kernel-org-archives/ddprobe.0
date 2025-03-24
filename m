Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D42171C9
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742779794; cv=none; b=WfjhCxqB8w1KRBU0jeT/1wi+hXsr4onXJ1TbOBC76S3tSMR4zf5IYMT7RvhK+WX+dWp8qztJFPzGGrik34g7c4yZ9yfxxOfCZmSx7MaNSjiv7wC8J4r0BWCO4TGbonOjp33oEk3IK/gq4pYNFheFzQj8BkGiLZVRMTEeNZXM9Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742779794; c=relaxed/simple;
	bh=nkoEWuGQUjbpErUCY/92GqjCOAd5QaxXqdqQp3YY/9E=;
	h=To:Subject:From:Message-Id:Date; b=az6TAdJlhFzACuqRe0T06Y4e9aEwkN+pVEJKOcKuK0raRvmrWVHJ/BkbHav0jUXSwTgLglDMtQCVkqXI9Q8Qy0X+DqvPpkh70Vg7UYwZSYEoloCfMK+8OAnaKsZljy+pJEcx0xq2Nin4me9i8KPdEStSG1munY71xnwJtwIzM4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDAdFtSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDAdFtSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC688C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742779793;
	bh=nkoEWuGQUjbpErUCY/92GqjCOAd5QaxXqdqQp3YY/9E=;
	h=To:Subject:From:Date:From;
	b=lDAdFtSjiem0oWTjh/RyNmtI6FPt292t6GoUXj51Q8ARpZRKTaCwJSEMHOWPsKSzS
	 YFHXknSwF5eeWzZ1gBkx6NC8GUZlXyYAGK1+qke2J1JpsQz7Q+4FIyC72qHbRHZzRE
	 Q0tKdVvMJLQwEFA2j7DMdsiE65cxHHSDwEVe8G9BoL+zAP6VPVHhEMq2RfDFldcNXd
	 fB1NzcqYsmtL6pgQx2CHvZy6jv+0e2N43GF7rPFGDrQvBkBfSuolxolvyYMhHqlE9q
	 56ki733+e1AUjy7n7G/JWp5DeinOQ+3D9C8uWqB6MuoLBjlUgjPy3bwYrc80S9nYqu
	 m7ftyz8qFjiuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EDEC28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277979364.6992.12674568174457031953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f93d1c1030e3409b4e38af3dec1e18e4885811c1a9d4b099a9dd941e0eac98
Date: Mon, 24 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742779793
