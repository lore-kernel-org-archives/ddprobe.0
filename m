Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C40E19F49F
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734522354; cv=none; b=GGzUok4yN8CzSfG/R6pzVCGXxxs7i2X2/n1y2DOriicYW/vGkFREElwWX5xS5xBwExCaYbUVsDXnVY72BT987eUmF7s/BSuncSciHMd92y2cbZTpLjYMoUjZyF2IzOVH6O+0LWyCTGU6xl98n8KlXzsNHYlJ9cP+13abnPz1t6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734522354; c=relaxed/simple;
	bh=oPLLmPZJPaSU5MbvWvW6/ZzcFjj0DYjwolZF/SHpHC4=;
	h=To:Subject:From:Message-Id:Date; b=Ii1t9ozTDBHdr7VsB13qQU264MSYs90Wg5VjOYc1q7P4YtZPHa9MEWTgBG2sY1H6mdgyM9adA7FtsrFasNpk/WChxpI2yZS4NGqNfZtOJGgwKnxx/zZLijj/V87He9O6JEPO6aDcoZe/qGxl7+6tyla3/qCKF7BXAvtr8uh7Mio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWk4Lm32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWk4Lm32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8855C4CED4
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734522353;
	bh=oPLLmPZJPaSU5MbvWvW6/ZzcFjj0DYjwolZF/SHpHC4=;
	h=To:Subject:From:Date:From;
	b=jWk4Lm32gx+Y+06FZS9pvzN8845C9OY1XDCpQL//dfGA8UOdCGDU75ejelG+wTV+U
	 uhVWfpuKoYoMCC5RI8Cf1wgxSgy1VsLuf8s73se86jzDnhS7gRWz8iSMgyfTc/MWxw
	 bBGJA6n7YvtuSf6eq3MheV9P/zkEzeJQ6ka1JYaidYn98NQLTRa4Eu+jD+U9OU7ZzW
	 +wLzcjOkLPGvObaGvHJEjple8pKOaGWyLapTnPdbyktVz6+XSRcOZgWMWkVreNe+1I
	 cr/BYqexuEsUcxAhaV4B0DTvi2d9B+riE8cN78D2ZR5MBbeMLKa0Hs0OQvTgBIIl8Y
	 SbEky+iiMfoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FEDE77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173452235361.22116.3512675379534925891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6f04ad7f02de0c49b206cc5debba07f54b3c3d3d184726af1146fa038615e5
Date: Wed, 18 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734522353
