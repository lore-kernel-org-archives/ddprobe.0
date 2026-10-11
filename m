Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1C12FABFB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791708634; cv=none; b=SFOu/rMstJyUFlCWGkh/gbRTN6E+G9eF8Xz/TiqPfuoafggM3oHaD2Migw1tkVB4GIJL1W4qXt62KezmuhXjWEe/Au6k2GIkRwEV2GoAyz7Er3CS4SUBl07sccFslWvhgWuuoPAhljd/MjzJA0C5p+aViBvSseqR89ug36+5xyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791708634; c=relaxed/simple;
	bh=5EbAVrH5Rpg0CpfrP3/Yf9N4dUE/hNmNKZewH1cYbXA=;
	h=To:Subject:From:Message-Id:Date; b=I0+fwREgqMvgy9nbmpgMuFQes33ud4CUu6UCeXTSvsCKt80Cyjf2J01/ykqVBUMuQtH8zv7z0/DW6y3xa5aDjYUwNHEUvw97DITUIHarFkQBUBI1cSZpP8gMIcXz+pfj/GpV9AM19B/WeBTseMUn/+JqXw44VZe5wRGgy7s6jkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYDOR/oL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYDOR/oL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46C3C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791708633;
	bh=5EbAVrH5Rpg0CpfrP3/Yf9N4dUE/hNmNKZewH1cYbXA=;
	h=To:Subject:From:Date:From;
	b=cYDOR/oL6xwbuWF9uK3X9fS1ZHZv61eR6X4kcX8yp5VLTOMpic9B0clwsxZwT//iu
	 /7JNmViAGYM2OL+Kylt/SkZfQSD4B4O8Fj4WJO4lqrXyxAmwxri9g82ODVjEEkpkFX
	 +37DM031tRK8lJhL1dhb5woDzcQja1SZ8dQYXZysuMKCi47R3yPeX1xMnWm3iT4gD7
	 7fg6uzTzuToDlim4ZWPsbWXxtTVdL4ATsjDM2naE6aW4Lkmg82xQKOr7Bs9leXlsCt
	 un1kpYSrY+HnyXZVzX/gbYFMMrA4l/8+wXZyPa45F4CoAua2moBKpWC0Odd7UprjO7
	 oPwXDP4kL9/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAEECA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170863371.28389.5365226039464363183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dae50b75b0f617367d2c31b541ac908be6a07b7ae12f52aeb505d022d15d07b
Date: Sun, 11 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791708633
