Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC795464D
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778918434; cv=none; b=YxQ8Fe0s/6DJXjBRd84OGNNubDFU+U/0UnLKyvCjoLuKqzjiA/yzrrKwUpmPqeJ0Bmv8jlRfxkjKs3DkAOuv+1b1jNZBxQL/rrmgbJk9BLW+REIFWJDpOUaj6Gyum+ePKIqMFhtt0JngXUj1eOuyeZNuVEt5muN3aC89rp93VQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778918434; c=relaxed/simple;
	bh=Hxp4hHLCUxy6tJWbWLtWXge2ebfMtdGzjI8vE3k6d98=;
	h=To:Subject:From:Message-Id:Date; b=BUYo+DTLEVvf5UX14xAXxgak1o1MCd4GJvNmhaVDAnoFjNJ917e4vjuAfYCS4C+i7oUH7AqtV1hlTURSocQKVfgAlm/AX3euG4/06mJNE3CDYYJqVSKZ+JjwGQcmshFN/QuuHoafIQPgJqftwyxrOutvGYbdIEyB3QGSakxno5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEjytf9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEjytf9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C43C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778918433;
	bh=Hxp4hHLCUxy6tJWbWLtWXge2ebfMtdGzjI8vE3k6d98=;
	h=To:Subject:From:Date:From;
	b=SEjytf9xdOVaMyw0fgOKm6uzycJ6CMfUbU+98SeZepU8qmqMtTKRQaKOxumw1VxSj
	 DHnfF7o3b8bJbacVuw2FfTXNfHIsg0bfaydNqs+HlBJyXh30nNkZEQe4y8g+FHTvR4
	 0mhqGpqPVxDQQzX/+gR5UdhIuHgac097sweklzaeJEy+2vUMzEYCg2fls/HPKHbRqA
	 MWWWfPJ0fIQ7JFbhne5TniJ8CC2hrIit2XSFIA8bM1dQSTFdYMJWRZb087xcYWpjEI
	 gcUl4gqmcFWbrD5EGFXdl2mND+2nilzEDcwpnTm4Rm24hc9nbHA+7d49ALTV4hJgB6
	 ve/bZoAc31C6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B081BCD4F47
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891843371.19952.13508091746256398384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6b3861e17902a58327acef4150cfde20e4a9c75d87b916e84730fe2e80bfb3
Date: Sat, 16 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778918433
