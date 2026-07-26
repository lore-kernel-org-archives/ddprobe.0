Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B681D5CC9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785073234; cv=none; b=uRNxeEdv0KAN/L121I5j7PqaIO3MgYEgUVbT0/lXdPe1syI1IwyqtjRpmO/hqzsxCpU24otc2akS6+3wP+QjwuP+ikDfg4gJj94zKUAWPVm7p2+LH3joOVDGDB27IwaImTNqJP7b8YMTuIKM/nkuncqmb1wCHyoyELNkTyQi5Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785073234; c=relaxed/simple;
	bh=UwhTt1MCbSPQblpwbBpQWuDTBq+p+pn094UyJ8uWJLw=;
	h=To:Subject:From:Message-Id:Date; b=qjG8ovuH/1mCO72LgOgGa85s2SNJpaBUWM1pOR/20xIIRwBKZHjdoNCpDDOaihrGf0i7iVFdyFWmYb1nnHSulvutfg5DERBjuEh783O9KW1yWIUOND87aGRBvYcMUEIHDfLpN5AVop1uOeeHzA6y56SjKS7105CYR65i8anaJxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0o+lWMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0o+lWMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09B0C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785073233;
	bh=UwhTt1MCbSPQblpwbBpQWuDTBq+p+pn094UyJ8uWJLw=;
	h=To:Subject:From:Date:From;
	b=h0o+lWMaX2B80YfUBu4mHOsJSl61cf0eX7oeG3t6JZUuJ8y6a+YMjCpYGiux8fHS3
	 HuNDHv4n7gpZkDYHS9H7ZR8eXpz2WTQp8VOU0x0a8IV3cmdNFoNj13e6q4KuACvmhB
	 likOGCg4XPheq7toxUQS7BpwS/oYiCl+jRaAWwKJdp9dqWWkAF7T3PTI36rtWGSIDC
	 6L2QgmU5OV00fbTykmsyeoUr9SK+vieijUdYUMCIpGi83S9aiX0zc+Q2f3wfJIhsp7
	 rcHl0qeWKNLLevvMK2xS3uV5xe1NbPkznEfrYC145eAiGR4wLrH8xG9Mrhpy80Y11W
	 syyD9sjXO/faA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0D2C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507323368.28440.4619259862665680242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406a8cda5c5957e2a6540289015ababe789dad69a2a555041eaf1b091f2b8e17
Date: Sun, 26 Jul 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785073233
