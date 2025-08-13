Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF3A23B610
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755103794; cv=none; b=IYfy61gFBhwMSPLr+dRUeuYv5m5V2Y4TP23uQ7Nll+SS+VSOIFzxuRkL/krh4kSVV2T0kTbLA8d4GmfmlKST/qm1SyPjDruIU1m+ZevMijFn8bt+inRopQ3oVsMw7lw+/DnlzNc8PQ42VsIDxpRr9HlN6jL187Hk4nYSXwJoP2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755103794; c=relaxed/simple;
	bh=PMQTMhD9jLQAu764yLJTojhxFmoJJAbubaA3sU6fTTI=;
	h=To:Subject:From:Message-Id:Date; b=JhW2k4MBIAKz9Jc5EwAIp1qyChTZRpdsJm7MQOsbr6QMuRrXRKLjqYbY7BUFw0VDx5Ax0UnwD/n0+SZAP1ZBQ43DOQkSz4Ilw1E06OuvQ3Xc9rpkdaA9uPRZ0jMVHRGrNyToqmQ0lsBAKgcEPEugoWCcKEwGUepaqU9lrWZZu9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjCfh3+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjCfh3+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D324C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755103793;
	bh=PMQTMhD9jLQAu764yLJTojhxFmoJJAbubaA3sU6fTTI=;
	h=To:Subject:From:Date:From;
	b=VjCfh3+41qL/Y5j726dHtiBpWRnt6ullgA6ph7BpvkPMW8LciYElNT798YNeVxZQo
	 /66OdVG8QWp18DNBI0Q0CeB591eFMckXhpWvIeGgkOrtIzZumTcN2JN+Jx9rZmwCv1
	 +cRupobRMdZFfTWADo07pjmbKF8jdSFzrzDEWUWXD5dYLxrCq2hr0AoVlavxhvnN/q
	 rcFDgg2FSqqK69rIy6/UoL72kwLOxdUvvWXtgyjQUCU2HAMJS6yZj5+okfBqZRte5p
	 FqhPhTC9kSIsrR1v8cqmsgrDANK8cDeCVHzR6+A306maobZNHHcToONwIwTWpUd3L7
	 GClpz6g1dbGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E050C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510379357.8848.11348586777410937686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0c9568e1b9ba689cf46a5427398d0146da60ea8682c1cfa658394cae0c33f5
Date: Wed, 13 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755103793
