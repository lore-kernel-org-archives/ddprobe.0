Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB1213A244
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771810494; cv=none; b=tRQpdqw+vr2xDF1gnMHKsb7Kak2/C4IFTfvc+FM6mRtnz3tx0y8G4g7Uub5736Dwzu0i1GM80cOV+PqbCcibp0DbdWgt1tQcpQXquFFlDLk46FBghfxq33GOiOuLvonObZdOXcpyEIFcO0hpo2/38NDjx16D4djbf7m+5FsvN7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771810494; c=relaxed/simple;
	bh=YqA/vH4YSaEyEezLTzqRmRh0qgR4JBcOeGsNM4rnUwk=;
	h=To:Subject:From:Message-Id:Date; b=N74/5mzGxoDJRMQBWmoiLM4I8lCfSNq4fTGPkMB4FsPMbhPgGuqrClTEHACzoJ6EvQJ+9IPLGnclTP5UBVQmF6Cpx54roEJCfnjyUDivcpK+1tLdHZ0vKDuwEXKLM/3oFhofoQeZQWQsM54TvTdu4SATzO+TaVaxiJ/AWcII3u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lESgS/vF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lESgS/vF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4DDC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771810493;
	bh=YqA/vH4YSaEyEezLTzqRmRh0qgR4JBcOeGsNM4rnUwk=;
	h=To:Subject:From:Date:From;
	b=lESgS/vF233ykpVvIHmaHG7CpD1bvwe+dfYyA6hN7a22Qso7m4Ey3DUv+nA67kmAm
	 GUgKtaKhGzNIb7v0FcFaPhYkpgWfAwmei5Pm0+rpd+mjEYIJRJUs5+IM5AewbZVkSa
	 wqnUafV2ByWm+k0NeM5mPKCGmX6JRU4LH9gix1wegMno25CV9zlnLutfLrEdKsNmNA
	 EH7IVfdQ+BLFfT7Jq17rtsfE3rnU7ik9VoXz9v8/txgD9Tyoi4w+9hG/CVrEp1bUWL
	 UW6INQuErDF2B/gn8uJQspUX/JNYlpo5noxv1QU8l0XPa0j5e4RVnfnKce/g4PeS/w
	 SRsyqxEc/S+Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974BBE7C6F6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181049358.22534.3675277409804466541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4611226bc33f0129468f5840c302bb40d5377c771f040449e5b35a7a0554159a
Date: Mon, 23 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771810493
