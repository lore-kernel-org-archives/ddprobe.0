Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1098123E338
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755149994; cv=none; b=TuRIc5LtOahdK7zbFUL522KAmXTMx84GpPeqDEC5ZG5mI5Pi3Oa7knGtAso0syPabh0sA2gnDig/TCSWUD2sVkKJJjsrNm1crfHFmdqARduIioO35c+My1mKn+Ca60m3oBXJVOYghB0DLWOwbzUZ8vz3XWda02T2YfbTI4M3DHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755149994; c=relaxed/simple;
	bh=ivich2+zwnP9C9KUhvOjt18dzmlsuLP9ssgmd5H1G+E=;
	h=To:Subject:From:Message-Id:Date; b=CSwMxZBva59TMALCcjiRz0ZyMXZoAjfgsgD3sCl5b/3mdzSjE9lhcc9zcK6CHWMvV8GygO92jWdNSOxKC7cAVGjMrbRgHZRFgesrhOmquXO8EMbD6RZ1tAS02MbJbSSOBBiLkK0fhkW/qjoCGK6GqjWZKIT+QuiQ0YwFEErE1aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQs+QVo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQs+QVo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16AAC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755149993;
	bh=ivich2+zwnP9C9KUhvOjt18dzmlsuLP9ssgmd5H1G+E=;
	h=To:Subject:From:Date:From;
	b=kQs+QVo+fOQEotha5UsDNf14BiKnL+HFWiQ2cIDmdlC3ySF0GqAWm53sOo390/5O2
	 ej6OXOizyPF7hQ9Tt0PGEoEFQWyO1dTnJeTauFGzFVj73nzCAUKi0zsw6186iixDuk
	 l0nzynL0agvSqytG3usJVPrl3zGoP47VErGJV+fUWHvZ4FjTFLSCg6L008VQeAyQuV
	 S5ZWeaKybOAjJ0+p/l+9PxZa+NS12Q8V1k7PlA4i4IFv4BmuCNA9tckVw0mGrggGj1
	 Jifsz4OwwySlbB1Z+jW1VrA91L2brZJMt4jVxTWn2nUp6AKJqZuv9SoZz6q5pPBWmN
	 tDZyQITm3CFNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE86CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514999357.19939.7510905480855705667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f669962c7e5e7b5212346ef6bc2a0dff519c1b774e9350618737eb738fbb7cdd
Date: Thu, 14 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755149993
