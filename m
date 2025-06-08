Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1641F7081A
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749401994; cv=none; b=DuxGNdov4mkaj3mXNH6Gtd7hKjyEK93Ly+6wzEmAtEYQhS0z4lh5agrXuQqa3KTHhby29IQICI/qUbC0F/mD+2PrmZ/Yu9yaGTcEW71BkFW4Oc3qwiFheBK3zmxNyRrRW2bmDl3f32N1450NdKJhSB6iGJqGwjHRR6jkLFNsWak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749401994; c=relaxed/simple;
	bh=X/UGiXxJRvSCMDexYqiecJkPtN9MWtHAiVMe8zYbzKA=;
	h=To:Subject:From:Message-Id:Date; b=Hbv9Wk6nDdkISGRC4Z2fYcI3iBymXSTWcJpPk2l0ipxZS5capX6BwaCcuOCIfbYlUJUR1RmVwf1Z0O4omGxYPg5SuF2T5HV9mkCcxD9kXVNCjHW6eOqGdYP32UJUCwpppcEn6T7am+lEF7zefSK1IW9pIrqoe5YVbbP2HQCwPQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urgExxWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urgExxWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2130C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749401993;
	bh=X/UGiXxJRvSCMDexYqiecJkPtN9MWtHAiVMe8zYbzKA=;
	h=To:Subject:From:Date:From;
	b=urgExxWSTdXCAv0Gz1X4SCvytU9LXjhYtaneAQH8NDpBdfqfsGwkyQPXSeh+9ddKs
	 mCB4lDtvW5jSXArQc5JjZDGQzSZU8Xr/A0c7UtqAxbdXQzV+lvY4ByVPeZldr0vzp+
	 b1XdcdgwhRkf2C0Pt8kY3ScBzIM27iAcnkxrwOTXhM5iFQbPE4ISGXOxtMerqaRkiJ
	 EKi/WbaIPP7S6QCFJT/SPTVNptHRtOvogl73nJFnGGcN2jCxy1JrcwBjx2vVCpGtBE
	 vtPyQyMXJ3rJb4qgpxx2NAjZBkPXane05lTVbWzr+SoemoVmB2GGqRjInt/w9YyoLz
	 d8N1BHMn7HGDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBEC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940199357.2077.7658930914908448172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d6522af20dc38290383985fba1227dfadedb5f08c9a9c5304c5364909fa5c8
Date: Sun, 08 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749401993
