Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381121C4A13
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743176994; cv=none; b=F2RUm5IGEtejVN8E37oihjMTgv7cysB6jxy/bFxzaBmywjeYEeagLfUuOD2jt6CZsqi23ib5YHpqHGGWA7c8sUOH+B2UKhYYs8HEyqE/VPitN/CRMwQxQ/Mt9UoigpgHaGjVyv4U2t4vTSlbnH3bKDtIJE5ctmKm1nqey4uZaQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743176994; c=relaxed/simple;
	bh=AFYyCGQfQrcJhVvi30WgctRMWixIct+LAonwsJ3Z0Lo=;
	h=To:Subject:From:Message-Id:Date; b=SFN7TDRJMRrnrDy1eGmAgyh/qTrQs49zpuzp1TFCJufAbKKbYgy5IKvy9KkjLcs/IafiIp+1bFbeD3loAs/rPoWSq1y9uz+rSmuBwIwh9SIBkT/C7pHRf7CdI+uaL97WpZvV9cuTsJ2uUs69EVajNiJdQxI8hWIQGoDbS81cprE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9Pxuolm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9Pxuolm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C6BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743176993;
	bh=AFYyCGQfQrcJhVvi30WgctRMWixIct+LAonwsJ3Z0Lo=;
	h=To:Subject:From:Date:From;
	b=n9Pxuolm/VK4D7XUirN5ZMN8kvJX7JihsA757LIZ5rinT8Fh8rLWJz8SGtdLyzniz
	 rj0F/03TL3fARaKMQ54K4YXjiTRqFAmSoic5FitUy4cfg1EfimEcQyDP3j4IESqkgW
	 9hU4U3pQ/ULhYaPMWSCDLmIfmJB15aViVqgYQvbhW2l7NVWhZawlHtiqDMPioLKRAg
	 wzNbFSxf7PDamLu1AJMxr6aYILdT665PDqxE6FnToGZf4w//EVdcW8vaOtriwCyYUm
	 21muuFP5bzfQ0CZoyBrdjYqmR5oddyu8R6AajIGSYmFRecX5OAcjbO/kM/nKQ5Awti
	 9GoSM6ogOeGPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E45C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317699359.1120.2041985229341769997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc10077ce1a2dcac077fc583f8539db8af76fd18e541e84ae34588c5cd2abad
Date: Fri, 28 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743176993
