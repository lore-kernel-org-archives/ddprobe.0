Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202792594A4
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734675354; cv=none; b=SrKwLgsJ1P7zRvb/cPV7U3PMA4fqkI1Iz0WeyclLW0kOBbarliWljlyjMobUu/i1gVE//foZJjyyq97+43HzirpiRWc8ncIFibZolhzRRj4dgjvujH6fJ/VnsHHot1ZAfToQUrFcK6QMZKviw95K8AV77WTZq9n6U1lTe97mEDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734675354; c=relaxed/simple;
	bh=PthdM+8T01bIJeiyGEOj3GewJ5OSjRgj2HZoejn7Ya4=;
	h=To:Subject:From:Message-Id:Date; b=NKSw//jfT3ncGq0Z44F3rFxPONA3i0XlQQVX2aN5va52A8PbOAYhsv+SfW6ks10zKQTSH79dudfUEwEYhkKNNxqrA43W1uhP0u6jrbyQBsRXgLRB1Ue3V9dcj6DsMZiAx/MhppVRVsCQUdbNd+apwUs/Y5bycy2k8pBCe9D53Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYAzRDKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYAzRDKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4159C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734675353;
	bh=PthdM+8T01bIJeiyGEOj3GewJ5OSjRgj2HZoejn7Ya4=;
	h=To:Subject:From:Date:From;
	b=gYAzRDKfxNnfdk8Tbs5cQx43BMhU3WM2e/pTZWKRUfIiPyqQ9jeJiYRCtdunG72uG
	 azC0T0t+A9Yo443AI+5rDA9O32MNcZyQhqJoq/MtU5SNqXCuUomUGkejVvABva6rh9
	 Z51j/asf3V8mnmMaekCW2H71pd+INPS39bA9GhmdajKQ0PQBz1h/XE2jd7bSfq+Yya
	 BOUOXG+8F93sNVImg4ed4pUF+2YLcqfapLwgcsYU+/j/eOfWzPd2H9+8Hfwg9I4NR6
	 0UuvhxdWwYtrWsl6YDUJJIM7t7MLKUHQQJXDO8KzKIvRu4XvuD24jyb+apXLdwfil/
	 5UTkfROxypE6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C9E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173467535358.22583.10725889032918272779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4ca2cb725fc3dc749b1ec52e142a04eca209c9a364cfb9d783e4d4d81146fb
Date: Fri, 20 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734675353
