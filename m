Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D4F30DEB8
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773513294; cv=none; b=ZbKK4p3lNpTJDoAEEv/mgLUs6p77ZsHKGAgpBqBZl0WDIfjuH+sjfYd2XVbMRM/MvFaSSkHDkMQkyFiJrR9tflUrLJwb8I83CWUwZHliB0G5Ng13g0/CCwDyXqCQAZo7Hj/fjupZHnpWrKWGwsmZhbdhWMasZLQkm8ZW1tERGPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773513294; c=relaxed/simple;
	bh=Cz5tupH1Fz6hqNGd4BP2ucJzTIVXPPa3/bjSEq1TNWM=;
	h=To:Subject:From:Message-Id:Date; b=U3n2S4DKlPEkk7oYgXNpPtLLFC6pX7S0Waz8//GSi72z2ASs5iKLdIwLnrW+ma6HUcpjEz7y2Ok7Bt6aobXSAHUoiMlErjyn58UU8geAmnIBS6m6eEwVgqUMCcxIxgEfB82b83S0IwioMzMbEGKhrkWlDrLcpXog70EkcHlAsf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3XXOhNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3XXOhNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F3C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773513293;
	bh=Cz5tupH1Fz6hqNGd4BP2ucJzTIVXPPa3/bjSEq1TNWM=;
	h=To:Subject:From:Date:From;
	b=Z3XXOhNKZRHiDlErXD/87W4l856KIO+4BpWbpOTkz9aSzVc/8KGiQ64pqG201uEr6
	 Ni2IhVhZozqmcoEC9GSTfjaOY/mGBNl+KBaswmkYp2UIcIuDrp5bAF89WCcHG0rXXf
	 igr9XflxoDDBRsTPDw0gRD1wean058PkpWKQOOk7ijTeC1h0IRrKhjMZHimPXNvQKU
	 BX7MxdthYnI35vuoTGTitGmtk34/i0A3Nak7at0OFi93xfTBSNjrxpkS3oOzyt9OFK
	 LUPSmA+iYr95vFgD4kuo/0zs4cheVS8Qv27Dcc07xHX75MOvOjkhHaPJ/emJ7QcxyP
	 XSshpY7BC66ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F88E10706F5
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351329357.20369.6833559440776343571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c6d47b53da641ae11bfcd2f0a4cf4a523b216932e35d3aa955b7fc41ae535e
Date: Sat, 14 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773513293
