Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C92C132108
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718028443; cv=none; b=TC6x9gh7BilFdIy9aXefv5SidXCzr1SmsUzY2u3FIb1kJmhIMEBxvVgW6mjgWMH+wjREhasqYFcbaoVvz6pV6MnUIDNL5lZpPXdO/pPIyFZrlX42NYMLEectf+pMDTxhb7hv2czrYfxGqeOB0sxUr7q0sjUVzNJB+aBdr0yp2L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718028443; c=relaxed/simple;
	bh=ilhHl/rtxbpdHwpAcYAAbaQndru4NaEN99PMTyVlDwo=;
	h=To:Subject:From:Message-Id:Date; b=QhMKwP34hSCOjQphIpQXeBQj5+qNuqudeCeQ4xvKVQo8HcsCnlVf5/x8yQVCcuKgJiTnwJTz1uKB61LWD398JMXbV0LG/XXGU4F/laI61iBSsLkVIxIoaaWG6xfDz9olhbR1J7kYCS0c9wvlCUsvNjr4Ao2+xjzJzLicuZ81viI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ2Oj8mB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ2Oj8mB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCE1C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718028442;
	bh=ilhHl/rtxbpdHwpAcYAAbaQndru4NaEN99PMTyVlDwo=;
	h=To:Subject:From:Date:From;
	b=JZ2Oj8mBEmcOC7lqXggh72FfTvK9aRa/1v17quX7pqsHn1a6OQnHKMW+vzlFlb7rN
	 0cIJyaDBK7HjAjQGpBFhFmogyI+29gxeEB1ov/f6TWwT9p9tDxreBWEofCMxQklGFH
	 Psh9+hRRQ+xc0ppaWmSlFLAro81l2nsDCwGa0q0ajjifAwGX17/n81TsEH9gQ33HR/
	 QJPCyolAiqgvqeoGp7t2HWfWiBpQybt1j4Sc7m2QN7vqFNs1PXZwS99rn4Ecguc8K+
	 WzlBs1XRvR+0T+NQ1H5Omi/KD0pUHAuC7ynKbU3kHw+P9eR7r8nEvWCZtpPKvxQ+2c
	 +Kx6pVHWrRrfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99BCC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802844275.23014.2313720191742804141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf70867e7f8e6d55e819ad9af299b32be2aeff477b9489b92613eb42bc3790cf
Date: Mon, 10 Jun 2024 14:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718028442
