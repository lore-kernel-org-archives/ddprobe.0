Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4298078C91
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750485594; cv=none; b=m6EiQgbBkp0Z5PKPU/uBbiFMbY9Wlk9JUgqLadl3iTrflXMUaHViOUnWAEAulzO06ylWbVpgWiCuCjldWnZoWeEqWv7PmCYflaSWDotUY1LC/D0P3Q9vKsF6s8v4VWYKgO+DNa1sPweaTnhkY+IKSrKmLqf+vspBUFkqGsYsPsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750485594; c=relaxed/simple;
	bh=sNS+cz1Z+hg28V9VR2AjDNGozEUjAHR6kcuuMhhP3IE=;
	h=To:Subject:From:Message-Id:Date; b=XRJ7Bmd8sys7fBeRBtCsoMK3OgcHJszDxxkoaoyaNi0X4WPn0/+/6dge1/NdcMxj4g5qSUWO20DtvPpjN+avYudJB3cQP2E6S10PDRe/kQCK0tBvhasgXg4RNUTzFQXElO5VMHu3FDuXNs96ZAV5Gfy8IH0xltoOpES6bekbyUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFleAeAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFleAeAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750485593;
	bh=sNS+cz1Z+hg28V9VR2AjDNGozEUjAHR6kcuuMhhP3IE=;
	h=To:Subject:From:Date:From;
	b=mFleAeAKZ1Lk5Pkuj2PnOSO2VsBBgw+tl66pZkXPBDRNakrkEjl28oMBEK3xAAHyf
	 kko29WGz4ri0hgZQhhHncRmE3IY9luj5BrZqBG1B6eBYDonJPgTpSpKdw4cxJjz4Xe
	 hJG5DhtouNV331ZD+DjJb5W3jYArhDiZJI1BV2nMEypQdzEb4TdQCQh+mqSYAvu2Np
	 04KH+BuDqUQSyeUZ1aMIBQgkPgOr9dsWCG6otuISEroelhYumnyjntDHIld3TTrcyw
	 iMnJXCMi+Yx+/Aq3hIbL8hUJ2f6AswZNWFdycat1cVErv6jvNsc0wS6K/O2mrHN4Di
	 nam5zzW5gV8eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D1C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048559357.30870.3831552874402012557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588e40fa98c843bdd977a2c99d28b72249992ea3640edf5348f4b40d167ab417
Date: Sat, 21 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750485593
