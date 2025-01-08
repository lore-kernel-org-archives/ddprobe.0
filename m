Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC6D15852E
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736364954; cv=none; b=lmA4jDR+cgTLnF/CtpUMBpCmbi9JYyVg3J5IylMrVo1PY6rMWMF0mw5ab4xgVW+F6w7zWc6/fYsnlm6LGK2g7Z5rYFc5dFKEE2YtD5aiihhes+gjnIHGxMLJJCa+6UgNRxJ1FbdQc+2mvV0NTUk0H/edTq7PtGlxxCofj5reK8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736364954; c=relaxed/simple;
	bh=RxGV3kz93COwYh6mwhSe1gmvE09GsYg+lnJw/H6s4ak=;
	h=To:Subject:From:Message-Id:Date; b=KAG0TVwjfk4UAw++lxKZnPhcZN5lwf0/4Wnj7Bs8PoDOiIePXkkPYsTa6Z8FakSgGTH4K51T/vyrvREcaKgXN+wA8oho1E7jwoI/Lgc4DrWS92csdPokU9F0lmHiEImUXDfzd/MWfY8DiG6hFM/KcOkh6RFobOgmEBe6/jeENN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jr9cyZKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jr9cyZKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC41C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736364953;
	bh=RxGV3kz93COwYh6mwhSe1gmvE09GsYg+lnJw/H6s4ak=;
	h=To:Subject:From:Date:From;
	b=jr9cyZKTb9yRLACOz64rq1uRJqXjHQnkY6VS+ihB7nAMeoN4IxLx15//pFvBMSqe+
	 nw8MfgLHoiut3ALoVbQTPI5O2sqCuSXe91QW+gH7fC4ZATGmM7h/gHiyzNTfBEyC06
	 /cMH+q8ddkC5h3hmmXiPFKRz734nj9CRV2M79zVDYvFUl4A1Sldisshy/WAqflma7A
	 JVmSg1MIB8rDLMC3WgRBwVPxpnZqZX0afWnJ6bUA6a9D8GWVn8jiplrWk/u+/p5sZ9
	 gHGjXuBUiYpnNO3q6V+7IWZHOX1IUa0JSv56i0AF81ibvDbvaGhfpwEXJy3XhKhvBW
	 5H8rta7SV4gqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90954E77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636495358.20007.10505857437730475869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db2aae5cfcbaa6869fca480c59702aa74d60e88ac9b22982178af2088f358ea
Date: Wed, 08 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736364953
