Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF2C32ED27
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761237594; cv=none; b=pmlLZVKN7ynyocr+SGvOHsausXFnkerkNe3fdOrKQYMf29WskJjbYRKCRXSJ/jKUcPK/kGi1N+qZ+w/rKGz3wp/o/He5EhNoGilCfkS58IhT/W2qPibS2eRvGMwRSqyVPfF2Q8nK9hT6+396auaaBlMf+eODvGlMmXTdwZ/uKSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761237594; c=relaxed/simple;
	bh=uFfu+Z6JyHLQuMWz5EZ7l0cUiuRUgbmfPnrghihsY1w=;
	h=To:Subject:From:Message-Id:Date; b=fVOzBtjyGD97smAPkLQ6jZooadP19zcN82y5NPheSMDGeUCJCtoHW2Rd8jU2JsLCF7T+z7Wd0iH97O8vCE2+NZRIbD8kq8bqkdkca2vfVcW/3SeIWXUPS2+esJ4cRnP43gD84/yIc5TImiEMf1nA62Y1Pq5h/hSrjxo5trriM3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4K0T/s6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4K0T/s6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E1CC4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761237593;
	bh=uFfu+Z6JyHLQuMWz5EZ7l0cUiuRUgbmfPnrghihsY1w=;
	h=To:Subject:From:Date:From;
	b=D4K0T/s6ZgJVsrXY4u6HgmuvLFLNMWXThBXFlmJ6hFVdXyWEZ7WwYH1tgmOgCS71U
	 vTEw7CPeSO6DQY8H2WyNDBGDg/MLH+sUZIPl32NZqaKzmR9xWL1APL4kTVL26dMePk
	 XPg63qvRAMVKf5mzCG2UBWHIDrmKcFayzPgbPpepB7nrsjmIT10bWlo8SI14k/EOIg
	 I/VB/jWuqGnrRa2Aq6V38PRt3muOY0ALYU5DKh0m4XaOJDfQeuQR/0CZ7xKaT5NHBj
	 p4Z8VtKnJ3uZ/JT6I5uNyYK/GL6Wl0F8BkPyA6NRDV9Wyupe02YBwKjCRc/lVJmN7C
	 O2cXtI98R/9UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1138CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123759363.24911.445442048875954461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4a29a5e91afafee5c88652b45fd907254b17f7c6de907f7a79ec884cee8c68
Date: Thu, 23 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761237593
