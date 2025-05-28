Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB6B1531E3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748409594; cv=none; b=nWonY+wizMRgp5K164iWeoNITVacXB0CWdC2DAyY3UKVHcI/Q0LlUsXSjwaR/PMvT4YWMTvrHQV5HURUd9rKHrPf6y2+JAS+oxnAM0nrLbOW3SBpjqj2kFrcf3zGjNPYASGkgR5A8Bh9PNQWYwzhwAAtJqDWQ2nO4YPI5mE5S6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748409594; c=relaxed/simple;
	bh=ddLeltzbguIoBqFukWW5N+F7LAuBrCFIeF6BCbepWWo=;
	h=To:Subject:From:Message-Id:Date; b=OWb6HFBg5z6QfnGOcbyFrSur0xxhvPYOgj+rVr9mrTfta1qTYBXUX0ln3fYmKUgMBL7JZ9/VVb6+1AHeJ/ilLxPazxCfqjNCaA/gYEwKc1w/DRxdGT8jLYBcejaX0ClZ8dUI9l/OUGZ8dRjjpdQI1M8Ci9EAXMW7awks9nCmFsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S75cROOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S75cROOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53B2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748409593;
	bh=ddLeltzbguIoBqFukWW5N+F7LAuBrCFIeF6BCbepWWo=;
	h=To:Subject:From:Date:From;
	b=S75cROOLelVqXBEc3dcg9x+pd4nDdO5glsOeya4Wd+sqeL17FQqm1cp1Bq69REijZ
	 ZPyhv/Eln3nE78CrLpgrFf4B+lZI1j2DwUMhQYi7t72z3dGp8iiFmoR90AbtuJJK88
	 vdBR6fQkD5kKX5qgxrprsHPM+EkVmyf4fxBEdq5iYgpSH9AZTNjtAQkdb9MfFdApIb
	 sYYJwxvc3yn93MDyE7itQKWAhkg2lhekCT2ciTJAXN02wTZcT68uWPTTmfTphYvW3P
	 61U9glFUERxVe1zlXvYPAHg+knSwnytvs/uwSAPn+8STkQSPmtAIs6KDzlCBiw1EnY
	 XkqNVPMdG8J4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9173CC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840959358.15123.7390804421664675001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660255cac56fb7b2fd275d2858ea27628e0f3f1acdaada5f649ad743671e37e4
Date: Wed, 28 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748409593
