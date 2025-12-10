Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44688192D97
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765390374; cv=none; b=tb2rdO0JgTUky+tGSRuz75zJBEiknv3QUy4GWh+leBE6nENBM/TBVZAonzOfdch1iwfmx1qWT/RvX9wONYb8zXUn1ktKav+pQCnszlEqs3uuwHG1leoQWCfI6G70Bm5i9ztYj+NH7bc8UwOvq0nAgh8ER8GOjFO1PCsjp5pE1k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765390374; c=relaxed/simple;
	bh=fHHP1bV/eNgS9UFH10ke5AAtvfEVf1jXkhEbYjOFolE=;
	h=To:Subject:From:Message-Id:Date; b=jdZFQsNHVaWR7ZUpChT2QxaCGfIMvMfQhWMn1MxefVW3jDMkVc8Sfkywm9pYqTzv9exdkYokObEeWRFFVcOET0KnR14RDz7VUYOnGv8lG3+cAfFWnDom0n8ghirLgsM548DVZaIpKCAqe12c7JmMZBaFgZ0+/iXU91cA+pRxNEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qad75l9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qad75l9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ADAC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765390373;
	bh=fHHP1bV/eNgS9UFH10ke5AAtvfEVf1jXkhEbYjOFolE=;
	h=To:Subject:From:Date:From;
	b=qad75l9GsnaJ+CxqfO0U5ibrxZRnc/jCm9/lfF+heU7vesV698XQ/d7ANzs9OGezm
	 /v5xmzMFaMUm4pkC3o4XllV/qeCu2G2cbq4xWT4XJ8JqxmhN4pibzeBTYehvm+yLsL
	 oiWe/O5qy1LcSRSvB9xgGnopsT4GaehA4qRFWzm+RjlZPyKwccMThALtSoK8uASMds
	 h7PjuZdQwe0FxWtR9Bx4xy5jGhmTtV5ibMV78++9PiPYtgtL9+1D9ZNS9LxV+1SSfC
	 LujjgQF8wVAStb8NXQ/qOOkVCS/YYSmOEJvOPVYNIqbfbCiX7CvgWo7cEceGVIDiR9
	 m7rAWyNbQ42Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91217D3E76C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539037358.26885.11802231742180680698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc0ce312888782a691ff718b616ae994ea7ccbdbd68b9bd73aad485f129fa28
Date: Wed, 10 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765390373
