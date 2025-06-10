Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2965B293B53
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749563395; cv=none; b=U9dKagOmT/buLDUj6lZzAat57Gu3q+ufCIsFylnyQbWrnG29JGpqL2Zp3ER9P3fg9VI4vl7jBTFqGFTNM95z7c3ITE9/J3D5tEdrSHfVMo8rwZQhmPTw0dP3CnaWMCnu1L5dvirgHOiOKuFJ+Lus3YDfclKuVgkA8UJKDZ0m9z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749563395; c=relaxed/simple;
	bh=I1QYBDHkfJ/GctaO5A3NH5fJs7OAWFeyfIzgXVLUwoo=;
	h=To:Subject:From:Message-Id:Date; b=TWoQO8Er5c8xcePDqlBDu5a7JsrrWxwO4ED9hx4MJgeNI9arWqxC7kGio2mvad7tLLibrNMxVhFbtmdt1MVB6ggy22hhzJQPrx7UMKIPQUsm0XROydn3Ai1ocZo7CsdkOvFCD7QR5gOVIdAujHMbz1tJyMuYPWj4+enSE9tNNCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iS+SICfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iS+SICfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BDEC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749563393;
	bh=I1QYBDHkfJ/GctaO5A3NH5fJs7OAWFeyfIzgXVLUwoo=;
	h=To:Subject:From:Date:From;
	b=iS+SICfvRJC3Bs0T6j22CxhD15cKSOYw0fe96fHS2rh+v7kbJgj41ROKg+js2K4uA
	 hinT9WLTMt0AP2vKpWwbOtLOn6aILQN2bd1m0s7scUY0UrReyG9uxLuZEGxiKVda4d
	 T6rqDsqVUZ6won1MIquLzHBzgDbc4oD2colpnUCLjmvd7uMO9zDRnjIk8LbyJ7eTHS
	 IkizKEGCdn/y/O2DCeaNnBmSL0iNEqc3t+mf7t/jPmk2KCGJ3H+cJ7ZZliyanAno3o
	 NWdNrbRhKt50zxWN5CF0FMTTFhVnc7T35ApporyrtkoKZCS08MWAqa3SUbRxRebEYf
	 WSg4zvJAwQ/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F094C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956339357.12298.1145087049603424073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a7a800f4c42a1738b0bf6b73843cb4204d1bf3f2efdd7e40f90e8349d61318
Date: Tue, 10 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749563393
