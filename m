Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5804076035
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720452383; cv=none; b=lB5VmHB+RsuPwPqSU2uZgJH8IVbqGpAhtNLSz7F1WVsAU2Cs78b30jDRFRJLyn96zSyWa3/9HcpWd0vsaPB78uwWOqd2WK5lLDqMTidFHZH+cEQO7TykpgonLcZBmG1zrXl7Jb5l0VCbmWr8FIq8NnnhYRybLskFQsT2OceHYmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720452383; c=relaxed/simple;
	bh=eq4THfJqCCTHm8aiMfUbp10A3VvnI7yKAyf13RrQbXw=;
	h=To:Subject:From:Message-Id:Date; b=ba9WI417f8T5INwy72rUiNHGboRIyLOtUevfcOwUsNOQpOsOobF54d9DPA5DbHJFoTbDMfcWxZms7v9w0YMJL9FJ7kI84ylfUV/eJXyTF2H6DLABTWaTAWpq/1KqqAuwDdXVdjjBmiC4gFZljs2GyWEfyW7E2IQKIdF7AwPabZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPC2m0GK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPC2m0GK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D623DC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720452382;
	bh=eq4THfJqCCTHm8aiMfUbp10A3VvnI7yKAyf13RrQbXw=;
	h=To:Subject:From:Date:From;
	b=XPC2m0GKqH05pHIsTJNjQdr6lcvuqoCWesv31Zgl2oOieCMJVL+8QNa2USvjpjBZS
	 FMhLQVpwfvSYw2Z8baPuFh1b+CZZYTIvrdPp/tQdVUbDgzxQg/OrWHpu2RwZXdl/kq
	 ADQk+Oy89pm1haGnnYymuBhoJXi+f3tAYwVMoY1YJvcMZRdj4s56et4tj1BUPgPFbO
	 FHtM/0tQPoyIZjaJqC+fTYvE7Ah4gbejT/mSjAAuA57ZwLvaH7xmef1wu5p4AkPGmw
	 N/KZ0xb6lTwPyMc5DkQJyCrQsCraSOk2LNHJg0EO4o+mKJ8Ugo25ortZQuXoI12sJi
	 K/rEjipiP1clQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9BCC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045238277.4829.14096453203261361969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8383e4c840e367852abeded4e7ba09d3e79c784a5af17decc71b19acf773fc0f
Date: Mon, 08 Jul 2024 15:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720452382
