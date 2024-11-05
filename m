Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD63E1D9674
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730813753; cv=none; b=PUenyxfNlGjsISom/FOLFfrb8rXv/gfRozIUFZ4HX6B5HChQkZ0oIB4eDdDDWk/SVSLrJ85viY5tI6208al6842gjW81MHq3SsT51NLkoZ/1pFVSXzi1xmmzMrkjS7h141pKroCz5iLp/x/DUiUQDfJ+xtFkh51wkWQmLVgE670=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730813753; c=relaxed/simple;
	bh=qu1e/gv3Ek7j1P2ag4Jq7qlb+k+foDgBv5dfT65WE/A=;
	h=To:Subject:From:Message-Id:Date; b=nJBoUGwWe3dhNWrbSoKuZaoC/hqwi+EJPrEZlEuCPws5BQmsjDpY23f6LjJiG6d2223gOhESVtjDf58f9HEF+8O27BfyZpqT2W4Y9/lXpDSlhjFlbbjdZVb7fKhc9oNt98YVO/JdClrqJKK7Q6RJ+5g13kLAbNZ0MP0rtErgY30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jk2nrp17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jk2nrp17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC922C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730813753;
	bh=qu1e/gv3Ek7j1P2ag4Jq7qlb+k+foDgBv5dfT65WE/A=;
	h=To:Subject:From:Date:From;
	b=Jk2nrp17QUpIfBlo0GVR2p0tw1mRR22eYr4CfEEMl+xtrB+taXz7sj2ZeccGaApLA
	 FFbN8khFHXlGejdITHbAgfBmpkeoATWmt0CiaEd+n84+lChmL4VhySki2yx5o9j+Qi
	 8uO4gLDNoLI+m5r/Kr5glnakwEnhsBafvxSYmpxiW6Y7McRNASNQTbHQo4qYx7WZZn
	 +sEad1DSvCjvBDBOqWLU4mZf3UFWi57uCmlHN6tzoNJssi8N/cULuS6zciwa6V1ZFF
	 ncxxUehvhPxLMBFUdV3VlIb0EZCar8GfB6300uHPBO0PqV2GiAFII4slHz1MObJJ1R
	 VuixyRaarApxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE57D2B92B
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173081375362.11745.7900737349175331066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d915756b6387b9f6a0503adbbc9b2112ce2523b298e32f6589a2e237f1e26e87
Date: Tue, 05 Nov 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730813753
