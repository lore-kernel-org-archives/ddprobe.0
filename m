Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B1A10957
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755553795; cv=none; b=T/ddSEGTajFZACZexuX92cJGsn7c2uQrLWxOnu3WUiY5JZoYjUCAM96yVMJJuesLKbjwyoki9snWPVTLt36jVFyQKiFjeV83ysyFiSfKgIXU9+8T3d/w13EYaIvGTq/7EmIk1dlf/+JFC6w7NDelQUO/syf0vfAX6CZuK3XFLsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755553795; c=relaxed/simple;
	bh=SxV7trhN9VZYdDi3EDdGFcu0rj4nIlYffWE5WzVEjnM=;
	h=To:Subject:From:Message-Id:Date; b=kadMDPihjJP/TXH3ZUrHfHEDtG416enp453roBNXrBnS3Q5Fcbdd/V4VQ3IGqcKfg7c4jU7wYTXjilQeJk+XIjfNn13YVW1FAKws5FHyvfXeikExJm7GsH+uaZgyAwBohYmHgCpPUtosV62xEk2tpmTFT+DS1F9PKQTGbmEnR0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYntE2eD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYntE2eD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755553793;
	bh=SxV7trhN9VZYdDi3EDdGFcu0rj4nIlYffWE5WzVEjnM=;
	h=To:Subject:From:Date:From;
	b=kYntE2eDSCRB8u/I/KohWbPVhSRDL6nXi+KdErHwWUcRZ/O39GwYvFvxjZ8ONVLUH
	 dkJFchRKCOVFEuZNrqK5/d8l11WLGUfPr5xYhStKGxIa0Op0gVroIdCN41/eGNxLv3
	 yFHjBwxkHjltV+7W8A2/IHe99M9DTv35E5lv2TLR0WR6U1OwBSScU7mdD82r1ME/IZ
	 glMviKxKlzXB18n9KZXpUVUUwiRkP4w/ztAxjc8szXEVP5Holc9bMkFyPIjPXJmu0+
	 TLRFTYAg5xIZhxy27zRn5ouHo6W3O/j6BVEIWjP3N6bT40xPA3nNMnqFdRoQChQB8X
	 pKY9Qbtk49csg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9069BCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555379358.4490.14240740464544242116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc2a43f84a8a3de2bdbbcd6bb9ac4aa188f933142e74a99318963351a0f5f633
Date: Mon, 18 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755553793
