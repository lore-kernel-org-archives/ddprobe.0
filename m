Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384993E49C1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785188434; cv=none; b=WgUUTgI41h5NGzZaeuMJSUu4XqcQzFFskIY2oScIr66s6IIZkfok9kSYN6JIa4H1R8ZtWcMDF+gSeRNE1x45bOw/0+vcy9G7cs2IoFgOcbQeGKnMgUhfMTAxBCh7MnLaZKkja7za3CftDbVwjSQfD0yKrW7hzDQOxwFOLvlVqLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785188434; c=relaxed/simple;
	bh=60AfXcq6pg6sQQWAztxfO1LnhqufvVo/E/7VGis9rDE=;
	h=To:Subject:From:Message-Id:Date; b=o9FV0Y9TTYkGN33EQCfNlF/K9GEYnx3hV0Agmsnr5Dj15UTDRTGKTrBkQYkjrPbHmXwU4PHiIzEJUCA1Ll1rxNaSuH/+Cu3U3wnQWIV2AOQqBoBbwNYiA5HoScXn/w4DUhS2sE/koKk7ikSuOqftEwMpA4I5vtSydUDz57iKBTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLLeD9r6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLLeD9r6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD981C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785188433;
	bh=60AfXcq6pg6sQQWAztxfO1LnhqufvVo/E/7VGis9rDE=;
	h=To:Subject:From:Date:From;
	b=eLLeD9r6mWonz5X3SsoP5AjOEGd5TF/G75r2o4eUg2wkMQ5RWvu+xauAgkrjN9XHA
	 tqdjvUqzwrcQsyHp96leO9BGGY5zocnHy4fDJ8iZy8cjLri33ktKCpgGo737fVARvu
	 LzSvvk3Nr4H/W/VC94NQcHLt4FsNXbIo8bJCkofu54aJG0zhM0r9IVqRqqkQ+uMyOw
	 X6poShX4Pi1BdkxjPGS9NvqGN1Q7ktjiQrDoOs1rs2cN6veW2/4swqw9ojZUbiVI7x
	 8YiCdTpTB4EdYYyQyV+XfHwcV09yw4r/9/Hl6xeX+nqoFEC/I2ed+XNhtpaqh1WtZu
	 Quexmnq48Sw1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A5EC53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518843368.2886.13365014902474318217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9724b2297754fd7a751798779ecf2df21c513131424f6db8e02c5f6251010dd8
Date: Mon, 27 Jul 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785188433
