Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CF1433E7A
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783264714; cv=none; b=sZHaqmjTyGMHFk8uQmP5fH4liAHls09IzLugXyzOTdtiXO2ToqdRnIe55s/sh/ail1/8sL6Ei5dVmZCJo+q4wsnYwyNpNR1nEPWtQWBRSe7hVGNbJSBAk/hPalGd6wAyiISuqPEzdEUunBFbc7+iUT8MNdXCjljsNpEaiwpYbCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783264714; c=relaxed/simple;
	bh=sC8w/ozCu6589MMKqIgE3uH1jSCtSwuS9WA7CgcRXHw=;
	h=To:Subject:From:Message-Id:Date; b=dWh2GS+wi2QsmPBTjyWpX2E9QnroTPys3G9a4J34G/fSM3cC0U4ezXkyhpE+4rJr0ulT2Fx3SBBSmm5My0pWi+lGEROAmF+JYAXNU5KrG01NenH4tKZ/nRF4bfNM99DXmVvWB2lTbnYmjvXUGe1kB8FPyZUt3RFmH1paKClpV0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLZ0mAH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLZ0mAH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E0CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783264713;
	bh=sC8w/ozCu6589MMKqIgE3uH1jSCtSwuS9WA7CgcRXHw=;
	h=To:Subject:From:Date:From;
	b=GLZ0mAH565bn5QzJHpl7e0gBkHNe6oWX18v0DuLuSRo2aMhnYhxORp4dbOK+vGCSh
	 E+4RJmN/jx+abe6CIgwW35PyxhdKz1OG3kkPS12PE5kxGwMqbnQC/1tk69lDtBopoH
	 FgvkqYhrSuF4NoU5fuYUz3zzY81CXSDqEQOGqzO8VhyMZuk/w7+StUAHcR56yiwGui
	 OeW5UboS31t7ck3jiVC0UERuq5rKC7X3EVrfbE/Vn+wJq8y5532a4U+2tj5tPaNU/e
	 fS7RRjKtga7pDfUyeo9hcqmDAkvrBDpW6glBtHk8xDC8hXy3uHfmsFHjiSBUCOX0dr
	 LI02ddjpOOclw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECC9C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326471368.32701.13846615312073846390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29513e6efb11d911939f7df8ae92e5551181a6e9998e12045ee1e7849e1304b
Date: Sun, 05 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783264713
