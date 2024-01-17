Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D2F7F5
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705459697; cv=none; b=mHH4IKH/vh/wI7P+JNvSBbNl89tzhHPkDE5F+GWnfj5vKX92LKAM2PTEV2NOsps/OkhUSMKFH6+HTpx8wb3ne81pAXx4x1J4I/1RcCGSHFIYQGd+cMWlmE+17Rpt2tvABEXLFT1yAKAI5LYctQHZ0MHxOvbXE2RBiwULOoENfX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705459697; c=relaxed/simple;
	bh=LdBWF+BPLrHZkqMLRxWtszJQTAQ9dONjLl90DX6mKhU=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=IHr9s45EZN6t3kNCYdCQUTBvYfmOPz6yaFLg7oJv3VGL5wu3jFIOK/aytEW7hqrrseqU4C6wAm2IA+6yWplRwWUsMTf81wOjtdAbLzO34jVnmk0PZ+vaQNiIba8SPO7dJN7O6SvHiM/TpZ5BU5lPw1Tap6XFw6PEEmwt0I1E5YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjOIp2VF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjOIp2VF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D633C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705459696;
	bh=LdBWF+BPLrHZkqMLRxWtszJQTAQ9dONjLl90DX6mKhU=;
	h=To:Subject:From:Date:From;
	b=qjOIp2VFpMvdyjpWN4uf3zz/xnHb8cLQKHlH7vCdZwJpPKbT/fMNNPzB1MFeL6J0y
	 yQqXufhiHQxX/XC1cnmjXXa5a0n4McxNZV9QKAael45CJ+koOZCqDJBILxn/yLlfiJ
	 GAmjnzrZ2Q0BRSWumCQNWtvqDVzcxt15Kbgutj4s6WJWqvZefrpeC+jZJXv1bmoeRo
	 BhWxgF+sxUHS0RYLtUf2/SMErFbgxgW16zwUyG5GeM8jJrtuqXOZFqeqVPRMKaMVJX
	 YKB5vRsGsgS/5IY3Qk1xfl0HFGayQKsKGes6CDCl2omFsyPBokPkeEwNyMrBpn1cKB
	 rxRZPN8RZ5kOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6023EC47077
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170545969637.29066.10277580920262595176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19df2e1038d38721e68a461c5b2f470a2fa9ef16635b99e0841fcbe02376c44
Date: Wed, 17 Jan 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705459696
