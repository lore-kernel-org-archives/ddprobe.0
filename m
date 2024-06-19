Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378BF7E0F4
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718786363; cv=none; b=S0huqr+6FYqiDRn/s8Tj1zYLf6lsmn9IumKjZTk768IETpwXf/SAofM/vyfHmc2MvrpoFwWsIaTGOTHlAhKvAIqksyZuq9Ad3J5dY6SXO5nhRU+G2kfb+JGuLqKs2WcNXE1L0S3dt3IHSIvGLwMCPXDOg7izFNXHWpoO267m19Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718786363; c=relaxed/simple;
	bh=n9G9wJbHmq0zNVIU79t+tGyIT2KGhYoFzUNYNT3ko2Y=;
	h=To:Subject:From:Message-Id:Date; b=X8cCbocfXbin0DQ+vYYpGnYP7Vj/pi9dMW9f8ePTy+1czOB7nIyFhaYXOcmKgj5UuFc2PSPh5AiUWRJTHfVsb+TtzD/oKFDSMS3ybHjToGE059HYDH0T3zspBnbcpKa0ht9ZHPxvU/KV8vNApy3FnLSdTQHPYQ/oozhnZ6V7OFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhVOzGVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhVOzGVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69CDC4AF48
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718786362;
	bh=n9G9wJbHmq0zNVIU79t+tGyIT2KGhYoFzUNYNT3ko2Y=;
	h=To:Subject:From:Date:From;
	b=YhVOzGVvgmcO4EV7kVpBDEpeDBknH7J4JywZrb0Ede2UKZSQu5VhfBKhxziDfvM0C
	 F0TEX8wbq/SVTg6lg3lLtPca7wGxBWNZS97Ceuy58JEWFk9L64Qh4oM01xPFxILYFJ
	 Q7VW+oQq8ngpOFfrrGMn05qQjvdzFdzA0KzgIRFbxv1QhNgqaLyVDdFtlFSa60XL5a
	 zTSrpAZlH0ITKvF2sPCJkHCaL60IOcvFzLEUceJ3dvzKsbLm9+sOoOjxxa0K81wOuL
	 ITnimRH3BtqfPdVySz9mpteVjz5P+hRin2KGifo2KRzbj6Isc9CMiFI27ReKaDMeiB
	 i6gkTv1ygitmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1646C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878636278.19548.12992243320071266342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f441b20dd026aa1462b87e20e2c9b881366528ad073e8f27f1a429fc1d82dc
Date: Wed, 19 Jun 2024 08:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718786362
