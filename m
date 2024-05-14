Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0ED2943F
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715688743; cv=none; b=u0ynawGCIeONQ9vy6qLee4A6fl++6Cl3cSVWd+o5sZyT6mQKqUdAmGcmb6Nf/PGz7N8MOWfW3eGq9lKULMrdORpRHltou3aUblO2PFx4XWFdJzOuDpuWJz6HuSHXZbz1lg2C0m56tLMw/FfSCGHbrz7TtYFKncjxJkcYmPYjJCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715688743; c=relaxed/simple;
	bh=p5uBWKv5husPSDpM+r8fW/Pytm3GVVohUrkuOm2C6uQ=;
	h=To:Subject:From:Message-Id:Date; b=WeAZj2fZBJLSyrJ0lqg/eW0xxeWD8pYAdb27niBwophjwJhvEpiF5iwmj6ubBwd8v67GniYoDq0q/d8/eCar7DWqMsLDl31r/ibP8J7C3s3lseDcVWZcZX9haRJbu8/uuZb+CUdcCq1V4H7oYHwCJhUC7JMd6gEyl+xOS6/1y8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NevKpmqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NevKpmqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3863C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715688742;
	bh=p5uBWKv5husPSDpM+r8fW/Pytm3GVVohUrkuOm2C6uQ=;
	h=To:Subject:From:Date:From;
	b=NevKpmqKcac/9rEB0X6LTjyJE7ui5P5joMx8gNg8QUV/eMNgAepE20bWuMPPe/8ZZ
	 11Uf1TMLmw74DeW/q3nNcwH6n5szurYGEEi7NO/2JPhQ57/tMqSlHhWkR3xmN7rj/i
	 VPosvBAm34sXbKfe+uSUSzfE4WioUes4An4V2+1bGy9tI0b23vK8M5zR99ZfDCTHw7
	 D33OEscUkutAfOuK579iVfTEKeluytJH3zmDpPDzJqKm6XG4p7WQ8XSEauY73m8Lme
	 2p+oWJT7Qfz96cVk+PXlKieWSaX45p6nWIGmx2GI0AvfHit5al2loGfbQ0ooThBnJx
	 xIGQOQJpotH8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB04EC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171568874281.6956.15618816151457768496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08f29053bd748083a6d4553136bfc43d9401e57aa554f76bd18a7975a764340
Date: Tue, 14 May 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715688742
