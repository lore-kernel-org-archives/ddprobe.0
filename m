Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A85D296BC5
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757671194; cv=none; b=c6z5Bflou/ecmCy3EtBcKjJX0FILmnbxY24p3bkKpBzmM0qGaBpAnCtg6YubOJBsf5KoyKXfnnJP0KXIVBah5mRhoSC3kdSjjetM7mneJb/M+uR2b91tQ6+pQAc5ebDMU6+AmMAClSSR5it1UEZ3lHggCuFZ0efSo3wmyPHuRuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757671194; c=relaxed/simple;
	bh=xUJAU92AfMkuoHNK5ZgzPzD3xo4BLet1kh8pMoxCb/c=;
	h=To:Subject:From:Message-Id:Date; b=jgT6KgWQ6dnOFc0JdQTA2UiYi+8yGiW62WC8xNQKvlZfvmKRDNRoqfG2ovNL05bJlp2GUt49oB3lZkHL6CMiNBU39ZfcfcC7KscKpGT0eRRqW81DTMosGz62SfIe4Tzj5JHg5fcvJhOCl5Y6XqfGz9/ePfhC+AHVXcQVPOlRCzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk1thngf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk1thngf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D841C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757671193;
	bh=xUJAU92AfMkuoHNK5ZgzPzD3xo4BLet1kh8pMoxCb/c=;
	h=To:Subject:From:Date:From;
	b=Zk1thngfeyqsnK0cxGx18hxn5IKvGSL1AAxufyr/t8Mj0ID645jEzk7dRYn6RdhJz
	 dsxEsi+ckcQurB7STT8NdjumnqfWDOxLCeedgYXnX08REDq+nvGY/wZXkqQb8e+IDt
	 iBBNaOH3DnqQI2Ido/t0PJSi0Zo0IJyoEmO/gG/TCyTY2nN24QllTyOridSNITdjBS
	 SAr83Rt0BJatvoGbLcXg8OxnPSZr2H+l1kcTP7bWJ5jUs1BRyNaA87xJNfcaQmDN4W
	 gX2wO3HOufmE4qwi426zcQ/LMG4axzse33pGa0bu/dQ1YyrVwdV4dVx3x8PK/UJpE6
	 oGA43nBVMZMxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F141CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767119357.1478.2389315230648787769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d5b5cc606fe0e33c363977b678ead674cf5a7ea6f7f2d9bc990440dbb4104d
Date: Fri, 12 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757671193
