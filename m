Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F55A190079
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718354303; cv=none; b=PVrg0y3zRd5ZnXJeBoWnjMqmzPzEv10Svs1oijWQI04qzCyowAqigLmSqcH9+aamJPUUZbOz331dqYaFZqQaLz5LUB6eVsezngu8LK6dXYnybmIOMm7zzqs3FE2fxfWRlXup0QEf2OsBKF3ertY/l1cG8MCLAT39nzy2NtcCQWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718354303; c=relaxed/simple;
	bh=5+pCD9mZF1RHb+o6+DbC/h5amE3AgYb0wG4ZavJQVnc=;
	h=To:Subject:From:Message-Id:Date; b=bSTu5Z4WAndvgtoV2je4A1dY3dO/RggfVsv8pQox9OWD2UmDJpoWJdlV9JnIM2OTlqqumtHAPrKgxg3CMUb0Ba+qMqDLvU7mGmvPZtnPNLbEy31NJmJA34+HlC56GhXQQfKnFhBscQzH9EsL8lyWAabM4SQxodwoSg2gVtW4qD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Odk+NWk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Odk+NWk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81F2C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718354302;
	bh=5+pCD9mZF1RHb+o6+DbC/h5amE3AgYb0wG4ZavJQVnc=;
	h=To:Subject:From:Date:From;
	b=Odk+NWk16plbLSSK9RDo1HW9tCPync9pHYEZ++ejGho+lvrj7xy5kYS8rv3ag24q0
	 zmKHfGgotmkbING6yzYz1bgrTDtE498rshiGQC/+reAAapfDATPhjfjx6+QUzbONF3
	 mQhihflWC2OPShgjBOrpSRptjCLL4FmUH/68OBPnaAcjmAn7bfmXRlt6g6CLEV/0ow
	 D0b1jtb4kSPAjYKqioBtyTFd9R26DuQBlMYgybnShyGGHD4rTMhfLd2KuRs6F8Uj4i
	 tpAz9NkodeGxk9qP34C61+v0xWHxYrfrjWghlz+/9+ybvXGtOpAL0r73YKjBNjwSZ0
	 bh1uxlgLCGYvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD5CC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835430277.6833.4403932949860604290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570e85713cb0f461d16292ea8aaf4b184f2f915f14f1cfa411b6b2629eed5cec
Date: Fri, 14 Jun 2024 08:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718354302
