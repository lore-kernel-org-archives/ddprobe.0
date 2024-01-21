Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7BF436136
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705849097; cv=none; b=bOceVkR4RMWc/v4vhr/vsOs/hhwGA2yg/AWRC2r+16PWuK4jLUjLCicRY3YtaS6pBj3zg6BQebvpzPt9JhLvYPCEXZOKAoxb12mNz5quduEPsw8UEHES70htr+Vg4dnf4J6fyF9z6lVI7pogSqRbcKRJzAT/SKfr0MTUkFLsgDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705849097; c=relaxed/simple;
	bh=HPHHuW4a5UfxD+ubWT7Dv6XtrTIul6c26fTDTVsP1KI=;
	h=To:Subject:From:Message-Id:Date; b=QYpHkvrjCrf2Ql2vAwgmezD3PJgYMBUOwBlDoakDm8XXUa52EYgUnE7oy9/uNzJ5DhlNBAjoH0oquXc0cg7+hknvUY7h551F1QAJyMd+gCklze4aowbgNWIFG/Xb8cwR8rtowFvr8BteIFniy5W/tikKs18gOgGeo3Z0G6sv4W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOuPzQDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOuPzQDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76EF2C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705849096;
	bh=HPHHuW4a5UfxD+ubWT7Dv6XtrTIul6c26fTDTVsP1KI=;
	h=To:Subject:From:Date:From;
	b=SOuPzQDVn24irepYC6Jzk6NmmSu1tSMpUTpahECzEaBdLJ6/0kxUHDTXKF9LTqXoK
	 XuFDZ1AHfQNTIFiT3+lJGg4RnOMOmCfMAEbNMdZF73eRgj7B4fDz06+PYwCyCsy9WU
	 yaWuq/7smpA5B7OUiNgttZ54zwk1nnbRGr50MdQJv5cxMZ4HEl4TmoAfJuKxXoYDAq
	 kXGvegxUbCzZU67rW3yaCbAYJqAn2YdAXDRpJjT8zKfNAacDNojjFZ37TEyiktH1d1
	 8+ePaixLcrQEufWJiKP3yoEllhXrFcwvSAXKbeRnRwiKbqZc3XwyX1dbaZFnYeu/Tl
	 yZ9OeGHT5ITDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D067C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170584909637.4132.9177646823698285024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8cb46a6627c5233549fec08cc563733095fbd46e0fc7aaebee418cc295d1e1e
Date: Sun, 21 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705849096
