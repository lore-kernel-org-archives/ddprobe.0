Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A0B8C1F
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779238234; cv=none; b=u4qSAf8wzPTWdNt3I5ZZlMS4PcEezWQPgOVLIyCnXUWB/LZQnxGy/E/y8U19oaEY2x7vdc5jEpgV3OgFUKu6lVs2JGo9udDlaW68A+UyGQj9KhylZTe+jQnmbjDd8K+UC3fymzlXnpQyEfh5HOP9yPwf3eZbiMxM7dhrGpOlEXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779238234; c=relaxed/simple;
	bh=Pdy8oeFVyFHOMhIcJjAAsLOJpm7XSVFJGwGrWPv3XAo=;
	h=To:Subject:From:Message-Id:Date; b=SQJE99dNPK+5cHDruGdKAVU1TLcy1auakOhc3rjt7CnuTjv/Jy1NWyk/Hs3KC5KQ3YEbJ/eSTJ00fSk9sD5IFeQQNcw8huZLaFwhbXk6uC1kbgRJnt4ykpI7Wya5wqqOeMz4IjJPyhAVFzE8Z/yKvUAyGJAv/xHppISkHFaVRNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4bnOG5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4bnOG5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA60C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779238233;
	bh=Pdy8oeFVyFHOMhIcJjAAsLOJpm7XSVFJGwGrWPv3XAo=;
	h=To:Subject:From:Date:From;
	b=G4bnOG5x38O8HrIe5H7Eeq/ry4LNZI//iPgEXalCUx1Dmo2yL7DHhHqvl9uuQN3CG
	 wCnKL+G1L7zxniyTAtZaa5YDwLN5cETiQgFaojxk/JIEue8haPNQXewfflgeCLWNf1
	 BV+UTDcfZDm1Pi7wtsxJQp0gYFGcTaDWCuCfiVzwASCEv6uddytaF4XGxT67f0VRmi
	 9P2T0WaUOpg3c+GRb8TUejti9TRUiIMCnrG2ENJUtnUUARcSsMfGbUY7cJEHNz4Zzy
	 UzZ/VpxZGij/9QJawrDv7qaOPBnQ48jyWiGleI6alwTteyUE6z9sboP87kdTulLEk7
	 5SY/DHPk58Qbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAB7CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923823369.31725.2309836380347887662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861f7f93bad06066a57ab1d064d0a1e5853db9c11d27fe1f7d54c27fb2c56609
Date: Wed, 20 May 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779238233
