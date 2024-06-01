Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78DE822081
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717241063; cv=none; b=n+UnWV0MBI60mq54McKYDhPlNyiwAnGElfpK6nerPPeVpau56mH+UK8JcVZ5/mD4T7HnW/qr+DgSUMm/oQpyG+l6Wi3wI45zo7GgtP7wrigorpTEveRvdJBc+Dp9iqF5WsgdqeAWutRz19/lNR5xzFVeTx5In6bL93UwinTocxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717241063; c=relaxed/simple;
	bh=HXYaYaJEjGZUsCG45j2HoNDAkcCBLfqrRM3cSk9JEsk=;
	h=To:Subject:From:Message-Id:Date; b=NLC+wfoEY2N7C9+jBYvo/owwerJ90MNK1YzBuDnwReg//DOaAnGiAJWFn/qrdL14owoo6ThDEnVwuCjeay7SgiqVYBm8kagak1pij+8xrvyq/0YqoxgKZ5dZkXngQEOdIfxtotjHjyoEsbR7zQMQ4gIovsp5IgUFRaHEWE7qvtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nchUG5q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nchUG5q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1140FC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717241063;
	bh=HXYaYaJEjGZUsCG45j2HoNDAkcCBLfqrRM3cSk9JEsk=;
	h=To:Subject:From:Date:From;
	b=nchUG5q+kK7himYw/VhejHRQ2PuuUU4IZGLOO0qEBAioN4wSZGXHYnZm6F4ky+Cwe
	 kjTwA/SRJMD4ovwmCjPnAZMSe4+alHf3fsq84ycdCIvp3tBtVTzD9Aunl1oJpR7rWZ
	 zKpF6g+84MaHRHxxsVEtBjogGBUaZH618NpoYDUd+bYXt5CO9bSC7m/4GJLsTB+g7C
	 FbWQng2E5ebrXkclewbdlRFtj/fKT24rPtJoOD4S0jW2Zh5B4yUmxeg5Fa6YBJ02Xa
	 /rZCRVv+JqEbRfJwgd8YuP7l3uGYAuHwv3p30fE3ElhyF41wpztMZvk2tP/EKppOxr
	 zx6wLbYTz8bWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0AE1C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724106287.13130.7536399826912560342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e622a0ab06e85ad516f2b4eb3a6a9647d9c7a70f062725083f969e781e6a7b
Date: Sat, 01 Jun 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717241062
