Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369872DCC00
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748796594; cv=none; b=sRON36yA8odk0y582M3sSbfeoTofZPR6+Y9z03Cl941Vsir8ZxqTYyFtkLzqrwoWAaHTlZ/H961TpaP5zGv3scv+9K9rrnmGpMpW0iZo8wZ9FVum4va6t3kEgw5LVtuBv8szPjWGVATDeDPul3whn5omYeVOiuDfu2WfmGyn7bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748796594; c=relaxed/simple;
	bh=SdzQh4JNSWn6yGUOwLXeXGleoE/4UaFy5KYRt9V7tJA=;
	h=To:Subject:From:Message-Id:Date; b=FSrImodS9/BGhy6TtP2FORXxqInqxFE4X/373dLkG7KuG4LRlfEDyMueVl6eRIL9Uy1IckqMQYh2kLh/Zbp+TEeYqEMc/94ZJTpLm8PMuIzbLSUipvP8DzwZ1OOx273BA4xINpKotuB2hnYxj7oWeBEPwNd1CuzoevRLLMU3vDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFfF+Ixy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFfF+Ixy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A466EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748796593;
	bh=SdzQh4JNSWn6yGUOwLXeXGleoE/4UaFy5KYRt9V7tJA=;
	h=To:Subject:From:Date:From;
	b=gFfF+Ixyu1sEQfxu6nmFNI3ghWiyl9Z1qltC8GakFBdjg4Ou1gxbM0ZvHfWJob0Eg
	 ee6259JAQujUYz2f3h7/khpl46JqeB2dxU0XQdjVN5SnkMjXlJQIpvmUKtuNXUcWu5
	 yfziURpZrz0IV4BEjK3HIrXro//dgBWJm7IKrZ0nWJ/I81RN7wF+JBh2azoHJeFtFu
	 W3JntFKO61tQ92V8SgbTLduuih9NDnLoTXaY3YCxndmwlyX6BdcXJOTR0mLQjMyRoW
	 GKppPETxvBz+V4XWxBgN8Z1R2EPD6uI68ZDS+2wAybm2kYpgxxjEan0/W8I/K2YpBK
	 0ycNIhd4pn/Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF3C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879659358.24444.895991391299789782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf24e51acad5e8e0d9bc6d248e01950823d4c6c78b37013157ef49c9ec08984
Date: Sun, 01 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748796593
