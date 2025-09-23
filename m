Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAD4286D70
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758628194; cv=none; b=lrv8a6duRvUTFxKSOGw1bpbNnSvNGBeaiJtzB++ysbsQesWqsoBM6h/WuYujrGzkHX15U8f4u4kfXZ7fAKRthchfKpQ3t41GzlAUompHTUtdDlL20JRKpxBWiZ0WACJ709ktb7S1ZVmD1R2/wljNJFCdfBHrRM13z322y2Hf5hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758628194; c=relaxed/simple;
	bh=bTTE1O+EaQE7Wx9R/vLPAoTrWUepXNosljOy8Nc7nkA=;
	h=To:Subject:From:Message-Id:Date; b=fuBSfVJVj1a1CAWnBYjlRjEfXtSyNsQd3jOSXyQ6/c9TsavB51e51KWzyQENKmY7zidpN6N10/wVwj488nyfK/c9rbLeDkSqG3f4zxk1mdPdKegFLwGwGgKsjaJNe87WVh+heSmR5Y5+9UdYih5He1llxy8iJKol55yqRhhPO2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBItVXNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBItVXNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4EC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758628193;
	bh=bTTE1O+EaQE7Wx9R/vLPAoTrWUepXNosljOy8Nc7nkA=;
	h=To:Subject:From:Date:From;
	b=bBItVXNirmjLtwJ2ePGxeoPCeVkg8WZbJYF3xJVH9vhuXoJfmq6VZlZ5+hesgAFFF
	 LC8P/V7zznBmrpch8D3AAHZA761oV9BsBmcpA8t1ofLRGewErTIfo96qqcLChoeYPf
	 j9pcMPTEwxGYAuWixSaMZue0CiRwKStyrCp4TI5ClsrQpBj5HUEivXuJzYYSAG0m7B
	 wjnMVWNoK8mUYT+eEB8G+dIttiakbo8G5njIg2mOIsPJkPK3fSDEcKLGEvPq6LtqAb
	 m8I3U/LiQ4MDvQBoOtDRxmpiAeA6/emrR5ZzvHqyRG3E1UC0smumfoymcX4lb/uWvC
	 yX418P3fbYatA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A8CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862819359.12122.8986227103992549098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62b58e80f149a7bf765b23273031a9aec2345e14428615953e930a0b5d4da22
Date: Tue, 23 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758628193
