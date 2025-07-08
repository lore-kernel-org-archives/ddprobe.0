Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B13259CA5
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751958594; cv=none; b=e6vd44+pHnhVjlEzd7o1xw+TjQYlcnfOYGCuikE1WYeyTeMg8Ybil0npvs/y8uVDLuEnzwFIp6cnPbmGP8bn5XBxlF22mN+5iToRCB4KZwnQ8bI+13aBBDjNcwx5J25ZAhTCm7LmRUQZoXAM26M/O56D/EzXrzT+GTMJPyKYS0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751958594; c=relaxed/simple;
	bh=GZL2MT8ix27g+NgOe2AcyuC6xdwlNH/JSfjXQp9suME=;
	h=To:Subject:From:Message-Id:Date; b=BbcRCehnS41/UC6J2fIpIDY7A1wGxtcFFntaV05UEtoS84NPWiyD0YRD2wTjxEQaDbJOWLammqJ6i7qFOET9YEdxiWPAP/ykExplNHkRmkX1jBEZUN2dt5swxTIEHBFry6HHv9xEsbErg89qytttDZUYDHoTgtULganrmovQoj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IL6otebj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IL6otebj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A176CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751958593;
	bh=GZL2MT8ix27g+NgOe2AcyuC6xdwlNH/JSfjXQp9suME=;
	h=To:Subject:From:Date:From;
	b=IL6otebjIbWs59IGD0doqGs33Z4YFUAUlLYXhlxmQBwHGQK9YhW8EcO46HpEAV4FG
	 1Y6IPVZywzIpwGT5O/79mHi2SHjC/RkOtUM2SPgr1Wi0zhOoKaMYELbILIMFFKTtQB
	 ias2oQAjV9JJ1ZoIPSKJxLwCtlJeqUrqrbRP0IaZbrhHgxVulxOxH27VqRhBdie8YK
	 hjTYiXzff7BWeoEeF5VMavcj7/e/nGLCo/O8uYGMbwgmygBBQzWUApOun7k2+WOYlC
	 kpmUYZ8cySaU+30iGqC1ZJ2XuiwgWwX9vbT8aGXYIqDmqmr76DpnAZWM9qlAW2gDPy
	 2msIB+wwe8+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908AFC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195859358.18947.10708199572374211868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6442ae6e100c6403794f4a0fc2bb13ad26c27c72f6c888154fd7e758799b8414
Date: Tue, 08 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751958593
