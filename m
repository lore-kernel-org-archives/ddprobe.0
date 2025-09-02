Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372692EA49F
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756804194; cv=none; b=OOSWguodvN39qcQBy6fD9N6Bu0vRWbWDYBdKQqKAhFdQoqXanVlZlzvmPodesS5/1DIouidJmIBO/KOIE4cHNaTwY2/FwT6NlSzYmqCgmN62DwOQennL26Wscs4fh8FYbmf15KEmCDw3JlYitfvz0tn4F6SufQjm4bwoiHm4awc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756804194; c=relaxed/simple;
	bh=atLH4xrDnAx2eLPziVQRwhBXTQoLGe4sPn0hn7OfVdk=;
	h=To:Subject:From:Message-Id:Date; b=WyZv1x2ajSR5nwhpykpWePkIZwITMjGncl7eJPFRCfOWy/JIRO4N2X54fCiAnPWXIKAplMWXElhmuqCnXSyvw/8gXk6dUZGhdOd/38zYpQVzv1p/9Zd34i5Gkg8wUomzoCWGEr1uT+YVrMZ8jl5ReNO39mKO9E1KmkK5QSkcACE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYyWK8kD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYyWK8kD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3B2C4CEFC
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756804193;
	bh=atLH4xrDnAx2eLPziVQRwhBXTQoLGe4sPn0hn7OfVdk=;
	h=To:Subject:From:Date:From;
	b=pYyWK8kDC32fWs48gQYlCwAsETYGZgEkFoEUYt08uiYJoeq7Y7LOne/1k752t/cqB
	 8wHAT7c7uOnjajEZS+2LVXulewXBWxUvxgHGiBv1DS1nHz87tFvCS+ef/3cWSJIwYe
	 kquT3k9Y7wRheB9+6ZZ6EIC6LVzyqp+0MKYbI0VttsElUcOhronow8sWIDx3yZkU4P
	 w/fFdCXFWWna7aiHmaG41EEyGxVoU3NdcFl1SMiT38ejx7lYAmbMvGRtTCP8PCWMD3
	 BlbnHX9Bpnt+Cb2gL3YkeEwIoZhSrixN5VMYeTQjLVjDIH2c4W8eek8aHFyOnY+DVc
	 KpFAK2A/POQmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD26CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680419358.9435.16492537978341992995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f061516a6ec32084377d9c7e16348f7d3bef640b7889ea39f99178a4539537
Date: Tue, 02 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756804193
