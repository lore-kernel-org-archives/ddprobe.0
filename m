Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A1030AD10
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769487834; cv=none; b=qcpLx+rJF/avM9KxbCFQXmkFj5s2VAo2XGe35vFM4YcG+jBvHeN9Izm8XcxXUY4HEi+7WJqZBDq6QlV72+PCLhmUlpPqgrCjsYqpUGnW/mOm1e17FMId63Y8iUlSVtpSgKc2jHLwTVJgUUAvHkBvdjUcjgKorN3z3lSZUKhilJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769487834; c=relaxed/simple;
	bh=s2VqbYMGYOyhWpm16/85/itTdFY03V3cgl4RpTL2L1M=;
	h=To:Subject:From:Message-Id:Date; b=LfjA3REZbyEEoRqYeIIHVpaKjwN+3Ra/BEcKM+HoZNZQzkF4qC7U6bPiiZWIXx4V3Wc+83rrnB4HtWhIyQTTUp1UyDuOghBSzd2ZyTPDa6ViHTvGtOQz4+h9TbYyKpDa6wwjc4b3ZnMWdPZXXyaZv0uxtE2zJO4zRVcoOd+Qgc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3C755/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3C755/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23DBC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769487833;
	bh=s2VqbYMGYOyhWpm16/85/itTdFY03V3cgl4RpTL2L1M=;
	h=To:Subject:From:Date:From;
	b=f3C755/4N2NPzlKem7Vx/4QstQxL6zIej1bA/YcVmzR26RpcdX/fFX2ohAPLSPCgJ
	 IhmLq2GSOAOne+LQQ/eFR9Zeiu202lGK99/mdoJzeYJ54tLXcsUEh/Y7+WFc2nbLZh
	 SrQ3JACaIZtW8XnjVQUKG0nXograoqigZOocsynf7xBMd2cOZFogdsK/7Ia+40Cd5U
	 35g4W5SvmXcLF836t4A8zRXCAqSF+oc1zB+pucE8Uke5TORtCxRqghFI5h7RqxYqHG
	 s/tZ0+2gCOovlJpuqbbQYPDuM+tWw0y78+942NPSneBecQk8PSk99rU3Tv8YB7H0gh
	 OdjtUAWcm2VBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB246D2592C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948783371.5455.2112708379709356781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb6baba10c040a0b6fcb26b889be04b956730bac7f8688e42aaa635a9738a17
Date: Tue, 27 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769487833
