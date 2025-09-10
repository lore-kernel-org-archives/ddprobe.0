Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D34F277C9E
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757503194; cv=none; b=Is5ZEkBRqQoq2AkkREV9XlA0ga49gi/ezAqAtW9oYDXzii7zZqxAQUFFYyNSW2KNQ0315o7LDJ1s15R+PzwM93RB+V2hRqWxbqaXghDaoGL6b1GLr9h7jOeRUXNHyq74dHm/WDBCJenA943Bsn9VTPJnxykZqkfTFIjOJDWC9Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757503194; c=relaxed/simple;
	bh=hZbbl9OGtwwTCX2lfWh+3Uk4SwLAGhdBMmmyaOC6K0o=;
	h=To:Subject:From:Message-Id:Date; b=mDCouiZmGxnSRzE41RNPymwhweyWdJR74LY2qC14c8LnEA0bzsMG+dEutbgkV3jM0XFY5BdGDC4mq03STWPrKPrWoE4Vovuzd92e5ZLr3UcQWpqy+nouuTtVW6zUHkslbRbdMTmvINTb/u1f/tfPjvZ8RQwhoj+RhICS8FoqCNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqlTPBuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqlTPBuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16C9C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757503193;
	bh=hZbbl9OGtwwTCX2lfWh+3Uk4SwLAGhdBMmmyaOC6K0o=;
	h=To:Subject:From:Date:From;
	b=jqlTPBuXcmvrvoC25UEqHL39MI8gbQopNo7Mvb84gRJfp5rBzDqG95Tjvu8BkHjEP
	 Cphbg2s7wa+kNMUrsWJFarLBMWjgNK2sUCe++Iaaac3iU/+ZIp9Z4Oa+/FXY8f4gNi
	 PvcH9Wk+w8Im9qz2FOb8k3LjqUKvPJ2p3v1j+E/H8oEhTRYs4QvE54ecuZiDkqFZ4E
	 oV/aFLuKbguJvNArJHfNGUnHQ4rBJQbrpqzuwBIgUMIvCeFzdD3mGd7tsjRfp4CHLT
	 ZFivYfZCW7IyWSinbnnrN30jdmR2CPRQvXwgQyFDtMPUdIdNybrXdeqkqQnNIqpNYo
	 nNwmu5T6z5rKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E0CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750319357.30092.1621581238693232706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d61fac5052be71d22d37f8521a2be3f4b79a414f31c5f549509f9e2c472db3
Date: Wed, 10 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757503193
