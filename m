Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3488635BDCF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769526234; cv=none; b=GLBRvq7l6iyOBBkGZrP0EgJau6mWoj6a7EaF5/GXQ85c9mjV6wSs+3qR8wW1l8M3IgfSX6EOYxYme/iUfEClgmR9Vs2eq+unhuGy+xfSYE1Jm2IRs6JpVJrcpGmh+72bDQWHTkyki5Z3QrmWoEBwjJJ9gugO0zDiBPM9s4CDtbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769526234; c=relaxed/simple;
	bh=iUNBBLbVvvVqYAlgWd/ZOcnvQKzEuZdfWDGk7wWZO2k=;
	h=To:Subject:From:Message-Id:Date; b=Fm+30YEQTSurtJhkLGe/la5qk5i8s2ljNQsvZv10YeLgCs/GHV2DCiwziS4VNAFAOIOGueEnxYag3DiLWsI5U4MEBB+2smQBLeoZZKeUXNM8sXuZWNXLxiLWf6cy9GJsCogvzkRwg7PokbONNY7LdCco7Bd+I5boxUSRts/AZrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daH9cNuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daH9cNuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBE2C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769526233;
	bh=iUNBBLbVvvVqYAlgWd/ZOcnvQKzEuZdfWDGk7wWZO2k=;
	h=To:Subject:From:Date:From;
	b=daH9cNufj35iPgDqJUNtXRXBeI8cVYv5Flit7khsxHu6Sx3DpAgcjByeu8br7iQGp
	 Ylz76K7g/XIXubb+t3nUH95SN55bQpI3H/wMQy2snZ1fvk3DUdEX1HF9m8eVGxzlCW
	 pnItn+YcuMUrXuePzpCnFj4yHUvJTvSAwCtMgT+uLOthsk7J+em+ErRlIPSdRFPGVh
	 IBncXYId1ZXLdtvtZEt3jIGCshiFvO3Yc89DCaU4NXUg2pa+vX0659IWlpUNRRkogH
	 m+nzFx/qslt9qtqlahQsYrxMgm3IIxr0Q+Vt1/lcJ40wrx+iYJ047Gsf8LveOx5Kcv
	 6EEVr+lMlKYjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99704D1953D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952623361.545.18272544418884708559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1d4ad8a28099cb66209430b70f421797e3373fb2efb4dc3f41c66d78d17f68
Date: Tue, 27 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769526233
