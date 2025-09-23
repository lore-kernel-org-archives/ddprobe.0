Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B2231E0F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758617994; cv=none; b=SNMMsDwJR5b5maVtCY/ByjR8VAf9IvFRYPCKZ9bj/ZKwwu2LPKMiLkOnszgQDREHYpeOY2NvGdHwMkeqEbcDk8Yjs3Rd7P6tf72rLXEiIWzA+n0t/PRM45tKlyP9SGezkBAD/DUWEtr1FtpntEFXrv5peer9CRSAyhvm9vikHuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758617994; c=relaxed/simple;
	bh=urMQp0qUjAnWIrP0GEfUAhfQOAH+FivVNgmDIjbLMC4=;
	h=To:Subject:From:Message-Id:Date; b=qCRfLDcKXFpiw9BT9+tnodBaXi3DBBDNqK2SHZg4yUT07b1mfX7tfrVjUmuBtj1QFDxhIuVlE+mRJPwdtW3B9rn2n4e101M8U2jdJitVPN36vSZQl6OIFwxH82U4SFKl4m9lwWnMf9wjo/W729+MMWbjISRRp5SfoGhQy9TFSmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0oloyNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0oloyNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A24C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758617993;
	bh=urMQp0qUjAnWIrP0GEfUAhfQOAH+FivVNgmDIjbLMC4=;
	h=To:Subject:From:Date:From;
	b=c0oloyNO8URauOcGGvYQCACmivLIqypZiDSh5GdO+zcvzwVUPFCbQl9UyusoUO6Nl
	 26aeRNh8kEzmiWSRwOxBZxJc5SLzcIKMZI4JbGGTL7S8KIBcmDWQGA920SM/D0tweI
	 Qh3y78OYvIpPNdc4A0jrKqix0y3lTYCVGufw89fpJZS3dqq4of1sFRmzkaKu01jDOs
	 3WWZDE3uWT0ZM7yM6qOa1Q4B+hE1kpIAS5/4QOPLObjSBhOJyjIG0k2+0PbaSWSJq8
	 88r76NX9pKmVmeb+xAUPQSUnTezl51pfHWSNOJLeYZO0UuBl/hGzXJf6S4y/BCTlG2
	 ikj5Rc5DlQyPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A96CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861799358.627.7755395090736523457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71600c311f0349feb95c5cb5abbf47e93e9f1637d541fa43bf27fa029ba8cb18
Date: Tue, 23 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758617993
