Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B2D54740
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733052954; cv=none; b=QfHmOmANfunDXdCW4P5pkO0848ctx8J+5JRNeGuKVCVQ3kbiOPk5g13Eqh5FjPVRGHn/RNKmpEpah6ocJvTwCZgSkwIWSlEptv4h9lyUfyM+RfMj2EC1AAafp6UBP7JaqUTA5EmPm4+eitjOBEoDPe3UC8JTw9L0UmTDGqDIDAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733052954; c=relaxed/simple;
	bh=FHxG/zXcE0DoStRY9yynLDsSUrLIspiptCXlQybTbVc=;
	h=To:Subject:From:Message-Id:Date; b=ki3ogVXnF33U8TdfGJne9rBIYFkrQbYRKCqdeBuBGq753k+EnneZYuuU/+SRtlYdDTLGxIVe+991YSC/nRd4Hijz9sqLd8gL6GHVllg3fAuCdC7I1+h5gZVr0ve0Fsa9wHCEafxLA8oNTVWe2rA28AGXDo6N4kbCS/VZzAsUEAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg1tQUtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg1tQUtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48E9C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733052953;
	bh=FHxG/zXcE0DoStRY9yynLDsSUrLIspiptCXlQybTbVc=;
	h=To:Subject:From:Date:From;
	b=fg1tQUtPTZ2S4GLoOfcA80Q45UxsxxGnRJLqsRQ5nEaYeF6aeQVq+n167kwwBeQcQ
	 OQdmGwscZ4mU6QunriLM6s1xgx81TmMWhIFJL9A8dEFgmRa9KmbKRvEBW0zpoMCrpX
	 fS49YRj9HQ73ZlXK6kJM2Xutf6pwSWiqtfO3QnIhsTqon6m/ysipXO6Fmkt47Cok/K
	 6XXpLfftWDznn3ivKkyr1sxuyx07jhJp80/1C7KSF/xk7pcaZKHCNLLcd8rWYxDhe1
	 JFWRspeMBoFeVx5hceUqSTpQcuNA2ibxsyzIFFSgHkoa8siH+Tun6sPXBjxbusLHF3
	 kRFdW833W5IUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2703D49762
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173305295362.32214.15952009830696367950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4309dbd47c44c5b13777497156858644ddfddeef85f64a7395e7aa0f53b5240f
Date: Sun, 01 Dec 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733052953
