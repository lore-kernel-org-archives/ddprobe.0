Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BCC3451B5
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791667234; cv=none; b=psGiBZ21KcErdNT0uMTIHEyvk8unN+UVlaRP6e+0IveVX9WJqeUAbfm+i7o1BdqMEWKNn7Wzl3MtdaU/YCGW6QhGrI2FHN0+BXKq1Z4A3tjj7yVSljtjBKjiFUDYvx1xxxPnXXOoNEJb0Te+hk0OytScnpCNtTqoKNrQ451uhVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791667234; c=relaxed/simple;
	bh=wzItC6xW7xEHslwOHiacXXRpfGr1q17gAdhbvH9+GhE=;
	h=To:Subject:From:Message-Id:Date; b=lv+cBf/8g9TJS7pzdLks/3LNdcXW2gG8CW6u1bEtgWmbcu/GIOWKa7d0cHRgIHbihqowXSGwkK2KMZFGIYS9eZF+vgWHLEyifTaUn/7ymp0dGoyReHvgcwSqhAfs6kb8iXavootvgEOzM33hA09pql1Aq1Z5DsZW9AFdDPxAdgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmMZXtoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmMZXtoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF812C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791667233;
	bh=wzItC6xW7xEHslwOHiacXXRpfGr1q17gAdhbvH9+GhE=;
	h=To:Subject:From:Date:From;
	b=WmMZXtoeLtGJzOOGUPoa/AWR0oGFUegYolPjwoMMoC5PqNxdKgwpTWECm8zZDcjPt
	 lbsN79UTgY0sr1mX+dTLljZJX6L5CLy8VFDbyIUA9ndK2KyQHCqqY8+/w2tX3Flkcj
	 XV4Z1Ph3nLvisTNQ1iGoZllNLqh27/JnLNLk2zukX2MhdnNlBwa4ZeoD65dndQQdky
	 s/3YeFGZTpuXbWfI3nrEV9sF2IhL5rlB2/XccOzzuo+8/4I5Nb/gdMrMKIIIJnMDux
	 4dNvOmTbAQSsmHqK75Msi84WGo817YooZSy+ffHENh313/oo7lDjhIQ/0aAgA3VhHh
	 I4iG323bQOmoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5BDCA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166723368.29280.13299397341087108462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593e0dc6b83ecdae9a62b1013cce27280af3c557ebebc30c583978a485c9eea1
Date: Sat, 10 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791667233
