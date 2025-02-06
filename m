Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371B6218EA8
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738839954; cv=none; b=axNWjLzuzVAaC1HI4n8iVMot0lZ/noPMQiTNLi9G9fGAbaF65ZJxWEtkNK6r/VRFsGBVTO04bqJs0v7bIjhrlUAOHfGrjgMJ8LHpqNN7/P8/WH6XSKmWjE7m2UAb2KTUCzYd8cRTmvp2p70r63w+mqcytxYUiKkbcNeTPu5sGjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738839954; c=relaxed/simple;
	bh=W/4hT4A/qf+Q3PUrdBNYxBZuxUcrl5mJ5VvxulU/qg0=;
	h=To:Subject:From:Message-Id:Date; b=sQAd4FBMogFWkYuc8nL5hz7s2pRVOqn4zVrNbY3KKYNc49wlwm+biKfrur3zi1vxZUH3sF2UTb9vkcnNBor9Tw5eMEVGn8bip+L48V6n8+OP2/sXal4kHQ1KeZ6cBNMA5IzwtCL6349vIF3fBaXZAA56fxOa2zAhRBO2+lHRCbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mavMKPEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mavMKPEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8093C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738839953;
	bh=W/4hT4A/qf+Q3PUrdBNYxBZuxUcrl5mJ5VvxulU/qg0=;
	h=To:Subject:From:Date:From;
	b=mavMKPEFwslvLTTFXYoHahSazMaprGd9fCsmHGTFNLUmCUYkTnQtt6f3DXfzU9g9w
	 IAOWzdCHqpoMWXgskIRd30AVw+iFRjj4i02WQDZxfZ/w4LKPDYl/0zF82SY34Ede9W
	 EFTjN3giowz6GUoM89EHNSgGq0U9MZnDH0q/Dq7Lv8VDw+63cD/jQHPpx3kyjR/W0j
	 /PTTFhHI5xOPxZZA3OA/zYpQnArUW3BA/hi+3vrm3EpRsxv6e5hIsVbq8gS0fv1Tqs
	 h+mxotg4qAJOop8p+O/zY5ydEg6N9Xii2zrYijSc/17O2xKIf4iP98nVxnl4vaD9vd
	 L6MzDlmRTMCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984BAC02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173883995361.1305.4687575810988424014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96fbb177bdbc93871d982fd599c9a844a97520c0a6c7247126a1ae5b7195f6a9
Date: Thu, 06 Feb 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738839953
