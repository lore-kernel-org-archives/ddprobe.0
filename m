Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BACF1C5489
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754328594; cv=none; b=lqj08PTlzLNJjz7ZyeyIAzsp3Ss4OYxc52yuKMdknjSBo+0hzc+nhrXIFIeO+W0BFRHDEJgI3eFr+SQAMOycPKBL1/Z2YWMpBnNvmCJKcmut7dczaJA/FL1zAnj8Ku9bn1dOYwfF66AcnWhkK20kOob4MhUjwrPyYjCxobSBq/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754328594; c=relaxed/simple;
	bh=bh0RQ8kekLWI2amdiFhxHGrDR/6lyZFqijBtHrjeZfw=;
	h=To:Subject:From:Message-Id:Date; b=EWlAyf0pJMu9zaUBL4a4TG7J01QwVN60ZB1iAmHQ2fOAQW1lk3zXY7kMVjmrarCWIYF3D8DZc/vV+3X0xbuHef0U915qUBRyxqMWF+W0wfDRg/qPofVN8xIKwuPyl2Mmy3ModRUC8wD8l9N6JUmU/sqNzPxqVmqLkuXf/g909Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGCOqjHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGCOqjHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754328593;
	bh=bh0RQ8kekLWI2amdiFhxHGrDR/6lyZFqijBtHrjeZfw=;
	h=To:Subject:From:Date:From;
	b=fGCOqjHbcWXauaTfoglMau1lf9e7zZwhT3I+IjG/z2kq3L7JQQfzi2z3uAXS/Bb2P
	 aX3uGAWJqmNcbr/tXfNgMhYEJdFs4w+NZcVs8eVVg/zMi26DdGmLCu66Aru+zn+DEu
	 zkTJ/pA/JLDC9k/RTdbrTTZ/+89RJjZZiBs96rf3GalRDam8SZpyVNKlxQiWxQYlTz
	 Gnvy3KWN2pWYd3HxlbUGiKoX+gikTFB4f4NbaABnNWrmRVAzcchhg7z+gZxHE+QOU8
	 0kgd3DaUR5z+Ocyrm1Vp0Rcf9+/Ed+6b7uMo0Ol4SCbW4sxmZhBn9ubw1UTacW0uus
	 M8OYNT52qyVSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F2DC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432859357.11067.8238623413460820358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0363c6abcc525d840682d8bd4e8fd7c9255d3cf763cd1cc9c362c8da4b7ed7ff
Date: Mon, 04 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754328593
