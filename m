Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C169241139
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762111194; cv=none; b=Df8wLOAgiaXmxAd/O6V/a4IVmnWNkoNEo8pzd3KxCoN23GzBtqJTxboq8bUxIri7wbPW/7b3C4OVxpyh4p9ES4+vj19qPPEBvvDgExBmc64ghX8y9nXVtpJC0aUsxC6G/WGlV4ZPRXSsmRaP4XP2AbOaOrxXQi8oaQKtp15DpHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762111194; c=relaxed/simple;
	bh=F7E9tOIZq2fUTgQwiQONVrwWYD68O3kCzcHELCwa+qk=;
	h=To:Subject:From:Message-Id:Date; b=h80szaXfwX8Lk+WDVVXI76anmJ+dyWvJ0v3nbUl8fa/4jLW3L4AdGlTCCT+yBBTOkGDo7glR1KEClBOJrj3YxiKph5c5m6aFoFCeKH96+UIwz5/V0rOZJWEn4XW+8gpAkqgZr5mqGtvjId53jrygVm2IWQannvqIJLP7Hx7pvnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqzaIgL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqzaIgL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B4BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762111193;
	bh=F7E9tOIZq2fUTgQwiQONVrwWYD68O3kCzcHELCwa+qk=;
	h=To:Subject:From:Date:From;
	b=nqzaIgL2URszkp9XxOYcNj//h/Hq9N7Kz3uvkhUY9jvPejrVOyvBK3afIDmivAv11
	 vRXwG3eSD46u5pc/+CdVsS9Ck+nv/RQ2TObJ9DlqxocPdg79KVOaxAkJ7lP+zLbZsT
	 yDD+tVfL3XhnagGfp47BR6ZVzy9Gn9PV1ajp8R4ZJxkV47B/fkBLQp1uiuYa/yOi+9
	 4JRYqLQo88DvEoUXUI4nTOi95lIWu/d0UJAIZGcDFrjcdTLiK0yxSz3TAlh5LFyXhS
	 Uo0h34tbZfapbUrE46agdslkhEoTs7vVT23BFU4vyp90yNoM0bt2Q8ygzx4n/ucO09
	 9w3BCGLC+FeCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951FECCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211119357.19222.9254214087896094583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3508386f0d3887553570bfe864470539b9721106801646f3ae337039592b02e5
Date: Sun, 02 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762111193
