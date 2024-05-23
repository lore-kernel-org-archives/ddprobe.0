Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8F026AC6
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 11:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716462803; cv=none; b=S+LV5Qz/cbP+OnQ9SAK0bvyQjeLllDfSuPX92GxPVN1tKjfwLU0xdQWOD41kBHtBuzS1eBT1rd/XT30syk5BejrtoAh3R7U1f2Z9Dmdv00jr3+UQasSZTeQxM93wU0OTJBD1IbKAVim4GYpivSb0AeeNL4vfJcFXygnHh1vAOG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716462803; c=relaxed/simple;
	bh=dnTZM7DtGUutxV6UrwQHDb0Rbwnp9oRs0CvKeRcszYI=;
	h=To:Subject:From:Message-Id:Date; b=p8h52/13UbwOoEfV8tKiT3+lJv3G93GZiaHCuPRVok0sGLsz6fofF7JmcTFsQhvtiltDT2kJT0hbKeS+d6UO50wJARU01FimvJ1/eD4wSJMg5IhyxF/TfpJ5jllARyBBEvogpPjanx6MMMi3NpCLeu0SXn0f14rWHTFx94q1rGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBcdEwkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBcdEwkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E23C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 11:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716462802;
	bh=dnTZM7DtGUutxV6UrwQHDb0Rbwnp9oRs0CvKeRcszYI=;
	h=To:Subject:From:Date:From;
	b=vBcdEwkr8yGI1z8eSqS2lhc6o78hQbFNQnSPM6J330fuTtHDr6v+7Rvlzo5bdl9qF
	 8HUIisvE+DG78VW9A95Frx831kKUVCVPiN4PZzVfui4W0j9GyEJMsjS8R5ouVBVpHB
	 Ln2ryjE60UQSnJ3ngRVNgVQy0dawpzn/acfJXBc1mCbCZPjddC0tJfr4TzFsWuctzk
	 uJzq8LeB/tGVTkpya6KjPZELd2KPHiwyMD29pylBcSQV1lYdJsDyW/kexrP/jBSfAa
	 R3gnBd2VvJVAtNN6+TXlpOMjX5iLF6D36KFuJTJIrlqMmlNk4MmMve9nkX9FwdXiTg
	 T8jPwMVAWIlYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E0AC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 11:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171646280281.11906.13491250603315803623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9836111539302fc828fdf6a5afb423540d1605cabb3cc813d61c1309b715ab4d
Date: Thu, 23 May 2024 11:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716462802
