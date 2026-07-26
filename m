Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D1E3783A1
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785094834; cv=none; b=e0omqF18hAnEkBsOT7NqeBFhZCPNVipzVbosjI2S/S9TgGsyksWE2d3jBEKoB7nv8R1cIznBMPf1sH3ji6k9fYdHEDl0k289TtTKKi6FBtGnlYt8aSV2cygR7Hxwe6dLLSQy0AwO/OmWv7CJ0zn27U6egmEAzXDkvqkigFT9j20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785094834; c=relaxed/simple;
	bh=gmT1SgwoxfJ3Ifwty3LtgNfjoHFoUywc1nUbGiR1Y3E=;
	h=To:Subject:From:Message-Id:Date; b=DmM6a6O52oRPOgEZZsVz4ISR8bbtDrJthRcVBZmdIdaBzxCK7bQgDV5gn3eiga1VryIj/1lAEgp9ynpjizg8Y8EV+yovabvojC1XWPELQ0SxTsOxqY37kX+vB6J/5zv58JbBL8D0IBIQFXneElaWd8PJvQDqLLM7luIp8oxvaqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEivRjE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEivRjE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5182C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785094833;
	bh=gmT1SgwoxfJ3Ifwty3LtgNfjoHFoUywc1nUbGiR1Y3E=;
	h=To:Subject:From:Date:From;
	b=nEivRjE5kSype32Q5lq3Ncz8XAUlF9lUsKoJyudZFA5kenODV4uRgwKEG8DNAn6YN
	 YcZhgrMhHJZfffoGY0tD01Y79joEbfHuHpVdGYuz9rQQ66JdHclJcH2qEwLZdgRiij
	 AfkxgHgk8Z7gLY/m8h4HCto5BQhpJATErgdpqCS0htYdA5VuQSuT3prMAEO7LhBebw
	 xYaQJ4nBXY6tLcnYAhYOpgKVhLEAB0pqJSySZgpEIG6dj78EA36yJ7x8FDYoGMRyCc
	 RozK2ReVokg4VtTNB9QwrLfrsYjgrlkK+sBYbQtoiX5M1d32ioyBsncSDu5V1WrVoi
	 9RVpXcUPNdwHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD79C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509483369.14425.17906100053214232942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd1b37b2a3de38081f42a2b66ba20c3ec7b9e4b5aea01fff330f682c29d0231
Date: Sun, 26 Jul 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785094833
