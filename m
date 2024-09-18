Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336F718A6C5
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726695954; cv=none; b=Df1zvGAHsH9f8uLCdxepDA/Sm4iQr7gsRG3UY1VXN05ciggoGebNAP8sfBH7d62vOj5PvD3+9K9Ka6+KlNdM4E4sHU8vtEqLn67nt+vxARIwYIn70qPMlw8m8uK1keETEbMK+lQ4obAt6CVk8NvV/c539lkmEJqbUVJdC+F79vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726695954; c=relaxed/simple;
	bh=vTNjmQloV7mRVwGLZ+1BTlV2Qz1Q8Qm6qGhFjJSpQ/E=;
	h=To:Subject:From:Message-Id:Date; b=SF6IT+iaIQLmhujh8Of4ERJ1nm3xYM6Bg7VmWOP6gCqZd5y8US4aZrzCzUD3hyNWjkTcVPxVZxkrWq7OLAxQeOA3ugqwYNoji/QywvRb/mSr/XexwF/5SpC8pgB6RUOlzaXcmjNzknl9nUIkFSeRBAXHOjB+NZ85QZGA79KtQ1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQHVaveB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQHVaveB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1284C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726695953;
	bh=vTNjmQloV7mRVwGLZ+1BTlV2Qz1Q8Qm6qGhFjJSpQ/E=;
	h=To:Subject:From:Date:From;
	b=iQHVaveBuj0MVKXjdRtGK2zk8l+vxxhbzdsXwGheogEnS7e3RPS4wRZzqcpukNuKC
	 4S7znmSqAjzRr/WXYfvVA7W4J+LRpQVgOCJVhK7HDhNBWE9tThUegOSG3d+hHILtop
	 zUaAV/v/oQrIjwElZ0/MhUhsa1nEoBVegsTmTirMwQ2yXJ3gF3TJebOK6A5y1SeyoM
	 bjweMs3rwN0enAelknJDrLVaki3k+MrAbqffbEpsDcSsN2x1BQkikrM51ModzcjidE
	 Y1gZJ6KUFYen2kDKTa8zHVK8QmLWA2KdRkO6+tDSjxEzocsij8eyryoYW62LMb4Zmt
	 7CbCi3h87R2sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB6CCDD55C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172669595360.21360.12654174945599439601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1b8d7e6d255c3aa702cab0d851d906474d094de03e76af6bc840d6f3b65411
Date: Wed, 18 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726695953
