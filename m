Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA1D239591
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752859194; cv=none; b=jv7Cq5oXok4FHzvogaydTKB4tRwrAkuZoNmaoGL8Goy88H/1HgofjdanxGuUK19/N70kFxUGdM+zwhMPfficvcs/gafLmYI1KoEtpym3wj4+C1rez5AsPuemUIdgtejVmCdqmANRaYh7FYMuhB75gKgaFdkpK4/B40lOJKiCb7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752859194; c=relaxed/simple;
	bh=gVh4MHy9so5NHr0oINHAVXfSWvpGZwCKGzoDauhqzoE=;
	h=To:Subject:From:Message-Id:Date; b=tJS1JVYY1tSfZZWujh7DSYzf9xAw84KApttjde0nxEIPYoIZxQBUAB8I/OO37oVSJpuk4l4rp5IdjxM4HhYKFcgOpmgDImopvsM+W+pt6zKSmypYs4anagpZgt7lVlT9PXmGuSe8amygZHCIgDzSMqQ9OAAozABPCn4w46Nr7fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxYvhAS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxYvhAS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752859193;
	bh=gVh4MHy9so5NHr0oINHAVXfSWvpGZwCKGzoDauhqzoE=;
	h=To:Subject:From:Date:From;
	b=KxYvhAS5WzsGTm5UUmvgIbXykdSECUOs2m+F7xlkz37ZgVL3ahCMOTTkgx4bXGC1t
	 z8lSoRMVZsHVqN2kjwn7c+6j5L2gt5T6df/Yd9wUvH9XQxft0Duoj6zgg5TRrIL/kX
	 Za4q9Ss3sAzuyIp1WfN+CyrpBCleJoovpVuux8S4IPzcYBRtOJhA7lp21uAv1NzPt8
	 uB7IeSEM+k46no4jP0/8igzLQ4JDE10VX13DY8Mt0XpgigZ70iWBPKQ8+7e6FzEy9o
	 McGpKTQJS+5AJHfe3SMKj5vt+u5i5WLpsHlLNzvFmncPduD05JrBpu/FcgGcEeRMH0
	 uqvra9o+pg4sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92421C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285919358.17192.16634037207445681308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ee4e438b838dc0b40845a4482f52384182c9879a8d99d2454d3c644312ff5b
Date: Fri, 18 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752859193
