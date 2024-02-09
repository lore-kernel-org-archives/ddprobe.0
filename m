Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323262E652
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707485897; cv=none; b=jtYXCt9qk25zf8BoLGE+4TWsHPtVaODPvv88b/BnkwEx77TlUTlMptv5TPMTrRpoIdrKx/a17GPI0hYqrs/oZdqM2CGiJe+2RriT69nyRgb5SSFCuzCiyGraD7KrZ47CRUSJdkCSMmgeKSYOdUsxvIBfbya8PZX3DCv9tdwzvII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707485897; c=relaxed/simple;
	bh=8mPDzUSHfRiwNOf3lJgMQXZUirXkrS2m+u6du5GXzs8=;
	h=To:Subject:From:Message-Id:Date; b=cdWIDAIhYcDXR8haInzECTRO1b2wkbBNuisT9aHiK+sH6xIkiJr+E4oplWH3AcltYOVBjQBohuvVGUsr3YVi1Kvol4HRa/Z7+um/dxggbyWy1z0gwXDIuJGIiFs1XFgKfHz1r3kkJji1HWB80SlHH80GSuum4bUFU0q2JSU/XN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9itDHO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9itDHO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F2DC433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707485896;
	bh=8mPDzUSHfRiwNOf3lJgMQXZUirXkrS2m+u6du5GXzs8=;
	h=To:Subject:From:Date:From;
	b=X9itDHO3Uok/EysKu34vcAxnBlbE4VQlwuACXwSLkZolAUZ9y0geTKBsWqIk2xk+x
	 Mz7DnwsiDDHT6l3ogvcczgP94slsvQiiUNZzxwwlPWSwdVwcVqfEdthq0yrMfvvytu
	 UFUi7CiVFZlphEpQ+SYM7wwGSy3kTJbV288cfsuikBEmO8nmziiH+sZWf760Ptv3Xl
	 CjB4h06XTXz6X7yPr2gzK/hBCj35jQV09AMe0wQfVKVKfxVFXUmcuWwkdJll7ZI5Wi
	 MU3HSlv5bfCsydKYGXWdzRiA4p+kITw191RurWkcdlJctjVUXRnnBkZUh4U5Ch7jYQ
	 T4//J5IP0n3cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666D1C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170748589638.6877.2071741189355826938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b458a0ecc9731c2c36720826b7520f7028fc257651b8ea5a051c2d0d4e7cf7
Date: Fri, 09 Feb 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707485896
