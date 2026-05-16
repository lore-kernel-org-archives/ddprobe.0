Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8666336EC5
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778941833; cv=none; b=E1OvkNm+M1PORHz8d0IwZHw0tGRIvqysY3oGGER/RS7EM34qJYIZ/dAC7f5RVXD2Q2NV0pDrU54sisArS2XgyBbNLrQWGFlKaSLXExA0uJ2WxpcSjCdlOOK2PakG06X4YRitqE3prOg3zOCHv47jHRAhbvGbjs8fiQS0/BOq1+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778941833; c=relaxed/simple;
	bh=1yGUqQzje4iw+wP4DIl3CMCMixL2LTgod060fggMZdE=;
	h=To:Subject:From:Message-Id:Date; b=tD/97ee+jaY4Ev0nSCDB7ZuRv3fsM2uU+k17fRc2ltFSmjk0H3lgcLzRydTx9g7rsp4uzBmCRRMRoGmnW0Rhv5OLpb0A4aoRlZCXRlFjAPRigO0BE7ysPSrJDNefepUhWt6IjcaNXWbBJRLgTNjtLkb3DkWi7sqL2RGmXdQ8pSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cf+oDqZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cf+oDqZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAFBC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778941833;
	bh=1yGUqQzje4iw+wP4DIl3CMCMixL2LTgod060fggMZdE=;
	h=To:Subject:From:Date:From;
	b=cf+oDqZZp8j9U3YUBd/3sQJxRE4YxAoUU3O70fumzckAknbeQQGDoBV1Oy74PS2m9
	 3t9Ivl9u6WRwDrbNMr2S9nRJ5ZeMAKpabmdRt0dCDPZXA65nn4l+5ihSDSXXFDy6HY
	 NsHUm+984q4fNPH+XOUubCNLcDrqkpocM4NUxM9HDd2xbQTTBz+NBMTY74ZCAYsMJ8
	 p5Y1FHbrQcjogkJqnCaNzm3rOziDqJ5jRWSYuzYFmxJWZn4k5X1WrkoYqxsMTJPf0k
	 JrQ1AoWpzo0sQMHL5nv6CIViHr9kSvR9j42nVexwSQETA8Yf6kPMQsq6YC9cDyc/OU
	 SNk/XSs5v7Amw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB31CCD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894183369.18195.469827610923593113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb7fb7bcc93d429d98a331194b8f82d6e54e7452b8b0d4ac85b5ab1b97f131d
Date: Sat, 16 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778941833
