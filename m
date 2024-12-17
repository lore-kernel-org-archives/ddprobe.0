Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A4514A85
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734399354; cv=none; b=dlMgHiX/D6PWsvcAg7f/1hOIAG3Tl7tJ6iTjkQAlwjjwz+ikvAeu/MLi/47sE8NaD07N4OjMsHFqX2dJA/9zO6MXx84MOpTsWMxYC95hl3vCD1hGz3D+DnmIOR2b4ydJsWJbhuf/fIWHkUMCczqL/OeHSzTiaPZQsBamlyG0PpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734399354; c=relaxed/simple;
	bh=eva25C3TEswUSDmkbD0owsfBkk3fAGtdPKXeFPTyBkc=;
	h=To:Subject:From:Message-Id:Date; b=dhBVmiNiYEiloYDT5T4IDemU8uZR7Aa9P3XB2L2UhKexsGKbLbcJrTtBe1RVcLNuR+0ZHThgKfkWGrhtPnNa/DWHmvMJq4EHQs9Lurw2NXSicptIdp+WuxzNaDTvY449OqXWNu6qLKh4Q2XD2MksIWO5DZV2Fk0Vvoa2F9oPVZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0J03ahW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0J03ahW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4039C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734399353;
	bh=eva25C3TEswUSDmkbD0owsfBkk3fAGtdPKXeFPTyBkc=;
	h=To:Subject:From:Date:From;
	b=N0J03ahWXSPjgCC5q6O5oY8O9haaRzncl+Cni/CZsXsU8d6gFpGBpjDebMHmr4hu+
	 TBSmsLRmlK3mWcOdynpc5UAlAN9cAmaeu3GynI99FIFnM/AnnhJVOy81wbmhfG/rhp
	 lUDRj1rtvBlLjDsBsJlJ69VMREyjLpB/I6mR2UwGMUO79moQ5NEfuiWOA5hqNz81Zj
	 t/yOzblzyX5i5TFJ/aoUGrbqoG/Adp7ofwoO+lDR6L2EF9YkTW1Fp4rgajzKvXKc3H
	 mAhBF9vedFRPrmLoEzFVo2dUiOMYKd5fvVZE0NKzL3K7VciDVToH65rc/d2bu0/ADk
	 +1yBWRf+X4acg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E44E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173439935362.3889.6860983048026019267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3268e8a248d67d12164cd6d0c19e9b7a148beb7c573c8dc701777ae1f0c53517
Date: Tue, 17 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734399353
