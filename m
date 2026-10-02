Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2447A1F3BAC
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790925034; cv=none; b=h4hjsFu7QdY2yiecv2Qe8w7iTVghEuLBtmB1vuW4ujkjfQGUmDcru5ocLmhYKABHCvTh3GnkbPn/UBZRIMo68JtcNuOzf9Camcz9Qvu9DKwVtJMhRXBimpwrLVYJqatFpbfFWu8UkkFJbH/drXt5CoNX90MR5Pdl75bC1jTRg50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790925034; c=relaxed/simple;
	bh=yy3x8OgTTIqr/N3IUFDWCjxId9ou0sy7z7RQ035d7LE=;
	h=To:Subject:From:Message-Id:Date; b=Hn/ORNpMxakaAblqggPhDevPit3rZ7rhqQi5WK41j0QzgIv3jnADCBAVTDKOLP7OnlPGf2kr5cJt5IQh285z/Ka527lbnCEO+qMJXsHxCJERJFNZ1wYN8yGPBHvsvW5BNGkhnzA/agzuWdOI0/KiCoEqO/fm5g9TU9yyEZ5VT2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppn+8e51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppn+8e51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0B9C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790925033;
	bh=yy3x8OgTTIqr/N3IUFDWCjxId9ou0sy7z7RQ035d7LE=;
	h=To:Subject:From:Date:From;
	b=ppn+8e51O7ZcLPYoQpScENpPq4FIUMq4BpL49oqU3Hw60uQSh0vDNbmyrmtJ0ppXf
	 aOzpaW+4nZgh/3FP596/KK4/Ihn+zxFy7FGWla0BplayZHatjOts/wSwDLfjCBSKYU
	 ZsR1nW9BoMoSmY9JWJExCjN8tOV1sJlLEScj+v94Y8V70tN5qEA3hV3Ur4uqbNRLdC
	 svNxwVwNXjgb5HDniuBAAq64B4g2OMPCtKNXQohQzf6HUApJn4HmMkoWXVZ2Shq0tz
	 LwTPkQB1n4lOvZhf7FjfOrIbIoYBlnZnOc5xOMQcqSRN/5VSvlgRmVYYUyDpsiVbFM
	 B1AUQWuQbDEOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1B8CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092503369.3941.4234551528199715306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447227b65388dbe292814a7b57b2e04f12d495b7095897e95f7bc64edc46efc0
Date: Fri, 02 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790925033
