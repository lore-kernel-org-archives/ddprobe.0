Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BA0632
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721714754; cv=none; b=lhhFHEb/Vkp50gIgdWDhFQqVoOnuH1IFmuEyAkonG+PLYyBAC6iaUlKZBO68PZsaKl84e7/CnjdOJWwpA+DiTdkxHyJ5hKsqWJxZqZ3pwbGS8KI08I0VbpZ6o6ZNbprUX6y4TLuTMNrllo1Bw9/loL63vdnMrAvYUSRxmjdeb7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721714754; c=relaxed/simple;
	bh=qgJejCWCQosG2rDZbqlfp8t6839Wi81AjWCgrRc802w=;
	h=To:Subject:From:Message-Id:Date; b=osGtewD2A+lXATj4TNfoXZ/6he9wY4CMhOaiMfStSMWDFB3lcNf0SSG0eAGGzU453MIUAn/3ttDMTZxzyWrNQ70C5Dgk3VK671G9XSXhA1qjzt+avVl3VnE6Q4Ni64szlyrwCucwMEZPIozh1tBLi47WsQK8iFW4iFEGLO1OZng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCcQ5zi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCcQ5zi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB06C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721714753;
	bh=qgJejCWCQosG2rDZbqlfp8t6839Wi81AjWCgrRc802w=;
	h=To:Subject:From:Date:From;
	b=eCcQ5zi3H4OTolGWahMBBtNn89NA2KM1ClMtx3uT5fjMc6l0g6/cvRVRfBaURVOOv
	 t6mobeniFWN1Tw7xuz1hRe4ErlcMhQH8ZWlpfslg37ML2HFAJGidj/cq9RC5Vt3hdO
	 E25oDuTzNCbFUk4O/U+a9dg+gLfWyz/DSWhd4KKK4yjkxrsfonLH9tcXdIncSIo36o
	 GVb5Lk9vWTyXKkN9RkoDs0v5vHO4rN2oi6qeMMRSp4oeFCg/zovm4BWm8TV0Mh0I2r
	 piVvHnB2Ii0cNcwoszRWUIcdC9NQmEu3q3wWhPbl4m4CBhDx9wVJ/mHQbuuzJfiFcu
	 DkNg1yvinPJwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983E9C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172171475358.27264.4563038122879047520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1553470dba3201b12dce38eb7a7e1c21e7a707dd8d350ae5ea99be507803c8
Date: Tue, 23 Jul 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721714753
