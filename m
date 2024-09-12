Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F023D556
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726153554; cv=none; b=FF3T7eMn+pZT+LENqaMPa+84no+eiMnArnny5xav6Bquq3kNkxomGTWk8POjhThkBmM8wQ6cbVMsrhiQRRe10GypZ7lSeCDXGjJJO2Qix7gCZu89mhO0/kfZEyqPqwPh92Rt3ZJ0yfBhu5WlkKBkkBxECVn8AMD4E44dFWt9p7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726153554; c=relaxed/simple;
	bh=NvxDBmKH2qIEAZzs9A1DgHvirQx8fZ+dm7aDFBAMom0=;
	h=To:Subject:From:Message-Id:Date; b=oVROQ8X0eyqebn1FEZDrbUuTpilOb+eleInb8YKPMj90aqox0fNTU63aO72P22bT6Vtz/A7OLTATrpQZP5ryaA34F5bnpteonBm6BKVX1f6Amew4h/2276crkvCsguDXBRTBe4d+NX79dvv4XEDJY8lgmkpQZCIiAB7NygLZno8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKBGgSVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKBGgSVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A948EC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726153553;
	bh=NvxDBmKH2qIEAZzs9A1DgHvirQx8fZ+dm7aDFBAMom0=;
	h=To:Subject:From:Date:From;
	b=RKBGgSVk/9j1sX2/MBQHiYRXP0bSQYyEkHlLHFzppSPIXJfVWtoqFnyPsMSgvjlSY
	 EQngqR9b76pH496+ruVl2qmioT1kA8y/83rzJPkfi+Uo302p1pp7n9E/67cosohgTP
	 WwBCtpb2+m5Sgq3Ui/96DSvYr0kcRiiLye28zgumk4waZKr/3g+Y0mpXEbQzZdE6C6
	 l+krwJZiDKiqOr+2rrzfWg6rU+ZMs8GQ4UfEINKKJNb1uv6ZPrK0jsBsICTQ1cG5iT
	 xL5WDvZv7cJP4lb3mPlYPrViX+c82TAAQb0oFYpJe0LsdUKy2cQ7KzHncYFNMtRGWB
	 xLPDe1l8z4qDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E96EED613
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172615355360.29474.18359586385053145276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b399478e5f26b2af7e256fab2189f6e602aa71ae5c5d3af0ccac608adaad469
Date: Thu, 12 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726153553
