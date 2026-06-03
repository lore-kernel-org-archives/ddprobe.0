Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C551CEAC2
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780460674; cv=none; b=N1TEZoQe/OoRKenYZqAN9ExLN4ssipODRC9h2N7HC0EgX/SI7WUmYlYthE1Zge4b+AVh/URraDOSjigWN9S3aeD75Omn3OmdpmFnb90tiLVk6j80SNYOyvH483XG/CeWkCFcWaHbezV98OQp3Yu0fQFWDzXjebl1Kt41IKA/zB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780460674; c=relaxed/simple;
	bh=gjp4HnnXkhkdGPD+3qNh3tKa8QR1OTbVc66VgeVXkKE=;
	h=To:Subject:From:Message-Id:Date; b=Yg1clWmy4J8CLkVSeSryL8+o3pE9wziLqslh9SNurunwKH4RS3NsckalTuQNqAGw3Vit8e74OJPedj3FAceIIKse8PR8dae5khDbH5poO8B1z3bW5ZxKesM1WezqGiECn6olvL9ANdz0zdbrFc98rI/Q3JHiKbpRAaFn6kPBUHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh7/5GI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh7/5GI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6959C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780460673;
	bh=gjp4HnnXkhkdGPD+3qNh3tKa8QR1OTbVc66VgeVXkKE=;
	h=To:Subject:From:Date:From;
	b=Oh7/5GI9GqPDjRLMnsuu3/jQpYX+53JbVmnBVhAPqv270L+U3FREUoArIlMAecXtE
	 BDM4CZiTd0Tc9INbcL4iG3G/PgNP61dkLNcAoQ5fHmGgH0eS3s14H1nJrAc/MAk27I
	 EzEyfsKp/Hm9FusqIE4D2IDBINhIuAUao/Lyq2JMG9g37QYyKCOM10WlJ1FYhIOOfB
	 bI2ZvpoEszJ0Fj5AMN7tUgH3z9QhmHwGiFkbwU4VXcOrwLfF6EoUWOMl2YDuuyRHJ7
	 CVTIK9zw6x5rOwjqRpbF5rDTaJv3+2VT87hG2QfLHE9eA31jmwidtxXpnQj1qDlyj8
	 TNcrZH32Nsf7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A4ACD6E56
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046067380.25428.9907815645296001214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a90b4db1e8e81f3df72c690485b152c40952288a44f90f6bf578f7718788a62
Date: Wed, 03 Jun 2026 04:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780460673
