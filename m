Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273F49460
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762000794; cv=none; b=WqTS1Qliv8RkuaGSk6/qHB2EB17fhM4JVEorRVWKuKHyG1zZGaYpTdTf1bUyJ8s5UJFIZf1zr0cOlxeCtcoVY8KEWrQ2tu8C3pdEEZJ7qX75JIAjKfjwWZqLchzW0d678TIPzAHOiWSDc0TiYRQ3YYfXKU82WYdAn6vUqckXBwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762000794; c=relaxed/simple;
	bh=Tn3IaawOKr8SKX3sgGqQm6UNxeAzveP65HhWwusTVc4=;
	h=To:Subject:From:Message-Id:Date; b=Gu/8O1+PIX0wwybRsO8yGZk5K2VMLEIoYKuNsivGif3+WyRs/hJTTuu0c0zvlDDHFjI7iW2WMxHQb96bBH9HhuR0z7VUAGjLOGOeFRuyuFkzNhWSLsh78szQX/KlLVGQQffrnFMXWTF+WL94CK0Im9QhYfwzSwdlPowIUmpS+AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biM0zK+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biM0zK+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99B8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762000793;
	bh=Tn3IaawOKr8SKX3sgGqQm6UNxeAzveP65HhWwusTVc4=;
	h=To:Subject:From:Date:From;
	b=biM0zK+wZadgQmiGLuGnar0fizLfFbBMlpzjedeJTfv+2TrJILY32rL/QJG64B8Rn
	 1nqz1EFAlm37C9EPo1pEGwIZ/6FNsLZ8z06D+zXuFaWTs9FbQh10V54/ZKHmnLRIbh
	 vzRQB88PBvYydxUSanUhgW15dPODX1JSXRSKcs/4XYkqJu/BMFdyZPfMr4ujtLC5cH
	 swFpLVzfREi8fLgQ/6adMtlIagG1h4RVm669CRi+Gs1RP3BlLI3GVFvEnC3pfwiNVL
	 bdHNtNdAMEciWxktEfuzf1uO7E0zAdWtG2j8lc5FX2PzMpXXJiua8/cWRSrZkdFeFc
	 PTb90tp4VqHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F57CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200079358.2440.1810770731471722205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9911939e76e8f06d6b7aba40ed43b5dc34848241e38f0038a78187cb15b0547
Date: Sat, 01 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762000793
