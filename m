Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0165530E826
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750395594; cv=none; b=nAq/azjUOcWMjX1WAh9tjq1LWkvY95DmE6hGvDxicfmuXoBXXeceFhWK1N5QtLypQGdCbKLS5ggTX4brO/bNsmwtUK/3RK2aG9D2DdsqgsYD+z3XZqx0GkYk4mehBJc6DNJZPsnyn4jFhyEkJZNRpO861tdQik0Ki1TFot98UPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750395594; c=relaxed/simple;
	bh=x5wEPnjAUHgPpy8cj6RnKEOrz0Pi1Ynauo4C5J+h/4Y=;
	h=To:Subject:From:Message-Id:Date; b=M1fVdENyYlvTM4s4Afnc5u5HOWT1VsX25AnV4tt/6Ea/Oi1Qun2/L7X0gkXz6p8Q2rrSQneHEvxBJqg8bLErMem+jg7WTo5Ak8YBBuswqUnI1moufyUf2g5QDOYpM0FU2dpyMbjmc3KI/Y8sJpkO83b422GKGem5AnqKNu8o+Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EG2TApiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EG2TApiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750395593;
	bh=x5wEPnjAUHgPpy8cj6RnKEOrz0Pi1Ynauo4C5J+h/4Y=;
	h=To:Subject:From:Date:From;
	b=EG2TApiC1oo7ezvDkNyruaYQQMHXZRRZnqhmpWpneHvIEqPbEyxjTXrmsc2DtCGrG
	 MVxRQbzFfc5pd/l6JGvN5NBDc0CqrRVv5xwwiTWcIhrzFpVY11cQcveh4fL1sZ/5p7
	 JFGS1wAhTTsb8DXAAeOofEwD3Wrwlx12cIHxHeQuTPc04mpDU0nSnErdsYr987bCAF
	 ZWsCsyyn5rJFEarQSsly8A0w+qMB5rjW/rBT+iio3dPxaFnNmUAdAWH4O1IsrHEGCN
	 m5CPLBFl/87Iv1EL9bZf8TgAvX7K4oD4gTL8pQKOen4x9PCRuBgSnBzvZ07Jre17QH
	 wu3oumdxpLDeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91739C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039559357.23970.14040551947256557867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef91847e8566428ec0ee9a4d6a6b3d629d08435df36f95ef92a7365504ae7c71
Date: Fri, 20 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750395593
