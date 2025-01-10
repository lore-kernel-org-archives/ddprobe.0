Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CFEBA33
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736476554; cv=none; b=hQNCbHJU+DL2nhMtdnw1prfw01thCqzcqKCVzFG9B86brH5725pLDATmrIN37iEhTpbfy/ygr/zTRnUM44jhZbmbEJAanBbqa/KS4VYkbWT8YOPjMPSsk+wOwH3B9Ngn3s7/p+neWh7C0adjnS4agxMQMbzCJRS0m2KrT2Uu9Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736476554; c=relaxed/simple;
	bh=plqT83UpDPJvDhItmaU3xiPms1eUoDz0P0DFdIr4tFY=;
	h=To:Subject:From:Message-Id:Date; b=Xnw7d/xXDPSckPbKbp/xPbJRF3B7MVBad1VcbqCOFOyIV7oVmvHXNMwMTktoW5ZLHBHuV0JUwlgq5LCrhtjNjalrFrp3B+wXVM5t0MfHPxd/WkR8MH34QFQy/gQh295VrvvmBcNnyPV3oAw6c05fVDza2W6ULKm/p6yeHrFuSKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlErw+sD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlErw+sD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF443C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736476553;
	bh=plqT83UpDPJvDhItmaU3xiPms1eUoDz0P0DFdIr4tFY=;
	h=To:Subject:From:Date:From;
	b=PlErw+sDLTTHxYyinP1X4lGbqZVFq8mTZfsQzGIQQHIb/SrpMKG7DX6gv1gDpuFgh
	 59qWYQLAKqGNyCSyxv4ehO2eTzE4p9VIy0SNm2rZXFM2V2lprd+HsEQNjKsY0gi+R8
	 QUKYcah825nh7PO/L9O8/FM4tJb44KMEfFIY+7OlSsaiyzajkTApghH9HOSLS4+Nrh
	 ikJVwGVprjnU/eakWhcS8iCqmr+zdskce4E2BEEBkuiFjNgg9b+va3xrKluOLjNI5Z
	 kIjG1kgrIncgS7m2lUmJ3pVHK8EU20rJm1qXkHYZdkZrFi6dfS62rwqmAL7wTfPZKp
	 2lZFjKqyJzbYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98651E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647655359.31428.14953677838529978939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a787134ce40056a7e414d63d0962eff470d8ea10391fde93fb88f39b69556e
Date: Fri, 10 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736476553
