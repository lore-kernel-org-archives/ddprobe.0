Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D6F15853B
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789261834; cv=none; b=khyNWFzgK0XCD32R4+VknkxFKKr8ZNjDcJdeHUbna/W4Ks2JvnOoOmxzcRj/ACiHBjHsEyilcZBgFgSPKbVx7cliuuaSuyFOZyaKxoYylijDZXiratwWk963ysTgishif/JgXZNiNf5EChByIgjPi7QkSIq9Y96oiLDIFh/WcMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789261834; c=relaxed/simple;
	bh=7dcuHRT1Ywc8BZ1T+EIbgKfhERJvJQJlsqnimt56vrQ=;
	h=To:Subject:From:Message-Id:Date; b=AQ6kKQjjC6MQvWQjq+EJ9alcN9Z86rSb2p2860B0GcvQuyEj0ZM+x3fqIUgYLty8y6z1nlybpO2RS0LwuXp/vDsMj6kRyVYLXMS6dFO0Ua7yWmfbJPBUExC4uSbgwzuv3ebP/h7ZkUQQbFuUVy7zxxvDirXULmkPxP1c9GZs9cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNwweEAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNwweEAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DEFC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789261833;
	bh=7dcuHRT1Ywc8BZ1T+EIbgKfhERJvJQJlsqnimt56vrQ=;
	h=To:Subject:From:Date:From;
	b=MNwweEAReKszW8gXu0UV6QKB2ocNPmvpfDuNft346dIhQKFN8Qs1L7RGEC0Rjpp3X
	 GQIdLRgRpCz+0SQ6dKOpPzL5JsDheDx4ZOjbxTG4e470U8ieAJO9dbu3ZY5jkG8JTb
	 grrLOq2xlSpPTcMRwFrYE7+D1YFPSyQsAVSSU/riS2stIDI8W1NHfwjF/ZNqYkJSQH
	 Yq3BMNGEmTR1rv6oF5FaGgzW7FfRa+F5Wnl2WfNwR01FrCZeZJPQWgNArA3VHQG0Oa
	 5Kqu4/Kk6Ju83f3iu3zxFFl5Or5Xqb6bQSEhu7PBX8whzVEzgF6T9qpOscCueCtTJb
	 DpwOVgHNSDVTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD957C88E53
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926183368.14870.13970136009023011661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d42d18dc574fd0168691b7a3c155cdaaa76ae9a919c71fc612d62b8b1df5471
Date: Sun, 13 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789261833
