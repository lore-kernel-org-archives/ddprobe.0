Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B072F291A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765595574; cv=none; b=M1CdlwOmBPiuaSLW1fYI4eo1yq0l1IjNDk2zBYL8CDhKj6HY1pLpsCXHBxTGkSyF9l9miFdBwLNpZ5Zl4XBSJyQ7VErYIYArnoUZ5NdXv+Vij/pQfSqLj+Knq0oGnQNe+1bY3noBq1C2CmgWdh3MAFlUwjs9biaLn8XgIfpue04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765595574; c=relaxed/simple;
	bh=FG9JsBPhS5BfF/fpmRccjjAM4ODXnfrnk6nrDEcJVOQ=;
	h=To:Subject:From:Message-Id:Date; b=lXHETiq1H10Av4Kuxi3f8U7j+GCx8euXfJF0f/Io53Lj/Y2IQdGDB79ndRhXpko+4sktH+txnFVbGnznC7T3ZrbSukvE2pI2bP9+GOsRMppBE19ZOY4BtXOOYSDuVAIpA6kul90voPdyCD56bH7DfLwsDmwk2RcoZOjcXfHmH2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koExnKs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koExnKs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B6FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765595573;
	bh=FG9JsBPhS5BfF/fpmRccjjAM4ODXnfrnk6nrDEcJVOQ=;
	h=To:Subject:From:Date:From;
	b=koExnKs5KEhMvcfhzK0SOVPx48Y/oOv2Fd8cAiG5gIl+mkCWT0qFdXlQRGDlhdewF
	 e/BeD2tOrBboBrJ5AXA5bOedTqc1AmghSMq1TDZsLf4hOon7dss1aqZIw+pP+keysX
	 FNezSccb4yVIUaaIIBfZwJudyEfnaIwr6Neyd+SvXYr10jveOEUtQrGSIlpbSwThQB
	 WSvlnqTaIuCJyppfrGfyRe0DjP+rxTJBVN3xUNULHh93Oq9ZyVsSmyA4ebiAEK2y9Z
	 RP/hNzhPsQeYYORJFGOXKlfdg09X9JLE+p6UEEP4H+cl21XjTrwF0h4dNzUrNzUO2/
	 XMNXJpbBBkKnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E5D59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559557358.6546.1086414921296958684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7579a300b8df81213e37cc9dd72ca67ed05eaadd8ea9e8718ab85bb294d79445
Date: Sat, 13 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765595573
