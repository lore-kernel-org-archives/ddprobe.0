Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEB7D51A
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717308323; cv=none; b=UkSUFQ71Ta7CR4dDcFy5uszNMwvQ4n+LMtO5zo4CA8pIk/sSQL1SOZr6VDfD3ddv0amJ4pnm8ZN2d7KMKlv2koWR3JxGrLfewloHcwTUPWBl+UpycD94wwWPFBGYALfWLBYyM5Bg2eC4SSjw305w8POE9fgkaqY1eZP7JQn1AhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717308323; c=relaxed/simple;
	bh=N3HF+gw+7j7MBwfsxL9JnWaustbu6MTUvKt+RJYVEXw=;
	h=To:Subject:From:Message-Id:Date; b=tUBuH6cy+0k8ufMZozT3PSkZ+G+9xLPDY/qsDXDhcMUoHMTe6XALYKHItUG0C74W2+/2pB9lPN3fofvkA2MCgYkfgpIGUOx09xE3ynp5tPfSKjnS++TTeekwPu2Ilb3lWpUXpbLntwoeCaQw7I5/Kg4IH2/+uOOtexewmhrAIcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvRO80RG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvRO80RG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5876C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717308322;
	bh=N3HF+gw+7j7MBwfsxL9JnWaustbu6MTUvKt+RJYVEXw=;
	h=To:Subject:From:Date:From;
	b=RvRO80RGb3958816wgSKgAYqTdQ60AMoywrKTZW+2lZtssYDSUqgcY4O6Y4qrTIY0
	 GyLTlVoKmhg40vymsXLUIpWgEZSmqPDHhOGqtDO6bvd8R05cMWTFvm/VjoK87JFuRJ
	 72jEEIwUg+OzhdNpKEd4uNNGA0J6OEb+dQQ2A43YNSl0GP4VOjzavAegK384g1WZvX
	 Q9fXbAuaelHgDLqmZ0F+wdmtECTGwZlygekBaSxHTmhxoAACAcMT1aY5FH5bj4iYK7
	 uvNjUZEZaxSBAhkXwNCK1HaezMQyn/hKpy7zDpEF1leJWnb1hk/LpzNisTpC21ybRi
	 mSOb5vADdI5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1C0EC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730832281.16189.2414507041634352497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ae8449d0bfb77430d15185d30ec7d81701a57029dcbda0ac605b8e663063bd
Date: Sun, 02 Jun 2024 06:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717308322
