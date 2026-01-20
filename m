Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1DE368278
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768889634; cv=none; b=Yo1PEi4pHYxDVqZPJYhI7ob8dzSSv4utqEyCYwQX2kIsUs2abDo9A1WBoPtPJJTdZHrprM6A7PYB2f70nwh4PTyt7M2CREhurJi9ianq77cHlpZz3bPNZAkGJF+3/88prEEhLlmOntICg78MoOMiIjZWonTEO2WwqE2vCQSuhBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768889634; c=relaxed/simple;
	bh=KouIXBIo05+lX2ginKx+7jrqrLbhPGbq4CdNZYOAj0Y=;
	h=To:Subject:From:Message-Id:Date; b=e1sxMaSpF7dJyqJJkGwYXGeONB2EHVlFFUqKkL+kTFpMgNMRUkSrpIi446lTgRvOXz9EdY3R5qj0+7xFmIKSWiwb393iwNMFKXOQ8ihBBzaJwVYADqFoK9xx+d3woAbUi8KSvX5QTQxOY8EdYiyXGOGsM/NolwPZyioTKUFxpdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDNes+yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDNes+yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1390C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768889633;
	bh=KouIXBIo05+lX2ginKx+7jrqrLbhPGbq4CdNZYOAj0Y=;
	h=To:Subject:From:Date:From;
	b=MDNes+ytRgmxjD+NNlGGsdA85E7+TMXmNROcRrhMjKXSpqGdV4fjKqTmKV5FR9HGR
	 EKEgotOyoCRzMEXbL/er2S+Lx/wMgKMTDPpaApRk1pyyJESgD9MHY3H86PsTzatnkv
	 lUgCdOJ+PdKi1WE7y53sX60wAlsdPdkcnQgQ04VVirI3y6N9mFTnZesnBCDz9qR5qR
	 CGt84UlPaqQqc9pe9wDFgVDOtbhx8uSpUIBM9d8q/AKEfNe0MNeAS+JyF41/lABMQA
	 VCAzbPvhMWf94TlWDA9HzVcqlk60EXbyj0kJS0OSYAg2k1p768A/S9H51/VQL/NSDJ
	 0Wa2OSrXvF5VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6AD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888963358.15631.3411736630861317880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e851d4e38fb5bab1386a79e355a6b0d44269e47113bab3370503a372fddce10f
Date: Tue, 20 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768889633
