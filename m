Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5D51DA53
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719635063; cv=none; b=SJsesOv3BONiRFVSqYkhvluR7hxljIFCwCZGoyTyOktOtUzQ97PLelnEWtytWKbaN5bqYJDNJc5PTD8T7vm6Ks5kFHE3sE+zUGO1fDhYkZcsyNORl2Ry1buYPIFBqcyiNDKfbwog/HytdAqbBp/yw+nCDZJYYPDXLeuotOeTQ5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719635063; c=relaxed/simple;
	bh=fqalgdP18bPOK0Ni30jjF/hMaFz5CJ/H6cfskmBhKik=;
	h=To:Subject:From:Message-Id:Date; b=XxhuA/YnE7Y8kx0d6OFfopUYI+miQCUK3hmmBLEZJypUzW9ekc7QGWVdARCaUbK5o9UpspcLpj/ESKMjD/FIt89ZSlwhDBMC2D8B/M/rILSWUHS2D3dVRs3ATAwYsSf8rx4r+ElzJ+WcuZl/vAfYudeYZeBnw5sbyu+pUXgI6uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psPrNHjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psPrNHjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7098C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719635062;
	bh=fqalgdP18bPOK0Ni30jjF/hMaFz5CJ/H6cfskmBhKik=;
	h=To:Subject:From:Date:From;
	b=psPrNHjT/PLTck7XErU4r8GE+AMFXpMgMx8vRkdT6twD0K2NEwafeVelSk1TT9AHc
	 FBdOVDkidN6uQwQBkj0qK2lvfvO49tAE6aqg8HsagPjP2Iy558Cth3D9GHx6kQROdf
	 FdfgTkoeiEHqiv1f1h75OVDe5xs7tVw5D+POWW3Ffsp5ND+YBOUE5YR7qVMmAKBYEJ
	 ss5L6GpsgrDKzOLwx2oTihncqXsuXsIT4ChixPDUkQVzNYhXTp/b714Ukvyu9BNMjl
	 B1YHgKbbcLJZsIQPiJEQ6EIpI/hpj5pA2mAUbCHeveB1/Akrt0bHTgeEtqjK5KdOod
	 GcRRXuIRpI6zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87F6C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 04:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963506279.8114.5102506322083055828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceefdd31ca1e2003ae49b6cccf3f27d1004ad9fb74febb96c49670381b6d4dcb
Date: Sat, 29 Jun 2024 04:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719635062
