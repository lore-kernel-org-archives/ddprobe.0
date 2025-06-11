Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2707A19CCFA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749655194; cv=none; b=GkTZODaQt6hKFgdDYgF6Vh3DkB5YeTLej4MTYP5TsysHlWYRiLlC8JUdG1MKg+xCQQRefJ8XK5idphmVDPXiEtXbESM2CruKiALkvKPLYlnvHTYO/ySg7DaLeYwkqglopOcXyzzfDVbuL51IL8FMUgQyyQTTDuUUXUBxdjfcqBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749655194; c=relaxed/simple;
	bh=f7g6QGzn5Ey8WQSuM5qJDbbWq18BJsGYIqq0+JIgNX8=;
	h=To:Subject:From:Message-Id:Date; b=S+LLDFAlE6gQ8qDkhvwfpCV1fP47rplfGXsL5CI9BQCPyRdTrb5DYXdMORt6BnuD9Qaq71TbRoXLwje+NtvCj8Y0IVXSSiBwZZL2TTD7OrXtXPvlrcG89QgZa08dDdqqP+QmOka6nK2GEvBGTIN3N8o7hxfzkMe8W9qBGjxV0Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUC796E3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUC796E3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97015C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749655193;
	bh=f7g6QGzn5Ey8WQSuM5qJDbbWq18BJsGYIqq0+JIgNX8=;
	h=To:Subject:From:Date:From;
	b=CUC796E3tBYQIEQ7pJD7TRy42t8F4s+2Sa1DsVE38iu1ygF0T7tQo3Zwja8tJ35RI
	 AiL7OPTtdS8ml57NPORA6hCj0dFIjdkNOt5byTnGFnMxwhNn2f67s//8/qEgUbLEhu
	 CnAwkuyUN+fhcs8bmeTSG5/N6dMH5Bof5jAICvEcGehwdiKObe1xYxjH47vVhORL3t
	 rC5F3ZNUWNw1OQRijPoFF/6ZNekMBws2eOvPRIJpGNArGKfPwUFUsDXMSXhNfXxxou
	 va57NN1bdhsz598at4Jriw6AptBiZMg1ZNQmmPcpbp9xWSpJxtl/+PDEQpiGD0qwkc
	 SK2hdU9Wdot3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B0C71133
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965519358.28632.257548285671550449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e365c8949fe5b3434848028a427f248070ae409b0a10e45fba61d1f2a83ab9
Date: Wed, 11 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749655193
