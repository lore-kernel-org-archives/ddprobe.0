Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2AF1A2FD7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719521063; cv=none; b=TFsGRGcgUXklnb/1aoI8IHFvK2T73syOVWXhWNqxoMB2VC1VHTMQf9C0AC/+EsobId1zamwya6eJd6KaMXNAwuns/0j5BtmyjvL6Cv7babKmHyYW/HO8qox+Yq6LCnBjUDV5hHQoQ8I95wxh6BD10a93I17kmlBbUViEnCCff6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719521063; c=relaxed/simple;
	bh=HEdN6zXGEY1hPIyj7oFHU3uuxgEwrEJuaNllfWYWfNI=;
	h=To:Subject:From:Message-Id:Date; b=MUWgSo4Md3cfTE2g7Aa+aOCIFmNLBR7/3nFrm/fxGp0lul5mFjSm2rWFoZb6QYVtgOXamP1HGSOIrj/7XJitkas5kp91O0kmX55YEdgxCqrmkAqYKAZHUmEAxjobU1dVsj9mtVwkldTvWUl7Ptw0Nbi9fd4nEqu/PHYiUuw+S7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXv8YEvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXv8YEvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E76B7C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719521062;
	bh=HEdN6zXGEY1hPIyj7oFHU3uuxgEwrEJuaNllfWYWfNI=;
	h=To:Subject:From:Date:From;
	b=iXv8YEvnFZv9Srw5KERL+NVvbXjV+FiuTRfLPl3PIJtieQh82e9notlNNIbgasDlu
	 SEeM6hdy0kPypb9YrE8c0HmYqZ83r3cImviLtVusiV3oY2UBMWQ9qzVpyJdmD+MR2E
	 gsbxqDaeAvl+Xsd+pyHCXG2XH0lfAQQL0kpKtmIeb9MmNWCCUy5YCrSrBL0KKxuPHr
	 Yr4Q5Xeyb5HD+X/B2eTnNgv644PIrkxxUSett5kDCSdr+UD4Wtuo2Mh3wK6tYSIJYs
	 BVSIZmxr5qQq7p9U6xWqURIREw8x2+GLNmqlzD7XjZPVPIW+yo0TRc/z34An7ah8at
	 sUcjsglVLa6NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D32B6C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 20:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952106285.4751.65559509515560984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe8f7bc4970979daf4232c16f2c464a1d18079084e468bb56e18fca8cd19adb
Date: Thu, 27 Jun 2024 20:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719521062
