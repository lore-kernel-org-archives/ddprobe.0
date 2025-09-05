Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1455372633
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757083795; cv=none; b=tDglVoYimPzbKsisJaoaKNofhUqwThq7zI6A+vjFMoT1Nw8pw6bLXnX6JvRxq1RAwKU3MBoQ6OPoeb21xH5RZyyDkJ52b7XpeshLguVSsP3u6gJ4bqnQ7p9CJLR85rAGtfQVBXaQTx744QJUks2dKh5gmsm3QBOAR3i9IRzAbjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757083795; c=relaxed/simple;
	bh=ThaY6qkxF3OeUVn8EIpHrQRyC+X8OvPNNjajGAWDviQ=;
	h=To:Subject:From:Message-Id:Date; b=ZwoJvKMeN/WzM9XTpFm3K7zCatiVJf9ZBCQaRXYKH9zVlF2EFDVL6ObjEmtJo6Dadm5zgXTCAcCNecxOpJ1UGhyW8p1lP8AkgAqp+cMtJc1LdeM9BoI59V9yyPLaS7c1IXOxUAaXVHREHU6uw4r6luS68iSB/ZNg+2fdgq/7pIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8XWLVUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8XWLVUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAA6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757083793;
	bh=ThaY6qkxF3OeUVn8EIpHrQRyC+X8OvPNNjajGAWDviQ=;
	h=To:Subject:From:Date:From;
	b=l8XWLVUukMLImBRsxy8zA8qMVdhMEy/NF1dmDeVzkNjHXhDZx+5Iml0bwwARHVOR+
	 vjun1balLSR1Q4b7e2Mjy8wNIqtaZDButMq8sS1VKstF519mTxmesMCUHQz7e8o3CG
	 JzHY6DjT+mVp1ZhXBSuppn1Uq2PXj547pDSA5ycsbjBXQofgtdPXb1GsWKDVRlKrfb
	 CDvPijFlQRnjpvwVHOhUCHSVcAMypTor9HdZjdn5bczpFwAlNZNxRFPYwfMEDHvJTj
	 n4fhDTCCHqQ3i/R67mmU9jORETrT/kn5xxTOW8FSCX47F2qcn9LHi8apIJw48Ygr+F
	 mpu1RPYSK1QzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAAACA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708379357.15707.2455463847741460258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0cae97608637e384bd4f719a1ca658f70ec69f9da432f9c2a498bdc07b0f93
Date: Fri, 05 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757083793
