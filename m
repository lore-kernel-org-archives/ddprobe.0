Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276987494
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765720974; cv=none; b=azXIuU8640U4QPOfKuKHhwqwA5T99k1sf2qWR+zKQDUWfA0rymDjfCx2FKonfDZmsrAi9bKr1bb+BUbDvpPG6jKfccR+2RabwUd48kQsM00YvFdM/Br5kqBFiMhxZW2IayYUgM+X/zh34byAQvfpBj23E0b7b5ZS7Uj/CNPX6gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765720974; c=relaxed/simple;
	bh=I62lIzQIImB2cIhlNVR9S08IrotHiMyljG0fOH1SZjY=;
	h=To:Subject:From:Message-Id:Date; b=biCf7MZci8kWT5BC9s/225FYazJKf12sHMDsMa/ZIqY7N3rbCYaIHkyFXx2BF2o5jJVzjeAd4DrPmtCldF0B/c7X3tFnBl+FBqV5dcx497NW0ihWx1dkyLEOelPPfHoNxMDZIvQi9OsYPZ3IxJ5VBDJfN9jLDUtA8G0C1pSa58I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQWkP7sR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQWkP7sR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7021C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765720973;
	bh=I62lIzQIImB2cIhlNVR9S08IrotHiMyljG0fOH1SZjY=;
	h=To:Subject:From:Date:From;
	b=IQWkP7sR51vUC2ibYOgRFvB6xhI2QMwKvEPZnPaGzhpQVlrXjFPiNSOOoZlSQUHsi
	 6wCX+DG5h5JY3/NEtI0dLKshPvKW6tPUgWNmr67qNKAb/CXcS/erUZQN4cnmxP3Ivn
	 obLd/QYylhHtt6FwBA+uB3O/wSUb1NGd4nS2iKYOmAj9plF0+ab3noc0go+Z7fpi6e
	 X5tWvcH9tKNab1RtHxzpy9ZTur5IDOiYQcEIpO662B9Yri4dbABcUHuNivG6Y/DApH
	 L6NrR48W/C+9qZ8OH2B1lBmi5QMG65gSNnTTNDBAC5aUMnF0RY04qNFqyCLLGK/4ar
	 Wv9gV1l5MtvBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959AAD5B169
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572097357.8540.9221785861676121786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b688965bbdeced87eb259e709eb2e601ac9f4c20066dca9d4af897d937acf580
Date: Sun, 14 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765720973
