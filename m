Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F121A5A115
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711399697; cv=none; b=Z6fqK5/VcaAHtNx0upOEzyOs7bZmc7SkpYaaBmE9xFGgreAs74aFRQTwv54gTQMwEAJTP2T5A50nXjQE3CwVysNn5qS8qGTFMCNbUYZ6fcolVLcYjTPjGI46OZ694tzmAw0uRmkcq/UnRmY6poz4JoFSDPLEHNEhMaq8L6WK9Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711399697; c=relaxed/simple;
	bh=POkD0pmm1mi76ftLUPRZqMIg943ePYfl8yjR6DGdcSc=;
	h=To:Subject:From:Message-Id:Date; b=TExDUFt7d70mdv7gWB+ZPjdzojrYfGFnJ0j5qYA2owxFhwr/iQdMDFsnO1OZ4a5LabnkbuVCQhgOY58al0NVCJuXTgo+vbrgl1sTFnzE2nR6QOgw8zLSTYfIsDiAHdmoigXRBD1QLkjvImF1rpqc0kGBj7fIeBeWSlurchwOceY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSc5QcDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSc5QcDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737A5C433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711399696;
	bh=POkD0pmm1mi76ftLUPRZqMIg943ePYfl8yjR6DGdcSc=;
	h=To:Subject:From:Date:From;
	b=nSc5QcDKKu0U9RKOE6lpAaDlM1tTsf6EUAAC8wiTJMEJHBV2guO4cymwMmAE4pTbg
	 jydEwHYS/NuxpFmuOIlEZODwEIjWEoXy5BB7zMfJ441ig+WWBYDYgBziaexsOS151O
	 nYZO2Ij62jNfgjY5lpMFt3hTaJ+drMr3HjFrCsPBundvFTcE6lVdpQdMBWodx3XwgA
	 qdV+PCjcZ/LJRo1rP1A+9Sx9eoX8sy/H2E8Vki7EIItTJA2E2KC3hp1EmYmdgjpIJN
	 2UjRuwGXsxndjpFMOZKej/Q5SPpcrlUl1ZFyx8X/Spsq0dZ6tOdE67ccJPatrjDJKo
	 mRW3U9/e7833A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EA7C54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171139969638.29017.1433365237493552574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422b9e30e75ce42cad7aa0578d12e910d1008e7fafa95e13833eb8197ef6a9d9
Date: Mon, 25 Mar 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711399696
