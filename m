Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF59720E718
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736517353; cv=none; b=IJGCM9p456baKz30xpCdN/g08gMSGijVME62f38LqtnbBNH1Syig9jgenAuX+TgDp+vuPNBxHwMVnfiMPpPtplLL1iaiYnA3EwmPi8XKRAKZ9qCzILmUsOHOSrI+kgcf/y8UCBZuMU82PFCWQ3klgBR/SuTgsUtC33GY5carbvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736517353; c=relaxed/simple;
	bh=Hfyq4UVM1JBNcZ2lMZFThBkJAcfzTFdXIDRa5u2SIc8=;
	h=To:Subject:From:Message-Id:Date; b=brDqiJrqareGtIJEytzPS0JCcJ9MWLUbDZD6CCJbmLbh4qmhJo2XbZ6M92Hm0D/U6x5vWTD/PCwr+6Zz7+Y+jV0ug7w11FIqLHZeYAw8JTBX/+X1k4ct5jBQrnEjvZlorM+X957gOJKchnSym8yYO/vDp/3KVb2BfqD7/PnpIv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iM0NzbmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iM0NzbmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0331C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736517353;
	bh=Hfyq4UVM1JBNcZ2lMZFThBkJAcfzTFdXIDRa5u2SIc8=;
	h=To:Subject:From:Date:From;
	b=iM0NzbmUoYbrqTQe/E6Ip3YsbnrtONh3qNWQzx39Y+iOcagkQVpRpdce9h4TU7XEf
	 5tOrMbT2rLDmt3/CIPOmHKfoCZB9s0FY/1H7ISr492aelUYY3xo5Kcd9U/mB+KrWPV
	 uYLaS92d6O0ykwtFjBmmLCEePPkcPw82WdsTv6NZpT3mA4rtXSTIqlTzSo/ALi2a3/
	 +mo4H81v1VhfX8wMm8o6LWn2aEucoYke/ED0BsalThHR086S3IUCMsWuTJ7EOXbq1v
	 hgMAXs+LO9/DQa2wbcsWpu5UDbS5VUXqKGG4bjSxtVvL3w5s9eDWkFa31ou1Jl44RQ
	 F9W3zUgPJedFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A096FE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651735364.7148.1134226669251106109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995fd3ec0b583463f7ae6e13d8b9126bb491e12e4dedc93c09e66ed36b531f11
Date: Fri, 10 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736517353
