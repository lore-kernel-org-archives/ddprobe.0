Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0284D2773FC
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759211394; cv=none; b=FMFr9+LGpo0iVwp5Lk2cxSF7uUobOKJ6IvgvjRhHF+kSCmrOXCY2vDXgsXxkIALibw59sbaShAwxdlMpRijyHEXiiMzjUUfFLwfW7O2/3o8TQ/KhZsEre7RonsyavmWLu0zqekNlsh0rjB8642hTVRSiClQzq8b6s2IeFh42rX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759211394; c=relaxed/simple;
	bh=Y0qagY9UkA57LreHjoIQmlFAUdQsss56vDT44gytdRk=;
	h=To:Subject:From:Message-Id:Date; b=ZusbRzodXNVkC630iGAWCyUio2xflhWWbvkM5qjeKwU5WkeZuv8e+PZSfRClWyfdngwPvYKMKfDTcAYV2th+pXJQ4TuOi0i1OnkNIMUL/HeBhSJHXRh1XGwLdvc5oQnX5pLJce1cLGi+UI9dCklEZZUIPHTbOHyEJwGaZRUQeVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2DpKXCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2DpKXCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6A8C116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759211393;
	bh=Y0qagY9UkA57LreHjoIQmlFAUdQsss56vDT44gytdRk=;
	h=To:Subject:From:Date:From;
	b=A2DpKXCX4yagRjD0suSpFw5K+o7spMMkm41/9JaH0qQwjO7CTxBZRortrki3mFz93
	 JZtv/zzqh+CCfzyhA/nijW3t4+vh4ZppVpPxsRZx49ASBwqVCbGUNevTUdOnSVj4dU
	 AUzwsk32PNU+DFIXPlBhss+OMR/ZDDZpaSPudV0iBM4MRVIaIDXqzbRmKoCmWwd+pk
	 eoCxKxzYFLhmCnLAtJu63RgmsoTLmYUG/N9c/8LWmCb7qDd+Y9Q5fD2p8CHcYuxJQX
	 pOkWIKuJy4Y5wF0z4swFIXjTU/37gK5TC+3JJtk7t8CqGiP+81jB6FWINqxbLTQ6VI
	 DgzbYJCPzdSnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF47CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921139358.5543.8041633106543854321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c471ed5959ffe665cdab4ac9857207318d1a669c16759860917aa1e4a60b03e3
Date: Tue, 30 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759211393
