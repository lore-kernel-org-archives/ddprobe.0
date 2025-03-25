Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AE825A62C
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742914194; cv=none; b=dFhqWwvrh9o9yB8Se3pYfEoGjvz+StswrAGow/r0QR5vCX//ICNzmp8DGHMp9+xGD8FWVa90V88Xq90Tbztk9urQE8GCFoWgYq3BHQmwhYlcPIk2VsfwmMvdeW+fI90j53MBoRtM8NPtK5on9PWrNheAgRVSQnZfwGA3DTnnzH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742914194; c=relaxed/simple;
	bh=31mWoNRwtI700hppucFUjDhLc74LrgSjHmSdkOe0wNg=;
	h=To:Subject:From:Message-Id:Date; b=e8mo5O1skjxrn7BPg+pyHX4odJ/UheuPwMnrk7MpYTSBbc3ahtX8rtFXepN7oR/6OW1a5MkJqc78zNKvr2LzHw93uVz8EP2aFxps3PfrHmPr5V8oIFRlEc7bhz+bbdJaSObfk6EjbHx1y8oqV7jwFuPXMQ28Dpdzxsp9MEpI5tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/EIRZJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/EIRZJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA83DC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742914193;
	bh=31mWoNRwtI700hppucFUjDhLc74LrgSjHmSdkOe0wNg=;
	h=To:Subject:From:Date:From;
	b=e/EIRZJ+hcCFSSBWTK/EfgUNOCaGYAVH/mSvpJhazekp1nbS16nPdkMvwzmdb3wVU
	 CbWOTKhVSe3s0osYGX1vOjYJiqM4rn+4uR3kEPOQfu5bhqn1ebXN72vBtc1UaJsEKP
	 uTa4+2hieuh8rf2qCE+kI1ZYlbMwnCNCUg48X+QXegO2pfYOeNiLCDWg4KPxzgXlVG
	 GTHSl8x/6roj2lUYj81T7VlPfUTjwuRkgSnNRGmaqBNIcu/0D5+K35rZDphEen97bZ
	 /chygZ5YrhagYB3V0Uxc4ISrQSWX4dyvlG10N2jfLswC83c7wWzvA57cBlRofl+k6G
	 +uAvyFrVeJD4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9541C3600E
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291419368.27044.10716038110106534140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f45722a3ccf4acd21890634add7876e3812e38ab0a2a8265683820c96ea0ec
Date: Tue, 25 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742914193
