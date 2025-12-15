Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E404308F1D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765815174; cv=none; b=mRgABEWHs6JUqwupE9PfMfhVDzq+6Gif7Cmyx1GITiqJU7Vl2XUbYuUd+ADpQ4OB3xcsETD8ExlM89XmP/d0VtMjs+0h4MUwIksqWAbIGgMGtDEYMuFwzkyZ0IecA+O99LDNQQv7aysdQv7+hsz9W8R4BYjGBAltibMvRUQcifs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765815174; c=relaxed/simple;
	bh=NsXvz+4GclghDf/9eDOCzjH110LrkaXkttu9Fx5y6lA=;
	h=To:Subject:From:Message-Id:Date; b=rI62EEJAsg2jBaToK2FpjSRmxGH4ssFM9Ox13uWq8C3DE4HZRk+vOHPUTNnI4dFNUjZsg2ja5RSenWshbStDXiBkSA3p9hS52S5sriOo3KUE1D06XJU1Kttoa/f4nAVTJTuah+PxMOzo3BB32S7Y174DS3omizJe9THwQ2bYbnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPjscUwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPjscUwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A9C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765815173;
	bh=NsXvz+4GclghDf/9eDOCzjH110LrkaXkttu9Fx5y6lA=;
	h=To:Subject:From:Date:From;
	b=TPjscUwf/uTZetQEE0XrM/wkwnX35WDxVIak6NHOmdQ8j3UXuX2z/Pb4ohbdBrACL
	 wNQ4ul1k8C25J5oKBWZ0QnNoiQRT2UCJ4YAJDZ1n/6aJmSyTjOTXYuOfIrMhaOOEbc
	 w9LMagMxYSmtmG+OTGApRGY56RLFN+aUcE9YJWzjTLx0mASFk1ECv5Gy3OPiKcXjad
	 eNyRzdWC0GpCfzB/frBwG1X4NO3gUfgU9ONJwod2XXTpIFcmwof/CYPLFFROZivRDO
	 4mIKCkZEbr/da3aNLz5Ab+4eB0RjpBhTJcOftt4gKlPnll56/Uhm/59ggzna97u8Bs
	 4wLakRfl1RLfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9532ED5B84D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581517359.24929.15735021445148454914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c22e4012bb4673826506f02965e0ed3e0cd058e0752d516a8365cd82cabcc0
Date: Mon, 15 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765815173
