Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0DE23F407
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739452134; cv=none; b=iT84Q/fTAmGMQRll7BRjsBwGHBV721bNObkUY7EEeK9NLqnYWMKj/PF9WHtZosPzsFLZ8efnxGfmBS8S5nPPAgKuFOS2tMYtBhb2lNZR5OzIy0awpLK4+zpWWNTcTCf+eWjRE3QGDI34WTZKGoyTzBHirXbUwV4I6Qj8g63bhPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739452134; c=relaxed/simple;
	bh=fwZZ4bIkUzf6zMmkcrVtFr9fedgMkXQELE7oktMqPBo=;
	h=To:Subject:From:Message-Id:Date; b=L/abxct/2okdGWKjo54ikFBFAHGgkzIpd7inj127+oM8tOOHG3ZlVtnKz+VvQ8ppojAxj5mLwl7B9+Ph8O6CdELq0srCbejoqru0Qk4BMs4GrdNrc2ttr+IzShqhkTz34v/FEkbTA31acmN+1ket8T/KxrrM11zKj7QFfklyoUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZkXIekd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZkXIekd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FDFC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739452133;
	bh=fwZZ4bIkUzf6zMmkcrVtFr9fedgMkXQELE7oktMqPBo=;
	h=To:Subject:From:Date:From;
	b=CZkXIekdZaS2NfEHsCG9ZV+w2pnmWblksNTAU4GTKbR9TXAUL79PpudwKuOc4j3IU
	 U9XPF2UddPyXbyAwSGqCP3tUZkwJtAFtkXCE8o4d8zVLHrfhXk4x3RKD4OLgCrhLgy
	 0p7NzJPcBwyIxQpIyAl17Ahxg1FGkYbYJcIbds4Y0LTwXLF5z1LyM7dKUcsOD+kcRk
	 k9idCIGtDTKkxeC1JdYDgdpIIV9i80TQEivow1kP5MVvo0yWSgabo0ACxTybEOhbo3
	 EHiZaT7sE2HcTPaq6OlB4sXONtNSp5vuoCeALJAfQqqNNEvx8Fd88L3cyKhAvaHpRe
	 UrBZSdD4WMY7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F9DC0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 13:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173945213361.5441.16741042697334259858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae226a4798048de9ce7c999290267890b473998194ba8c63701be4a18b7d196
Date: Thu, 13 Feb 2025 13:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739452133
