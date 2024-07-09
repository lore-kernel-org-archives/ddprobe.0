Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571B4132112
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720535183; cv=none; b=aGdrbJ1ebTahUKqh0sJji/tyCcIkCWPWO0GeaHZneReh6eoii2/ZM2HP0SkFKFX3bz1vdcyPgFtneDjBmB5MqvoWZYve8AQ5ZEVg/vZBsgKfzISAjq87BplB4lemSkvb0z3ngfVZuuuEfSjBd0knXNTC9RlAZRJUeIUJei+ndLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720535183; c=relaxed/simple;
	bh=NzXAY3vVLNj71F4sxORh0ITwp4d4pwDxbBA1sSQZFP4=;
	h=To:Subject:From:Message-Id:Date; b=FR40fd0o41EElTRexMMRShgb9ik2Wbe08TRVb/59FWdxg56p21gZQ1TFn+5bd5kHemYA16mP6H3AVKFpJaT3Mxp6kUHoWR8inDiBBaziVCYfuhy4iyFj3Ph1VtbT05GdmGSw9UaDF9vUlzIB9TGrBCTGpPqiKBgfxSl0Nwg+qag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oe0Em3cB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oe0Em3cB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8431C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720535182;
	bh=NzXAY3vVLNj71F4sxORh0ITwp4d4pwDxbBA1sSQZFP4=;
	h=To:Subject:From:Date:From;
	b=oe0Em3cBPSQnL8V/jY7VVlgrIsvOhajfIWF40tvwqy/pH1/8AuH2K//eW2zbG7kOp
	 8aCJML+ogBH89l1nOPfjoYNrRh448O5vZv/9mJKwbE1+rddU0qThWWwCl0c/5ijFFz
	 BWH0z6glCI19TDtvxSyyOjjAy7ved3hp/GqFXcmcdRYRMUVrjrs3HaFjwjQ9ywAtZP
	 ZinqFhUBYSrQWcMmjRRIGSgxJRA9/gGutN05AJwO+3a9Asou2I9a1lywfeL/MhBmZ8
	 yJsV6QiKTFq8g0g4OIwtQSLy2VO9ryufjc4Gs1soSxmPoZmb5A/jtNDps1/tWqU2P0
	 8cWtZ2cWM4eMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C20C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053518280.32758.3796138916416963433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea727040aea2c2d27598718d8ae9991a412980ad8ea1d347c901437457b75049
Date: Tue, 09 Jul 2024 14:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720535182
