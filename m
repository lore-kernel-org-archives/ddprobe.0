Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379ADC8EB
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775499934; cv=none; b=pT9F+JFjab46+WepHnJr5t7WJGN97LMzsKRR58OgQftBQSlViuH4k07MXJyyJ6xJbO3n81JbSpX2EiShi+eS8V1lNNCCJBkW6vqDYB37ClfbYzUGJpMznhNXLTao0OWimLvz5rSiE+eAoP8cszYg0Keo0+58pCJkIRBOfmhTvdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775499934; c=relaxed/simple;
	bh=Y/m/O1Pjfpfk+Wl24DT3U82vj+hdc+CZ5LKJYkWSI8I=;
	h=To:Subject:From:Message-Id:Date; b=E0HaQ1jCwMr7xVTHB9mqHC1X6Kl4C0/HZ4Nuu7Cce7BynKBIeKwT/Fg13mGf+eiyru7dVRrwf/bCALQfva/Xmt+hWG3CjAAqdDT4Ix8V/ve1PYJy8tK9dhAhwELN3/qkWObfpJ+7X/tbQJOUvnndebfYKoqck0vQu5bRVEeh6pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbS0awH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbS0awH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3014C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775499933;
	bh=Y/m/O1Pjfpfk+Wl24DT3U82vj+hdc+CZ5LKJYkWSI8I=;
	h=To:Subject:From:Date:From;
	b=ZbS0awH4fSdRlonbLbb6F+JKVBdDGfpMGnMnUJYvva7L3SU8v1qKLmxGpbhR/0SZ2
	 +coN3lsr2lMhNHHx28z91DneQLPI9o4tIBI3bPNcYjQLTTUIFR0H296si/epf7uS8N
	 dLb/OF4f+ONFYT/1s+nZyhH2q7kBkZFqqX8ecx3HeMqE4BLZToSoJlg+uRtnOvNbrq
	 BrtM2F4OObWaM2gQtClHLLTJRlV/0iS80OaEOn5iNtAumAJWSv8liZGoon2vebxh8i
	 BU8qLonnx7Vv8p40nUmGuj9Hzam12AXp4iNX6aNnxlOWuT//MXwWZFCyy+ErcMrZFd
	 TzUW5hdNh3AUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B9CF46C6D
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549993368.29540.10730227699358212362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7029525b87f0a1a18165b98b90da93fb346f7c3c3e48db551bdc0b2e3a9ef3df
Date: Mon, 06 Apr 2026 18:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775499933
