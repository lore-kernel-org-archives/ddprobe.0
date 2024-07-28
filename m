Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A671A269
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722164754; cv=none; b=mYH0SjNvwEbpljdEHRzg2MFw7cVV2GAq7o2nljAhdfUD4OBuNoI5nDhuN2x53pVGR4yzQWLogUD+H7Gm0uS7Ldev7AKancr7G4WBoDcnYvc7EInaaY+rou/CvjBESCOK59s/fd3T981HAvr0oOf5DRPj8c6ArbGRtQdSXY0XZM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722164754; c=relaxed/simple;
	bh=cUJdDgea0lwKGuDpRofbLEo0VMK4exmqwyTdpVv61UY=;
	h=To:Subject:From:Message-Id:Date; b=psiZ645GyM4b48Yz62lotLTquFCXJwKVoqVNcYK77E1XvswOTcWGNDEbSseH6Co/YsjOgq/0KZi/NOIqn+Nscd8FGzScfr1fYrOEQ1yaRnrvtrJVQIZOFoEcOMRbNWR3bNudyAqYtnSA75k9ASMH3Je89Fte4bZ85J/YNH61ETU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQSBf/8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQSBf/8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B0FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722164753;
	bh=cUJdDgea0lwKGuDpRofbLEo0VMK4exmqwyTdpVv61UY=;
	h=To:Subject:From:Date:From;
	b=JQSBf/8MSC7ZxxgELizka/lxTG71+cD97zoEasjUjguJb7gmMVEIp8iL4PqIgEFG7
	 qpnRYtuJmfOtS0DksIMFHoORFPlI1JJI4bAnMKRhr3pnhy5IrMu887FgfOqmWnR2MZ
	 8pL7CMVj1KZYuaMLcs1e4rb8rqZIhFbe7Dzd4Vuu0/gi4dDyYaqdPE/nABa7CTXDZu
	 3afY4f8x8RYjaA7MAXgSCsehCPqfdwKZKXc8d2L8i10wTb03xgH8BomirLwQHf1XlS
	 OahPegS/c0Z1Vdc+j+5erVsT/GDq3HMnm3wA9OoqPUkrNsPQH+Tq5uNTjXZIj7yUIr
	 vxlwxZq4+Sk/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FD0C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172216475362.26441.1080299583178870895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf764e34c99f064629cb33edd67b75b82ed4f89f8584bfad01ab4239bdf52af
Date: Sun, 28 Jul 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722164753
