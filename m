Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3676219E81F
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760204394; cv=none; b=FkBCHq2Rh1/sXSk1JonzwxdiD2cpVtLO8Dso3tGxLXyZ7Q2BImMtiziNHCMqblk/soViA5867zwKTO5AFYdJEAhuaUjYUZn/dp9KPmE1IAA4AajfZWO5ZPdGODahZAIOd+W5gV5CGf1QRy9JC7239iPNZuf/f0NRDFUqMzk0oYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760204394; c=relaxed/simple;
	bh=xootbI7umoW2E4ljhV3TKD6t9P1LMQCrKiWtj29WO1Q=;
	h=To:Subject:From:Message-Id:Date; b=f5vfxVOGaxzCBYWQiHnVRFyOg+gERW4pNtrBBWPiRYayZ2ar3HSbKTXir1rxMxRfn9AQTQJhcu1kMU4+Bb6MRJQs25NW6R3Az5AB2KZRmxuKSLqBGytnxK2ed4mcVM37IZqCGJZzwuOLv0YB1jNRmvYfME4NStZJd9Ffy4Wzook=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcsbfwSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcsbfwSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A939BC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760204393;
	bh=xootbI7umoW2E4ljhV3TKD6t9P1LMQCrKiWtj29WO1Q=;
	h=To:Subject:From:Date:From;
	b=HcsbfwSuVtQo9BbPIJHd4PPfdYaCXA+cXwUrlG2L85cWg/Cf7+XRPR0/JfSbuojXX
	 oeugorYwCk70v4oL0yjaMo4ZPfDvVDu8Vd81q5sbHdHUIAUObPxn1brEnguxpPLIR0
	 sX9YAE7whyVakwNWfH/NUcm/8LD1ieuvZd8gxq9h8wLaYZ45MaAame0hWDMBhDrZt3
	 eMr/+7J/06nWFexv5PJiAPHVHfheokhuP4SUL59MqbN78uVHDoT5rkcSjsRJHnUPtY
	 yCOvNimVOBdMstZ6iUpNPziITHPRr4NPmPus1GmJuLs/3q3kwziqThXXcaJJtjANWD
	 WFZPLffrL8NzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93139CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020439358.23560.1949787552824166388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8d514b0e0475ca603f8fcaf4190ec74e764b94954202f723fbcbe41c8cf6a0
Date: Sat, 11 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760204393
