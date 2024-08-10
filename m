Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221F14438B
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 02:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723257355; cv=none; b=ZwMtYlhy64g+/G6uEr2md3sRkVJLPCsnc7K3aEJfPYskbL1OMXvHq7qMs2SbWlcKdNoVAz+ZWtNqSC+ScKkXqJd4xr3zy2xqoeJexOMHsdA7VecmXwk08WVSkiqbuXeEHgPW8lB4QItPj2GLFxAhywytBManhBtjKV6agR/0j6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723257355; c=relaxed/simple;
	bh=gk1vxNnUKrVzrjeKl1l75X0ejqMwFPPdBsWtMreq2oI=;
	h=To:Subject:From:Message-Id:Date; b=C0QD/2U33/L25uHG5pK5F+bQ2HMF1UQ5GFR/VPQWz4/6voln14WlMhvYuCAfzHro0Wh5bgbr+tV5Ql7+ZRcC+oKsj/+iwxZsD6KaPksWiGoH/PGgJIP5bgDMaRo+VBYpBd5CKjSdFnoweRA91aDI1njFTfdSARPSVOfO3DoWtvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLQV3D68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLQV3D68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07B2C32782
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723257354;
	bh=gk1vxNnUKrVzrjeKl1l75X0ejqMwFPPdBsWtMreq2oI=;
	h=To:Subject:From:Date:From;
	b=gLQV3D68iq/Gi5SkF6/1wwNxZUv/zpNmbLem50DF9XQJwH6X1N6eGD0F9rcR2zlIg
	 WfCNktfVBbpGhqW/xSlPjmvRK2Kvb3SB+Nn0p4TdB6DCnzsSVBMfypDNZsk8bBY145
	 qpyL33e2kvXKXjwzdNKOOnEppMWvseMk/4gWf1o9DW63TmWKlWasDIIJK9odlTZwQS
	 uPQIwEhS+0QtVRb4kUF5grY7tdITeWcb7/DkXRbgD6mcz7OclvAQFZ9ngMtjPiFk7N
	 f4z8jAQoK99Ku0lBm3gvrCV8k3WujF8+QKAHasC2q4SgypoOyGeEwo/ctF6UPu8KIJ
	 llmd9ClHqJyPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA61C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172325735358.11984.18358304320968820778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36921a6d7e98a9068ed8a9408118ba7aa65f962ed193c86b70b9afcc9c560450
Date: Sat, 10 Aug 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723257353
