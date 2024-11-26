Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADC513CF82
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732608954; cv=none; b=qTugGxBsjgv11XCqX49QoJpME+L2B0rs6W2GKc45kuty9PMAXuHH1lrADZ2fhFJ0gQguAlxZvwSbflNtERzwkN3sJaNOyNJxSJpMpPt9AMkBGcQDXdOQoKqYOiMyvogYFvIaCjN2myIln1rUvOzrTUuScboHVhV4yCGhJIDYh3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732608954; c=relaxed/simple;
	bh=DIvUrkoBtBWbka4zirh8nYELoCvlwLBW4T/DalpIg/M=;
	h=To:Subject:From:Message-Id:Date; b=U48OPg/DFvlWMiL+OB3v/h3Xbd9A5VMyWSGW/oJxT8WvCDQMZVgOZhputKaEamaJHSpWkOQcNbKtvZfyMRroFjJKcNC6Aotczvg5w+UWBWDz+CeSs3s3nB8CoYkZOSaZyXUBTPQLg/pQo66AWDRFcUbqJAl21h7vtufT3o9kCcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeLlfVvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeLlfVvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA38FC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732608953;
	bh=DIvUrkoBtBWbka4zirh8nYELoCvlwLBW4T/DalpIg/M=;
	h=To:Subject:From:Date:From;
	b=EeLlfVvGsTGgdvCN45/SfmZeF76nk//+z5DxnKJ5pqgCXepGLeY0AuHiIfgQBuRTX
	 fToMvuJWMFTgPvSwCDwwZld9Bhk0n/m1eBIRdpW9fYDVN9OXq5DcfOZ9dOPUziKVJ3
	 yoRVeEOP6IgD55YcAs8DXIKDmdGjcre5R1k0aHv9IX54rXxDsmJK2PXQAffyLlsQxR
	 IzacLbrfbk+LhgZDFKvlEbpaJR+dNMXeEx5UQEBqP36M7QrhA7kfiDBZr2oPnY7l5l
	 AE87T75ML3RU+/9ZXcpj3Pkf+pWF8hnXjWshvvNpPPUGGbHj/EAC64GeZ53u4xa4DB
	 Ub6ecqoeFAKLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F4D5A6F8
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173260895359.16976.10158891985066684965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56329930c5513bc4ceea31b27160a873f617ea26e44317c4ee4ae70caaa46ab
Date: Tue, 26 Nov 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732608953
