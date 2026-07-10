Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E81D3064AE
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783721314; cv=none; b=V4D2E0RPkad5HFVfYGe+ZYO8aLFCY9PTEoZ+xcZbB1wXkSEdNDMv1PbVp7zqkLxZHQiRsOsctHfS1OYOxE9Hm96E/ete5fRx/DIjZtG5Kv9xjLEiMT1gHIqY5IZNSO5mAJkBEaNyFutdLXndOqNf6fHWQToqdsoeq517e7dvDko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783721314; c=relaxed/simple;
	bh=06EQMz6MggsyPEx2jm45WfMxvmtgyawnf3kXkQFTnEU=;
	h=To:Subject:From:Message-Id:Date; b=p8LhTC96nLakbbEhejgDjf8yZzzM1uO3RyYazd20WlBiwnrIAalZL1EJY64jDrJvOC9p0CbDNMfKrFJkxA+vHoaFoCM/NfXwq4tJn21Q5wJhi6lBTbIxy0E6zDKrv70wYt0tyOFUphjc4d2WQKAML61VqOyqVanAs7iZo5crS8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkYuV+FK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkYuV+FK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86E8C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783721313;
	bh=06EQMz6MggsyPEx2jm45WfMxvmtgyawnf3kXkQFTnEU=;
	h=To:Subject:From:Date:From;
	b=GkYuV+FKFBN7okWDrFMmPDaHMgEY5FAtGiUVpvZFImoRPggNzBCY9acTpa5IqnOvg
	 /rI1ODA7xs0SAQD4yz+361PnEP3DJZz64xJkT6eAkRRemEaHzQxK4n4Yy64sewKlJz
	 uOc4nZpWsCZRlqrDd1GnkEAgVLT+W1I944CTDUUc3VepNObZIC8K2ot1XHeg77Ej0b
	 wXZ4BdSbf98uIXvjU6xIlEFKJsstP+HxkSOgZ12Gm91x6vv5qyjZMWjk7IgeAt5kUM
	 Dj4/F7p5P6DsGNR3QPJd06JbiuB3Lhwf/ZoN3hmIHfxWfi4nuSJHH3K7rDBeXH6Piq
	 sZRy9wUnnAyug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F81C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372131368.29698.6645379851335877291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf1dd6055e153c3ac8115f0f170765f3a6138d13dfe7af99bcb38ef2a3318e5
Date: Fri, 10 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783721313
