Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F13412C08
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791900034; cv=none; b=CQR9hgia6I3WSxUEuGebgSTLl0Ptk54uEI65ywINgRTyBc5+avP9LcjRsoCEE+7E/CvcRvXNVb6qsb6G4pRVTR0nUxn8cOWfC/PmFUvWcDTwlCm4i2QglRRHO1QOVk3DYY/tZOBy3c2Hv5DSL7Y0BP1jPoQy0zmXfPpsZG/at0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791900034; c=relaxed/simple;
	bh=4DwfiDliocdRSojDZeyUglfKfOmHjHSdQI07vabtZw8=;
	h=To:Subject:From:Message-Id:Date; b=C4h3QbIDKf2hF+wPZRMmX2eVwGafMlwUeZVCGFPgCuJhe2Q2XgImJdJQBDFW4J7Pvy8WuF5ehyeQQ2K6ME5ZzHjhh+/ueCBG/4G3Ck8/UmzekQgaMWt3pPWFgpFZXGcQEEmmBh3tKpmK1yQltb2bzT7QYfi5DOqf8/VSCDSiO7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdXsXnlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdXsXnlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CE1C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791900033;
	bh=4DwfiDliocdRSojDZeyUglfKfOmHjHSdQI07vabtZw8=;
	h=To:Subject:From:Date:From;
	b=FdXsXnlHMuffdWqX/L8eAlfpFZJy2PAfOYptXcszA+xc5GRgoE+5pGi6E5JcMQfE2
	 snLcNz6TI+QFbxEp+iLGPnbJOwnbQiISazrQmyu0qztm4UAplZPQz7eKNo7xsSl8sw
	 6y22Fkg9xluhAFh4sFH1UrfqGMQox+QGQaIupV+gsxYsM+z+zCuv6F2HsXXG/AcSAx
	 UEREiSr01Di52hUWfEg3CBvoE8yZSN+UnucY9VXn2lqp66q0VN0ct8BjoMk4ZFkfNa
	 /2wgNih/nR9R74fV2/u204iTFwEtsgJFgp2SyuwtU9KZpvKUncPUJH/nhCyDzRKkDx
	 +Y3nXU0tlMgGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ADDCC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190003370.5863.16300664135167160732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e887d9ca9ba0349aea7e80e0d0c2b0d89f0874241bd80131fdca11303f7c07
Date: Tue, 13 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791900033
