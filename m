Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122251DF270
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752216594; cv=none; b=cB5MT2ovfGVdVGQ4vvFUs5e4TvPyunalUEoJ3CF3MxhXRNk3TF0ypIUc03CWBfHOznO4IRQIIANzQ7aVVK/aUosRzSXIwg6am29ZU3Z7SKnox4DFgZX2pr2TN3sifPX6z+cq2r05Vo+Ec5gFTltfivMWHSzAMa3rinOMBvVWDCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752216594; c=relaxed/simple;
	bh=1D+RyZOezy0KTOt7OTKB6qQnUSoIprxQbqWrU+uL4DM=;
	h=To:Subject:From:Message-Id:Date; b=cWK8gaZUSkciY42e7JmNHPz9HBwTxpw5R/zQWyGlpJbWxPVOofn2bK4AN9IIajUv2JgTT9JS5pksFJS2fBvXA0Wus8t72MTZxggD5aBqaKb25b9Qs6yJg4rrZq8A1CYoUNyKY0/jLzU1DlsFYlJutnl9eoHDuKTOfHZ/WL+16wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feSpLoP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feSpLoP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AFB9C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752216593;
	bh=1D+RyZOezy0KTOt7OTKB6qQnUSoIprxQbqWrU+uL4DM=;
	h=To:Subject:From:Date:From;
	b=feSpLoP88Mt88gdDS//6azktZZ3IyNhNO9Q3lTAK/TaYNADRNWPRvkpFEvfAh+DsU
	 xEJbjcyH4dnEexdoumQ9fbRUAMhD6/2+Yd3H2nC7Sq+IhQ/nNPimFzep7OaBqPV4Kp
	 GnbUNJMTnKcGB2ii27A2k+B5Y9/J6oygAB3BXxrKXauE70uIoA3o2UVLwGOUayfKsH
	 /sRWWO/n0ZOSKqDRaaU6fm/ENltsEDulojRAwCAsxYuuaEciYVgW9NEVe2va0K5N3e
	 z8VeFYHWeagv58pjMP1rq50Wa7OI5P6oABY8KRgwIskz9WBPeGPYGw2K3tjCT9ACJh
	 1WTPgl00lDx8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1CDC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221659357.1211.8429116510545902952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d9f9212c5aa36368ba81690748bec498084d6d3fa53d87c9f7a8343c21d54b
Date: Fri, 11 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752216593
