Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB883EBF18
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769306634; cv=none; b=hfNXiWssr6wZzkpBvddPBO1FC6sXiTxETGO6PTZ6NdLpH/1v9h8fJTWitGIqM9MzbgoxLN8/THDbG6eT2qpXwG/m9HPnFavDiDJnDLC06fX6e9GuyRO3wuOVCSSD+kN9ITqytQ/m/pOcqoWvqO8xsmfTtLydLTxH3AaGTGNIhJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769306634; c=relaxed/simple;
	bh=/egg5BiHuvXAhrbLAljF6/BrITVQPPF4grWOsUJQUNQ=;
	h=To:Subject:From:Message-Id:Date; b=e5NwM7U/dSerP+Sy+pOeBZGwEFZ2Ptu0fqN5Bd1+BidSDCirM7HjxuRNqT19Z5Jt40PbV0KMW0u2zcCWQFBrP/gUNO0SgVt9nNR6yS9V2QMJkHfX9o3Ey9TlXf1EyUEw/SMZ/QdWb3YPNMwfprwKx/VuFK0SQ94/XUZpFBHJVl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSeQgz37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSeQgz37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AA0C116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769306633;
	bh=/egg5BiHuvXAhrbLAljF6/BrITVQPPF4grWOsUJQUNQ=;
	h=To:Subject:From:Date:From;
	b=LSeQgz37PMQCW9tnUyVUbOMeiXQiqTak4WSVzSYU6RPADR7DBo1Ip9kGJE2TzW8aY
	 ev7rxnnSZN9PRANzjlw78kEZyj+rEGFwi/ucqY1ip7dY2BTi5fNOBPScy59IQI5+Y9
	 VYSfoWLZyUZZs7WKapsR0TGj+PLxPfS9eSk+rRAkYeoEAepqNOMcC54Gkqkwf3Mgo1
	 y9Nl2t/+TbGZaxv0R92pdgRkQ7SPMHnNr+AdA3egMA16EnWWARb+2fqVAmO9cgFe7D
	 Aw2xQRi/+TfCZCbTp2ApisEVIoS/JlMJxlKdOQmizF8QfCUM2+MokDJgl3qc/cbTcs
	 38ITowQh7Z+sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943ADE63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930663358.29312.10301720682079385625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93fb431e6e0c08903bfe3de5323cb4b2eabf10aa932364329fbba8e9b763b0d7
Date: Sun, 25 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769306633
