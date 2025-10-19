Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A621354AE4
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760901594; cv=none; b=VB5+ATXKMPHsFb6Cb/n17xOVLLoYhRUsk2qjAlqEpS+Y0rKWKqu+G4EI5s+Q+HZv475RtRJfDwaWMvDx+0UgoFLZl9pI3o3tp5jRYPz+JFrylIE1ySBL1VruZSbQmgMm5tdLuQPq7j23sP7lhw0aU4orLpQt4n5XH9PkcOOPob0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760901594; c=relaxed/simple;
	bh=35jXVcVWwcA0liu0TU+xc5JUB1JzUnu2MYjOeJ07cKY=;
	h=To:Subject:From:Message-Id:Date; b=hA7vM7BiDgyp1fBKUX3k8hX8ph7odWAlpqqGnSToWGKyfE1jXfExsE9J4B4fBOOPeQ0aI+4GGODHk6JPJEF+C0e2Dhv8LecCKnHRkl3SSySgP4hkdOExvgMm7CI/D9hw6C46Mc+f97dTMPiE9m+mCPn7/0H6iBKp9if5mR0NxcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWmWciOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWmWciOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94CDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760901593;
	bh=35jXVcVWwcA0liu0TU+xc5JUB1JzUnu2MYjOeJ07cKY=;
	h=To:Subject:From:Date:From;
	b=MWmWciOCK5V+9ovyiNQXtqHtxIDm3Wf0UXPKjejLSrq4/oc5OFzZqQSF4AnTpXUcj
	 Hku1FCZfWEvo1/gmvXXNZnLKF6igevv0vQJD2h5rDA/KdnmaQOskDteECaS7cE3Hb5
	 Aqnlx6QQJMb6jA3QQlkHg8WCO9bgE/8by0qyT7y4bvfHfawjq5i4xM4IWVGZWTlzML
	 9f0xHtVvNs8BfLi75rIpQlrYqoYtT2fgRaVfLYfn73KmCeMO6hJp1fSbwb1E2qvzpa
	 aM3+jarvEwzj2Lb3O09wL3qDyE0liizGNYL2Dm9DPS9STQ5fLC6+fn8VBs+Xr8GjAB
	 IbqiZ82UGzhMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961B0CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090159357.1055.17334546603860516512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac83289d5fd21bdd1bc606cb0ecba83f40bf007801f0efcb3d9fe07ca52c7b05
Date: Sun, 19 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760901593
