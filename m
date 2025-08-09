Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE61221D94
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754699993; cv=none; b=GrrhSwrvmnD7uzyL2GNPmeFN1MbDdYYGRDZ1VjQU5dpfuhZpl0YXWYzmedoDjqlpq4iorAO9aEcJO8xUezlSEM/dv/rJTiiCW/8hHIA5FamcISzZI9s5JkRYf+ReqvhzF2B+tpXz1N8K583sMxt9XiBbmDSCGTvKLRGOZf14SO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754699993; c=relaxed/simple;
	bh=edLIWwdhn770VRgLOROFCytzv1CjAkhelnk/mGiK5S4=;
	h=To:Subject:From:Message-Id:Date; b=aRQvnMJG/4YUTS3dWSxzbap7UwLQ+dJe575QHqBIGOxlOXirmcGI9vE+7lO/MgzJprKHGa4dAjP2/i8+36jvnOD5GJD+OEIp8HiBJSFbXjSPAbPbMamArsVqDNuikQr2G5yXxbIDvwsWIJYRY5FSlf/BOEaDSO8Q3NyHPxEoPNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVWlIGqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVWlIGqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1F9C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754699993;
	bh=edLIWwdhn770VRgLOROFCytzv1CjAkhelnk/mGiK5S4=;
	h=To:Subject:From:Date:From;
	b=JVWlIGqRpRnTDhf9SiqdykP43TrzmzpIQHFd48OvO9ZdGbD8LD+lZYX5zrJXhYQ0E
	 6NNZ7pvot9jRePeu3BD5qqQKIk7KQlptreVvtabX6kWmo6DLg7scqQM5NyIoKza+q+
	 mBmj85sWR1xKSDOcHxnpv0uHgFoiRDuT0vMgH4i1fiVVW5EFTN0o/Xv4X3Y6ffm+oF
	 eJ3Z8Q/ChIyiDfY2uZGFRNnlrugl4vkTRUjgog4Llr/pyJLY0Gm4ikgaCMgGtjJ8Pe
	 xuBYFBFBgm4MejjFRBOR51CYP05CYX4/1pOCJbpy344TVzDQMWI12bMaWq5eotq/SU
	 UibthqGRVufgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F165C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469999357.13968.13424268721165288737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1fc6fd48b2649a5a6cc8912c74a9974767d423f0fa5144c7f0593373025c33
Date: Sat, 09 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754699993
