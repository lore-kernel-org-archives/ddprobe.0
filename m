Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F3D1F16B
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756687194; cv=none; b=Eed9JhZPbdnmKTUuwnuQP/ixu6hQGK2P7Mcgg6CA5iDVVWzBU1RGxgRTDfA4mi1TnC2MRncWMZiI7Y/ol8CuduWBgB545DHmekBnuOSonKoROU7ly5KEQx/U0fpADQL2ShI7iybPn5oQbcpoC9nn1gXb4xFozpk5mQ/xhQ3eEuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756687194; c=relaxed/simple;
	bh=O3/dlvxlpC/oi8u5C6IbZnN/qe4AoZnCvyQb+/jZYPo=;
	h=To:Subject:From:Message-Id:Date; b=rFiKCw3gdpI7wNPpJy8AB3GI+bNvffvGGUzoMUHxQYyw6SYp9spkbCdbDRS7lWmL/VHEd/y/jySiZNrfI9ZpiJoX5Wd43LC9Vq55q1DYuh+3e4ZqedNtGDFJP+QNdff6LGLMGQ0oBQtX7wBUbZl+3Ha8cqQ5+Gf4SiY/dsrwt7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+FXkcJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+FXkcJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23A5C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756687193;
	bh=O3/dlvxlpC/oi8u5C6IbZnN/qe4AoZnCvyQb+/jZYPo=;
	h=To:Subject:From:Date:From;
	b=r+FXkcJfMeVGgdJ0tnuo+T+5tR7mXCvw4WtcPodBzkiD9Q/taaEKOH1Q4pvkrWDeX
	 AFlw5HNzbCUUFBPmJqv8aT+tzHHDVSXYXNnd06+TAwcFKAaCOtCUPP8QzQKaI2UxZu
	 y9ci9cIXJlhzB0oD38zNnug7yOCn4RdJUaLodG7ZDcDQIzbUwH85lNuj47nehIHP5J
	 wYc2rjCNBIspfpDSZNF/TyMUpYKEi74HAXyfX4ilKfeXQTc7UfWu5By19l8NCUTwSz
	 gc9HF/C2ngyw/tw+Vx5hsFJ5iyhoKHx6GWg/nG8h0Wy8jEgSjq3OFbDp4gUz5HFpzX
	 2WfCOz4OhoS5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E48BCA0FF2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668719357.20841.9772886998502239008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69f336669eee75d26da6ccf790c4f2df4c138df8e9cd9d5fa80f199ee43bdea
Date: Mon, 01 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756687193
