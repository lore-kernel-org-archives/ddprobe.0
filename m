Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84A8A927
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754375993; cv=none; b=NdNdTRDQBS0m9PK2CpPmQGTUYDZf4SJyPuN+HX8d1c4B489fCDoGfiCf0s1y5FhZ+jY423FjlKz/OfjnR9DgbiO/9ux7ixw6dD9wqHwcZMXUDsgy83f3cbvcNMOsXLFgdA/BmA7OjVqbp+PkpSSk3eLruYxVXwrSAXcmqKPDVZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754375993; c=relaxed/simple;
	bh=92txdN9J6F/dwAxFMMtG7F9cipy7d0n2LS4ANdN0w8E=;
	h=To:Subject:From:Message-Id:Date; b=FWb46WLcP60RxQJ0b3AltNKVhIrT92Igsvb1Ab1ZD5kdvufaZBHqVK2L7HMvVYCV8SpSBXuUJFQuUDmjaa6zkIrZa7HQvGDEbj124TR+FK84zhORsItM2is77KJ7qWKHEqmbCkm6YzgDmJYtvf0I3oxl+x4xwiZ6OSWRo5Q+7ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbtZAvIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbtZAvIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E59EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754375993;
	bh=92txdN9J6F/dwAxFMMtG7F9cipy7d0n2LS4ANdN0w8E=;
	h=To:Subject:From:Date:From;
	b=IbtZAvILvydsOAiQEefkoKwQb4FBadAU37angc4YmcpaiKN6hgXYZU5lQgu0At0AK
	 V7y9rlAxb2fjy3w3gXKqqm5oqZUZJq/5oNm/ACRRc9/3NDIyHm6g/E1ubxYBFuEefU
	 bE5+nN9zFHVY0qka1Zqin/JXJjbkmxEXfXrftdWtgO525d/HfMT8f2N11yqnMd/YsX
	 ToFn18qpLXpHOkihLlt5wKY9RBnqn0bwDGp7LdmikFGCQ7f+AtAAaXBb+zdm4+8+AV
	 E973b2QbUc9oemihJPFwwJQbGLGNqhvqhg2+DeHH8Tc5/774yb27nSnqK45gppkQ97
	 Bz+r3U1rukHdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A0FC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437599358.4958.16046716818690069762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dcff40de74ece78520b2387c3b15d53212a68ce917090230730a86acb06c564
Date: Tue, 05 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754375993
