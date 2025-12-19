Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045E42EB5A6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766141034; cv=none; b=nsy1mhmwzaw7aydDWhQwCwgoI3oE3moap/LRrin5ZUD7suE+8tODemIJ1g1dMkfPvU36WCbwK01ibKfKSErYyjO8lfsM9zAqIB92LUx3hM0mOgor1q4t8qS8oZAeIMwGy8qEWrh6dsoxKAu20dTPlPHrvgKNPxnS32VBAFx36Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766141034; c=relaxed/simple;
	bh=cNaDmkP5ioDxUNYYGieqwolrtvylzINYBJFtphrSnd8=;
	h=To:Subject:From:Message-Id:Date; b=QxUudfkDXfF0w0Wr0/rHCn4x9Op1QPG8PBENmKg6LVa38uqoZ0z+TZOl6/YfL75+ursNqhJfzsx8tXLMQ4E5wYVhS6yAkGFa6pS2Eeect94KfKNoODnxHsTJgCuYzS9lzHIm0Uk8jfwDGOft0c9pcxM4OWs8i3fd+U4HsgrgciE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIEPhxWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIEPhxWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D175C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766141033;
	bh=cNaDmkP5ioDxUNYYGieqwolrtvylzINYBJFtphrSnd8=;
	h=To:Subject:From:Date:From;
	b=VIEPhxWulEnt0zTpqhCjQfBgE+2nENVqnMy3SYzexVsKNipEyoR0LK//H+CCrXQ/6
	 c7qDC8JhQAuWRXyby8Jq2VnZZOQUryit9Z2SfbxDiOE3kakKUSJrSFKIiOtQDbBEGk
	 4crDzejCll37gaLEgPVg7Sr6taSkwURLqBMbi8YTOQW9sUh8lHnNtruC29zsHwwvwj
	 lvUJiunUce14Gkafd8ck16vMqXSfTukHEZfhhrfmYSnx+vVRhVUeFsDW9EEoowQQui
	 j2fzvZbrhviYcgSUdD5SXtt0WAWv3aZ7lk1VuQu2bpmPkrPtkiK3VB9jGGo/2s6yK2
	 Jubae8tHxsWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F132D767D4
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614103357.7155.17613005564175614089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea8bce7794b51de9d23f6f888b74cf975555838f57d2e96fb6522553849a02c
Date: Fri, 19 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766141033
