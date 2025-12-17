Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC27309EFF
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766009034; cv=none; b=ZGcN/MvVREVUsmVydeD5b3Pr65cf9uoqOhRLRygRC2sEZ28yx79qIR52E20VdzvnuXD8wGV0fRIkDN4oeREgkOvJY/GBbwv9LJP3bYFBPeIixTx4l6kus7ate++PzPijaWPQIP2QGDXiYsadNroooNE9TuurxsQJWhLOyq7Goww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766009034; c=relaxed/simple;
	bh=BLsaMahk0HpgVuiL6+g5FbHVvwkJOuD+KNrrDNVRMrA=;
	h=To:Subject:From:Message-Id:Date; b=D3iPxzeMW49LtzrEALuWthwReBzu2z6CA0c/ujOBA1Ez9lSrhcC4pP8Y0fALxJoW7pxzqXwj0QckGKa75ib47jZHy26DjlBbVKqHZFS2+zEmTHLXFv39uSWjv/9SU+00zE/NUxDPupZet8WR5zj4jN29gM7cHOYkLk5xsmvu1oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMx4wuwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMx4wuwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A79C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766009033;
	bh=BLsaMahk0HpgVuiL6+g5FbHVvwkJOuD+KNrrDNVRMrA=;
	h=To:Subject:From:Date:From;
	b=HMx4wuwiGWXv/1eg6DOkODc6HleX7Pqqn3OX0psBSZxC6bRqyNl0Oo3/Zlx5cELk/
	 +j01ZDx8DQAYrl+f/aejn3nJ6V2ZHgIenTBQK1I+jZGXwikvsiG2iZIO5biMOK2/kM
	 6xGdBDDfZYUbeI50U+mbpz265MJWTQ3I5d84HCXOxsyXXgda26TAEiCCUHWzJSBUDs
	 dQed1FuFvBZTQkR+7rlGin5h4hXlLkCK9oc4fOdKdub0Q424G/6MsqKoLIAAa7YxvO
	 9UddgFe7vKLceTkcXUEyyk/+zB6JGNwtnhHzkqFZV5Qbl06m2stqpDugkBJ0UectcB
	 FIfbMRNnhkptQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A9BD68BC1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600903359.22752.5054870831864616404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0413ba9ecc2eb4fcbab86a7ccbae425d337c1279de0a213fc7e5ef37fc56648a
Date: Wed, 17 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766009033
