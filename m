Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094C32F83BC
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762539594; cv=none; b=O2r4YsMcugoHETnhk0E+oJzoMagxip/GN4patRwkAw6miQOEVWK4M7pHMztd3Ar6zFwJodh7AvTW6JE9b4RQ9h0srMoR5jAQWqA2101etGCXnbrgaKVILjzMzR2FLR4PdJ0A8R83glkiapMRiKqnyQ3IbUUb620/IrLvS1klQpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762539594; c=relaxed/simple;
	bh=HYqjnoYZEuSYWMl8YcOpwx7Y75W0MXzqRv7o/3DJo3w=;
	h=To:Subject:From:Message-Id:Date; b=gdHnkb8OTavwMe7WeFvcovExtJrSRk23jyaQCnlvf0BQ/nM6AfE8t3v+CDbBghZJtZt1CjSbxIqrq33S/0mU+U+1ggxMfSe5IbGcmAs2HFjZokacpYqTNYHvcRbQh4IzgxUTkjLa90s+MwR2vhbXS7U1ML/0b4RtEETv4kab2cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNJtORTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNJtORTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCA8C113D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762539593;
	bh=HYqjnoYZEuSYWMl8YcOpwx7Y75W0MXzqRv7o/3DJo3w=;
	h=To:Subject:From:Date:From;
	b=aNJtORTbYWTO8YlIIkzTKdNTOt5FrVZHLAZubs40ylsRnrNW6gci8WyoupUK4oMdW
	 tzdruAuIZTmy9/VK9ueBSoA06/quHP+hu67S32ofB33BAHtewuNbBuQ60pFiwjDsuN
	 /Zv3i1LMdPIQpo7AeiRTT2GBrUazaTR59gMfueHzzDrU2s0hizP4g9GiM21q3gTyIA
	 K4OQHgdEPkBBacuL4odZkXmeiv6Hwh7WyTpTWhnXXAZvmlvUy2j2cfVIHffTvSDKlD
	 mI3BecIjbC4YVPHE/ynjjRv1bCqbAxr8yJar9DqhYVVF4XlBw+w2ySEuxhz5fU/Jkx
	 74gGhjS/KWXow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95DCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253959357.4050.7777011915537899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1173b4db5cf1726a3cae90f96155984bfe5e7742377aa889e19b0e308eee79d9
Date: Fri, 07 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762539593
