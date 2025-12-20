Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8E1201004
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766253833; cv=none; b=Cbcf5TidmucLaaW/4po/UYjmvBpNNNRFrmyOqmKGJw1phtJKfWB/tUYA7GZs08U1i1zY1f69kiNo+tlUZznGavEY0eQoifMtHOBJf3QhSTXSepefgMg2ML+mt68TSxdAkumY0OVEORqBNjNKZaDnm1RWq+o//L+xWXLXm/sBgMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766253833; c=relaxed/simple;
	bh=0vv/CXTA7RZbZODG5wLmSxgTnuyz45X9Hcgq/N4RAvs=;
	h=To:Subject:From:Message-Id:Date; b=S012wmwRpGRg18M6ArmHxvnOolxg1Wk9WOn2xIAa9XBkbRX4RHCcLDqyvnFRHjFfpWTACWY01texTO6cU0Tukf3TsR3zddIrZeX2OiFRUujDAzmhbmKcXTJL6+SUJhmQYa8IjIPEZfLFgG5KNmzyKRYDxBfvLZD5c6pjbtUJVMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haS3gZdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haS3gZdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A203DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766253833;
	bh=0vv/CXTA7RZbZODG5wLmSxgTnuyz45X9Hcgq/N4RAvs=;
	h=To:Subject:From:Date:From;
	b=haS3gZdFXl04AQlnlNpZNO74PCdDyFOZxDuFwOI73Vqc6Q8mK2NqNh5ULSX6GFHoO
	 lqp2dAqXc/oNHmy9QxKmfpnLAzvYwW19zagsbqjCch8ZAlkWhnW2GrP+U+6pLS3G9P
	 sBxJS1z/XX5YZUxDxrCC7dqc4azJCp19FKoJd9+lyRy/vWLr3FU0cmCH4fguBUwX9q
	 5o9qFfJ5lCmJZxknONATt7q9WTWiXPBnIIwfv5omTlSuyAbiUPSajeySkMqZy7GWjJ
	 VDmHlXXtGVxELhleS2B2wFnUm/Ww0yliYrMEF5JZ+hLaIsrXnnR0aurJdmKmg7jxYR
	 bPjsoUnaX/Smw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94250E668B8
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625383359.25439.9942192011724128562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d312363584eccf1be93f65a31c03e4e54f739c0cd5b909a69106df94fcc3a66
Date: Sat, 20 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766253833
