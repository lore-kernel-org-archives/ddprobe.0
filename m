Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D6EEC5
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747880994; cv=none; b=Au756nGeTrUN4d06B3CBIKT41XEC8Lbm2CHCBNKqVGNoo4ykOnUfuNTwnhhRIY24Y+Lznxjq3GVOPRbEFJYK01UnRLmX3VHa0FSveaM/NGkvt8BAia9J8kK7xHevHPdTPUUSu4gfpqQlwfvsST7xP/ZI/QD0VniMq3wPI0FVj+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747880994; c=relaxed/simple;
	bh=phNpu1nDU86pij+B8jEWsZGlW90haIaGPxJXgncXGpQ=;
	h=To:Subject:From:Message-Id:Date; b=OVywIp2GYjOim12NyNBc4z8NhXPAfVNgdK8TQ2qRih+hcXWs8/t+HmKvr88g0ygbRn0yMtFwcWLI46qhd3cv1cTnHpBdjLTFDA1i/sCGRYghztfbJPx37BO4VN0wSSFOuGVd/ZwDznW5KZEwJ7d5+TwUie4EMqkIKtdGd9IkBTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q16TRGtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q16TRGtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E1BC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747880993;
	bh=phNpu1nDU86pij+B8jEWsZGlW90haIaGPxJXgncXGpQ=;
	h=To:Subject:From:Date:From;
	b=Q16TRGtNvgSe0aU2kX3C+4M0DBDtpO9ISJFjbcNVRQIPw7OUc1fSz1acSEEzlwJiD
	 kbt3tu8fdwtuQRg3tC0BQQJbR6kPehHG26ZfFrWB+8kdNE6qymJyorilkbk1ZjqFtL
	 lRAxLUfbFPiq7iaRbdV63T1CwfMswvLTpAmVixaJ3dLLegfKM40029smMNKF2s1DE4
	 HsQrfM4PG/4wF2fRa2ebUSLuMRqNmTsFiFym9W560QF8mtLIeQDalODBhk5/cT3vjs
	 0QqB6s3wqeo5A4lJlJjqyCLDGV+Jar/lOOlNVGeyP8cSiCyhOsrOxC0gkol34fVxkv
	 9r7HnZZLSWwWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B9BC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788099357.16629.17121009562341843269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17391985103a5cbf50f8950147910277fc235700d81e3d2ed4687a4df523aea9
Date: Thu, 22 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747880993
