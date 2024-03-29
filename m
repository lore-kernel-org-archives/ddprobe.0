Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4062C6B1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711733297; cv=none; b=GdAMRmQPBGHCrdQ2oVgIduCbUZ+p1DtHnmdYfQHOV73RdhK1u2izPLvDTiNNIO1saYiFfP/2uUD1Tpkb8aTfkEtljorZLZvGCD1K8DhGMCi24HlRQSjU2bL5Rtgf+EbB2t7WFi8AQ3GSXh/F+IpaKKO1azXdT7DYAPfAQgEe2rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711733297; c=relaxed/simple;
	bh=BJ6lgM9H0OQyrDWoaRJM5wPIthayBYr2WKgwrKnagSk=;
	h=To:Subject:From:Message-Id:Date; b=KhMTU+caFFK6+8KFw6+Y3WPe/9CPC3CBx0t4QBEmK1shzp+ue4fl/tjo3UAIdZkyf9oC/4W2YVuhx18qQ71C9m2/7gF0fBgBdRsAEIK6IaE2OOn9dwUK2mN+gbCQlAl9rsFOJCp6pr8hU/LpFQy66pDGo9/PBLac6PgipuHFbB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVnmWI+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVnmWI+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85AE0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711733296;
	bh=BJ6lgM9H0OQyrDWoaRJM5wPIthayBYr2WKgwrKnagSk=;
	h=To:Subject:From:Date:From;
	b=sVnmWI+AOE1qaN3sc9dPyJSCqbSiRW/nLGZ6v4GNZHq5DyAFr8DOPZciZhDy75B1o
	 k0Cf7FwmH1GPf8G6IPa0sGdiYj+NDnN7TzVM+d1kRMLmTCn74G5zjmGsTJ8IBrjOM1
	 S99fdFa8XBUhrrcXnzkO9DiUUIkaa72FVk7ZFTgy6tPZ4oS9epUMuPM2FhBLBVOfPF
	 xCxM+CDK8PTyf9s+KmUpMKijcK6RmhgsFqQ9hxaUiML0UK795xRu/uN/gxfHSs821R
	 9iLeu864DvtBce5Nx7dkECJrS49LWtB/zKW55LhX9FPn2bEyMjxykpurgOxa7BEwX/
	 yEveF4bI0t7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 739F8C6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171173329643.25942.14303654543425043715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37029450dc5f1b6bcaf567588f61b4cab7ac7fae3ac7d120419c258ae87829b0
Date: Fri, 29 Mar 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711733296
