Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEDF2C158F
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758021594; cv=none; b=NpppqkrsplqfSCGksLXDjDV0uapyO2j6aRHLAmbGoXI3on8czxoCar98IpfmVXH58VMiaSEASclsE8wqNjdlZ03+EAcZWfnDV4J/icgwMqFTFUEfitV93Uz6U0WACkbsY85pXcVDuyl0Lsj/dRxhCDa7jCU3LZ1Kf8qfdpDBgwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758021594; c=relaxed/simple;
	bh=V5fw0McTEPymsiBsmz1lWCbI2ccFl/0TMZWZHBWTbxM=;
	h=To:Subject:From:Message-Id:Date; b=t65lcAVnjdmyc87vpZ0IC0yfQz6dt1rwjNg/Oj8iNdKXdBQ6+RNIpm4Yn/x8SVVoUETloPn38MYHEhe7Ea0rkFH6VsqRa0G/dJplhGbf8oD5W8L3Bm+LSje+1RKOttQDQfyjyGMWiEFPvyU/IkJkbc5y7TegMEUbCFgG3copiok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aw3uF4Vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aw3uF4Vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C35CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758021593;
	bh=V5fw0McTEPymsiBsmz1lWCbI2ccFl/0TMZWZHBWTbxM=;
	h=To:Subject:From:Date:From;
	b=Aw3uF4VlWqMHeVgUFHjMM/fZ1AKB1KuPg9P4Fq1U8jLHZNxzUR+OBnx2rCxMveeQg
	 XiEpOiDyBvEQP++3L+AH7AGVgTprgRgTmpZKbifrx6gKD1yf4pCCPjxmgYcmLLb0xw
	 h9we3Z2rgprwHmUUP5qnqBG7KkHVAIllbY0FrJMmu6lDDTdzMYbj29eO914kIil9Yb
	 hHhlTA/IWqIDs6rEeHCo09QooC2BtaNzDbGaDEIFJQZGyFfYVXtXTXjOvpkal8avKy
	 CtnrI1lUHggm9WQ0MS4W7pGJn6YTxF8muiH5ZGPqocSHnFZlDajLeetgPI/YPL/3IW
	 /gpPfI3+voAHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E358CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802159357.14586.4092355890129517514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7f7f9673dc0e7b0c639580d92743501eecbe8d6f79a3c59422e807dc785af5
Date: Tue, 16 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758021593
