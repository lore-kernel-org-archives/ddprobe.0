Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160602309AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731460554; cv=none; b=jCh4V6JE5J6q0CTwbc070MPgrr0o2DnyuPN8xQyANxPm3FFHsifaOWJE/hT1GljZQ4vGaCxxfxdZ2lDo/D60ZIpeypDRxyunKPtvhnYd0mqSnt1lRuiXb/i7TXDhP4M80zCiD6Z/tSb6pmm4vZURVYV+4nNEJKCRQQURchrpYCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731460554; c=relaxed/simple;
	bh=qUjDGIsRK8HcOwIm2ChkoBpc4vHAAkbq/1esAVZox/k=;
	h=To:Subject:From:Message-Id:Date; b=CmXRglAUPqs2i2o2RNtbtFdhat3cdTDshSPZcCGxS1VmRbRB2qVwF9sYoKZHnHDhxYwrW+G5m5dSzJgFr6sqmdWjprtdvjvQ34SFq8WSTiRh1KYyTjsPXnZzV9VfyIuapfmHvb6B6IUHMGyXj7tFu5Xa4FYR8gJ8VG1Zn+Rvjd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+6jx+dP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+6jx+dP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FDFC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731460553;
	bh=qUjDGIsRK8HcOwIm2ChkoBpc4vHAAkbq/1esAVZox/k=;
	h=To:Subject:From:Date:From;
	b=U+6jx+dPtVBSWjzxRBgDf3HKWfoxPKwKlhBkOaMvIQy/NrgKJza3qLli/jL9Ek65v
	 B/0Gghze9F4qiotq8fnUhJjK8LZ7sz28rxpIieA0E/7A/PpEm54MdEs4rEEiMxPbJC
	 GvATG1aoK/bzl6WuRr832f08CmYjqoU0tH2s5mKBmeqHpe9pmOnJ6WMaTY+wQXM20k
	 8SgzwVuw79gjcNCRDQVRBnjS/OKNnK0vMgfpZm/LOTjTo+mJPqv7srd1vSuQGgRsdQ
	 1q0zCnA3hVf+7pYzStVz6X1oliu9eKsQn0ScQzKdsW+1P68IAAb7Cr3/9QQZH1n9Bh
	 qI9+ld2wM2zsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926D7D597C2
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173146055359.23380.6538641848726263961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0335ba3ddfc6fffe2a547323e291258bbead864a576ed818fa8ab94d493855ae
Date: Wed, 13 Nov 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731460553
