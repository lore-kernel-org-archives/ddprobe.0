Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18946290D81
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768998834; cv=none; b=tpuU0poA5oo6UXk3ntmTM1YrfAwOrZtIu1cS832LrxDCbxP2GaDmrnzEL934EjKYkvBNbH0C8Whb+erpnE/6URvQv+UG77dt6LzlMLNTrbQPPbXNL1aq0nwOChxO8k0mDQHQbgPIZufhGcoFUMRxMdDTlSYk/GY6QGBLQM+B42Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768998834; c=relaxed/simple;
	bh=YP8N9xzxymrzbhh0btBbNrEANSl98KLHwvC23bKG9CM=;
	h=To:Subject:From:Message-Id:Date; b=E+OgOV4kxjhn9hLcsT3/rO1HIg2YFfm97xHOvHzUNTtIV2GnCPUmq21I1sM1QGkoWTSkTsngj0x9bX05z7DGCQYI/ipbwmFsolANTLXQuHoA7LJCUpcYvugKjKfNJZHGX4TXaSpK9PYO2b4YFQwfbqkW2xG4iAo9YuYdKuEg7Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTh267RT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTh267RT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B66C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768998833;
	bh=YP8N9xzxymrzbhh0btBbNrEANSl98KLHwvC23bKG9CM=;
	h=To:Subject:From:Date:From;
	b=UTh267RTaeCwkfYJyHDAl6canSYIO6aIlMrfWb4zTUbrPG6ZM+aKPAC/nVlIn3WgD
	 5umpqK1IGWTeH/Byxg3d13Mch5AMTL4HbVn4ORKbxn+lClDQKv9McuW0H433kLHxYh
	 7Zzeo0YdAnXWFGk7eUIN2IAeG8gcI8sSzMuyECtVJ2fju28HwtLIq6+SXoqLaxVLur
	 z2wC0g6LDIw5kqfLROcU9pEV0dlc+PmNy3SOy8wcgziauYdThAjmNcGjDCymgx5lwv
	 JxQ8vUFekxnuKH0Y8o4gZBw6LKOkHF2fJv2wUPIzOqUpbGlUyJjHLlsnqhQ3Sx0+7w
	 0PSRmNUFh9Lww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF41C4450D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899883358.25869.2185830301543280004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68de9384a8e1132b42e81db4d27752cf8b30395b5f6afbe66095a248b577b2b
Date: Wed, 21 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768998833
