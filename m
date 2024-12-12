Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF58813792B
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734017154; cv=none; b=lKSfJmX5/t3RygAFqokZhkX0eh0tx+ldw+sUTxxjwWdb5C+sUTuyB5cwW4jEfFY7Bn6lrkkbMFI0JoHLqDXcKFoivIHnGyJ2bfou0Q8tGeJpvV2HzbNO1UN6zECyIBROQl5GTvLFN5CUeaJIpA/o8jFP3KDvAE4u8IM6dylDUrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734017154; c=relaxed/simple;
	bh=ArAzyQhOlYVE3kY7hvtxdt1tpWL2TUUjQV9asUE2x6g=;
	h=To:Subject:From:Message-Id:Date; b=p0kLlHFurGGJWe/HzIIbXbX84M4Yxvw9jcpLlHsiRdMLYByeYdk+fVxYrVmDseLCQJ98CIv1STs2muvVS94A5wSKrsZLZ5PZJPc80a39SwjwsF1QnYjIxc/KX42TN3ZqMZg3e9pSoJyRHi4g2qrC9dpIEl3vCTS3j4KCXwlJ+ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAqj5Ki2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAqj5Ki2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AF3C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734017153;
	bh=ArAzyQhOlYVE3kY7hvtxdt1tpWL2TUUjQV9asUE2x6g=;
	h=To:Subject:From:Date:From;
	b=iAqj5Ki2XhB3yjSWchC+TR/oFnSfUd70WT1jOIyWeAbfmup41MsPNeGuYWDG3MYob
	 QiuQ/esRnwjPpmGO2KKa6y1hgHrOwfVTC281RO9bpWbdSIG/ioqYXLWGREIruc26y8
	 HNhXX5Hbdkh83DfGJcAA1UphNbDXJ3yG6PVRZBbde0MQDyo5wruLWsX/ffl8ybK927
	 oUlSKx44i4WgYSH9tS2RhW5Y3uBLGrwWFhEYbvDWqH/33miG1Sn1WgVxzJOYKQO3FP
	 M+un60zV7f0hMskqGKEtFW0TndBurvhGrQnra8WI2wzDaIGLjKO2HpPtrAH2Ssm0Me
	 ZNI81qEqChuzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4059E77180
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173401715366.1551.4892723368036388272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01044a38d1ad6d21c83af54f86670fc10c91d701640b9f893104008570a42724
Date: Thu, 12 Dec 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734017153
