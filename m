Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB381E9B08
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754849394; cv=none; b=Ksq5Pd2ALmtkjUWaE+hwp7CC8Iv7KnwWpN5612uZ4RBmL7sDv65NQogcS46PDQTFjwzAqBMa7QBHu4FYnQge6sJgE4i+CjLwI2lxNJef7n7qT8G/jxKEpHgEIZpWxukRBEnNVwZZ1hsjP0j4L8/qE71PKBy0M2mymAChxEFbwjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754849394; c=relaxed/simple;
	bh=ROsyD2sCALnMTeem3kJT3DvymYgItx11ydx5JWUX+YU=;
	h=To:Subject:From:Message-Id:Date; b=VrkUgC/Z0aTYewamhbNOmIHuZRWN4SGyzTjP522+iYDHsplifvVjN5GwUT80T+ZWOhfWro+IpKaaqrn5fwtMjqHUAAXK0yfnneYbl0y2CoSBjlUj0S7JVyZxkpO+qxHoAg6QiEr9NkZQkpTmJDhLWnN0Lleqp/kKxiu0YUmeGe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDKob8F5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDKob8F5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A449BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754849393;
	bh=ROsyD2sCALnMTeem3kJT3DvymYgItx11ydx5JWUX+YU=;
	h=To:Subject:From:Date:From;
	b=fDKob8F5wnx4DAq9scVARdOY7BrdJZB7JLFhiGRIf6uLFfP9dsg7yPUHqWa6dT1Je
	 k+0+zxX6F/Hl1YXbyUiNQyyoz2IecdJID6zWENKgJHP9gMUYT9+h3wFT7XECXFmBVm
	 zh/oVwfVA8IbFVJBzZFDWZdi+VBFXNnZOmG+popFSQnpOKbxjUB+jALkVVoxwuSoFH
	 6u2e3QtnK2Yq0fPM7PvzvQ0fLe5IQbB6Z/woh4N6osx49VJRVutt4sZ7+XG9CbRX5h
	 BRh5A/aM6GHrO0t3VTYR6yP8oHPUon5lfekoLPI/pYZ/X8S4oCNKvBKSsSsqnoghGm
	 07UC9mX6lF4ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921BCC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484939357.21537.11810491357049107358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508bcbb84fc8a0e81392c9c1ae7b4d0f5e946771f40ecd4e4bf25aeb3a9179fa
Date: Sun, 10 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754849393
