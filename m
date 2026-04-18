Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D085D8F0
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776517654; cv=none; b=tmfuwopb5g0fpQFlSMw96+yuVMQQs+3dYlMfeB2TqV0vCgrMXQ/m6rPU5ZEQa1ApAhsPCKVbl1QK+v6gymUGo3xdppGWZAJDpUNH1DJ6tL6bAzJ8ehui/z+ksTixYw+umqX8Uv+k9/ZbuXxKN8DljUytEsqumYGY5W1NYhKUD38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776517654; c=relaxed/simple;
	bh=Hu1BgQjBLqBmHmuF4mtw45z0jpKMKNu8nT6cn0hj1aM=;
	h=To:Subject:From:Message-Id:Date; b=SfBHzLUl2xMAI/ncIUS+SRlAUq/qUubn6Su9PFjF9ijcaPPxPTQqQfqlQr6J5xKzby8Al5PGkBEeCfdiZ3PR9I47QWBI+IZRKYP/ijalIpS7tFUtcbWgEh5K/NLwj6OcgWZxZIP9XssD+OW8DWPtm0fhFEITjpCJDUcI9taZakI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlfO5Xt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlfO5Xt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB776C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776517653;
	bh=Hu1BgQjBLqBmHmuF4mtw45z0jpKMKNu8nT6cn0hj1aM=;
	h=To:Subject:From:Date:From;
	b=SlfO5Xt1aaeZt1zaKdnl07RpnsZXYK1+dwwwGMIkBaFcYa/um9zyO7/Jsb4XdTb25
	 gsapn0TLXMqltKfBJN0g2QoBcbagbjtb6xLsGZjvYJGtTysvbN3I+uWEitcu0uQea5
	 t8AHHlunSeXQ+AQf4YKaAdcQ0CjvkHK03hBTRknwkVbtrnDT0lUjDcKj+rPflylnDe
	 cEgqwMIIEvk5UgmRY1wLyKPJw6AFomE8xh+mGnbtSSIrm07PE4qnD8xs54osW3uXPF
	 85wWIEke/7SbKClqVwpPL3QdC8a4sH1XgTdvMfWZayzUevIEfdpOZrW0QXVepilzNa
	 qhgn3/b7nMfYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A906EF99C7F
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651765368.15123.9052447052972381866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e89334b9b6c37cb7635ef8ceb13793e81566b2584144223a4fbad45ff999ce
Date: Sat, 18 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776517653
