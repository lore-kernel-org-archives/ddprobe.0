Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3C22D0631
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763433714; cv=none; b=gbJde8Tu1WZo18LLX8XmA+CfHdyDo6eYkO3TcMw9pdq1D8ezpSmQuHbUClNV1PFmyZXnvwrlsXSDfPrZ+LoLq1EYrPMJ3h58Du6S8uxrTDi391fIMPYXG2K/oKqhoNamMuoX+9RnalSNgRUBGg6lrRVZ5Os5YEHxPE1Q7OvMudg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763433714; c=relaxed/simple;
	bh=XrFZR+c4ca+d64MfTSNDByV+v/hI7uFB5ZKPSVMDONc=;
	h=To:Subject:From:Message-Id:Date; b=QjX7N3H0EOksf9pX+SbUuvExxYPAckG7VQV5/EGvV1i+8sMp7IJ4y/uIkDpR6A2fCl9AiJwMUqhL/tL9Qlq5L++CS8oICc9bgmTQ/lJTN60Jd4HA9jEBO7bCobFN8yzAC9kwISsH/JDs51nu0Z6S2/rqeyobgjU7nOP8UEpLh4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udIRPJbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udIRPJbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B591CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763433713;
	bh=XrFZR+c4ca+d64MfTSNDByV+v/hI7uFB5ZKPSVMDONc=;
	h=To:Subject:From:Date:From;
	b=udIRPJbvGSt45lDR8AG6gtyTVoJQYMsvZNtxPLN7DmBMJrSjCk8ANaE/RjAzAi7V6
	 XXMRsSQtZ+8UWxsrEZy+9NhfhweN9AkLkDMqrI4JwuKEAgrN7yvOmzubf9/T4SI1mv
	 zS6jRXO87M6Lkfy7+1VMHmJdRmkQWBaGeUis13TAfA95Lv+3cKduFjlKVJBDWJ014W
	 5BXwfuMrcivgaNy5LcjbawX1HW4dSPm54SO7P2maj3VYXt2CCX81nywy9+R2nXm04D
	 zr5r/L72zsKC1fU1BJep3RWCo/wvqvM11bgPLA1imlww+kSg2QXMfDQ3B45DXlUvt+
	 T9jMlkHi6IyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9011CCED240
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343371358.23632.15298718705691266528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a56ffd27d807c3dc103e1b6c41c19c14e3bf944108c5ff474f4bc6d7ec093de
Date: Tue, 18 Nov 2025 02:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763433713
