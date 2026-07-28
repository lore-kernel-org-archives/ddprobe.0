Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90287372EE2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785255634; cv=none; b=HPDYO+6nI4gckli61aqVyAfFM7e9Ajz8bxs0Mdz4K21Ou/M3PfZsPKLDj4bp5LelJt3s/T9uxAqZDHgfp+btH/mnvf959JVNjo3Y4cL2I+cqF+hhEdE8A01O7fTVKxlhjiSKXC6uZwLNV1FHXJ8N1iuz7D0axpU7RMCCyN6uZDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785255634; c=relaxed/simple;
	bh=cW3K7/o9NX65DDwx6ycsVIyYpb29HdstVlaRYe9b4sY=;
	h=To:Subject:From:Message-Id:Date; b=O7jmEi3MqJZlazEcbknrvH3kOVyCGQPEdDmGWmnS9lzeE1IdS+yZGibJr3/3KTIW6VRJN9dYo74Hrf55iPtwOmvsyes37M50U22rdXPSkP3M9AKMCcq1YEuwY+lBODv650OHzh/wV0IIkxO99jN2S/SPbcvtrZEwgdk/FsAGAhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+4oKxOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+4oKxOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E282FC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785255633;
	bh=cW3K7/o9NX65DDwx6ycsVIyYpb29HdstVlaRYe9b4sY=;
	h=To:Subject:From:Date:From;
	b=I+4oKxOcVkeZ2XyEEIevSK1TLuGgZsVWi58JRCvpPliLPc8qz65mZTXMhm45nHaKf
	 T/YzuGNguInDD+Elar11qBBN7S26khfSqVpX9es0pkcud582rlNb/WSwPYfUzApOTh
	 8/8asgtzn2VWRGSowuWBgii5q4NQW0a+mOpJ9L3heSdZqE6jLkqMN7WVKrQcQ1wtzU
	 w6+ElS/kAh/WuZ6jSnk0NnICdL9sfowd9kqk6ZS65q7hMNyDJN99jjCHCTWoPAFC8h
	 Vz3bwvSlBwOUZJ0deMJv/rO6hZ86BvcH8w4iewVJL8RVNmsfSwtmd1+gDDZppVi17h
	 ZZKnghEkDkLJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B42C531F9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525563368.27447.12148443225073474329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc671295df0a6b971f2a793f91ee727ce637ab71bbd75673d514d4680fbe5900
Date: Tue, 28 Jul 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785255633
