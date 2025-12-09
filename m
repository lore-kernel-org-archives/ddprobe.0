Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE7418DB0D
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765269174; cv=none; b=tBGbwQhzZ0ARdqDdwtPEYmxvQKuYf5J7x1KR4fobEHIZ2kD2u4k4hS7auZZLfurIXwvQq/T5/dKfEByrOOJ4CYeBdQ+M5oW5K0+0niqy0lBN8MwCZW6Mph5M6awcdqUwroTJbdBkCG9YsfPDVrFN0Mt+s50E2ByT5bHhiZFhwoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765269174; c=relaxed/simple;
	bh=rO3jSLoPEjAySuFYO2cFN7dKlXXDx6cnjTS5wvoeRgA=;
	h=To:Subject:From:Message-Id:Date; b=mTQyOGzsxrHogMWJ346YjCimvrcBGHgfYAfBYVPuVliJSD4nGH9GW8/riRd//eQYceM2vekT+viKFGIoDujz2g7Hv/T7Qsw4z86uim7qoTFwmPIkyWbTB/FL65g5iDt8ppIN1NYpLNe/g91DMOprUbCi2/6NOTrYbJSXCBoS58g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhoXY+M7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhoXY+M7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08DCC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765269173;
	bh=rO3jSLoPEjAySuFYO2cFN7dKlXXDx6cnjTS5wvoeRgA=;
	h=To:Subject:From:Date:From;
	b=NhoXY+M7bHRbgwtFxJ6nOFAkYo+L3BxcdHdDMCeJho31nq9BSRIO3H35ZnbpYK200
	 mlTVkoqCinoQCFWpieEY4+2Io1Hy7FvBtVU/4CQO3/qC+IcX4WBRrgpd8bcvc9fZWe
	 HylGYvFnmRhv+QD8+US360qqxFxI+RMP9Gxgc2G0CGZjmLMGcLHOW9bcQfMMDdKkNh
	 JpjAQAwYPSTKm17DVsj2Cabg6hJTc87p9dhzX4LKi994gMWVGbe4vHHEjzO1X5kCaS
	 TAuvupXJ1pdRa9ND8++CJ7zaCjqaCsyz6oHV0qP5mASrBrZBkFsom1N6uyo86o1Dot
	 pGypTOieWTtyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C81D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526917358.5715.17803522728283647134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59d787579411e84372e32a4fb6ab5421f1f911fd90114bf6e514f5e6f2ae30f
Date: Tue, 09 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765269173
