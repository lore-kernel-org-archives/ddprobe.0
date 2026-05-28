Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027CB399023
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779958954; cv=none; b=ZdHvqgl7tktGB1dMPieqSP0uEjTYD3o1AKe+v7FXfbOuoneq/7EZZv4rzEpHL8OZ+zf38INJ1UWTY/9MDInxyNft/ioVpYuAYtYrTa6JGQQ5yjpoXxwWTn1rVQYc8s/LeF3apRbKDXotjkyDT9od/Ks5SjaGY1j5a3VISxuvCyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779958954; c=relaxed/simple;
	bh=/in+Ca7zyyBA5LjDibft4wT3RoA99CD6M/JgFrO8tBE=;
	h=To:Subject:From:Message-Id:Date; b=qlbcRYuWSF1twlTQ4vcnNR2GeZZbWhZNHgPbWjsnZi+hCOCRWGqAzwOkAF3TVo+gsZEZ7WTHZSjs75Lmmf5pYSqREixvTAPr6s7GOv5QdfrtZb+YsXaYr31sud5aTx0AMatFA+NRTFYKoyqg1G/9zLg29Vyu3eOTLhWG5S5aRlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRwsRp1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRwsRp1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC9BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779958953;
	bh=/in+Ca7zyyBA5LjDibft4wT3RoA99CD6M/JgFrO8tBE=;
	h=To:Subject:From:Date:From;
	b=GRwsRp1ZD6jFbxwBBg1aekVxGBCtLJ9uZzyfUCicBRSDrChZ0l7Nin8Yo83hSglyr
	 7Ape5mWtkLV8Y5ORawFmWrRDyPaWUqaVDL7cur69ScWJbD48gVymrIRnkYIEcvqu6x
	 INljSSomPD/dITjGAuGH5CEUN4lJpAO/ZVikO2vZyzsoun1dXyGeOuf7x717yzXIJr
	 qi5Xey88BgqMpB7AzXCxt1f3BCBCAuHrNvDepCeMWiz8WFzE2isuyJ9cJFKRJpFQaH
	 ++uxwrhGLzaXo/tTX3ukz1bgGa++klKOLt+cQavyfVKO+TL+LuxuppDDHPdRbVDXrH
	 +wilEZ6SluPGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A903ACD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995895368.18089.1523079520493055913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed153aa1a78da7134af0b132f120b032725bc6abbdf0e79d4b2a8da66206fa2
Date: Thu, 28 May 2026 09:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779958953
