Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274622C2349
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769504034; cv=none; b=kXVxgZeoHmT04iMfQD3mO8y8usm9qIWK75DuFdxk8Qzpw3vRfQ2I2YAtfgzLwaR4dnAsInUogEQ3a+3o3Vj8Yzgmil3LWtINXPdAU3dV5WzdmYgh+BM3lUndDeY0PsnBpYrpK0Dldeu4+p9zz/G+GUjIQD47n6c8OLlDvWxtqfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769504034; c=relaxed/simple;
	bh=aM2UQaH4vGRNCIfPpkW4dgs415leuFwDMkBfTq+0tNI=;
	h=To:Subject:From:Message-Id:Date; b=ZJDR4WX6HxSu9Y/aC0m56c/kViQ8UbgY2UL2ZHZ9Z7sYwFt6w46H2VDG0Fs+I7z3E1eY2ms293nmavcSoxF2YRRFdNOouVv9NOfnZTgX88P2FIi4ZGHMdf5MVdi4SGrbidi2oi3Al7/yjtg222pwTkfe4CYGDhY5zXcNBMAcBD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwsBK1O2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwsBK1O2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2649C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769504033;
	bh=aM2UQaH4vGRNCIfPpkW4dgs415leuFwDMkBfTq+0tNI=;
	h=To:Subject:From:Date:From;
	b=RwsBK1O2cuUYyNgVwhc+SALPMDeI4LTo6w0TAstiA3nglAY0CiIT+uCt2CEsTajeh
	 QLd9Q8evyJcTVdqeC1sVWwpElMSf3H5tdjpVTuawoqvmhGwztSt/wIyO2sOVGz2gQv
	 4raZ8eL2spBLY89kr3mNBaVwDGF6bbdsbQLlqkVbRfeg5GkaxV6Vf1xQTdvYnbT/T1
	 +WECRQdWI9aO1sfPIlv/7dlnaHCIRxn++jv5K4QElcllthxk82gabcUYMEHBk4LWJw
	 JSBDIYm7vOYZeyUyrQmsK6/FAJFzaHPc9s0MxWje97EIveY34uDsBRVrFiXqmOXmdM
	 YgngMf7fEW1RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA48CA6C92
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950403364.2655.6794779116028502751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c7e9568ddbee4863f90b136611000fce39f8e568c1bc89ad09be497dc1b69d
Date: Tue, 27 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769504033
