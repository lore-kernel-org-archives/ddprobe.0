Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC2B12DDA1
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717422323; cv=none; b=kXPvVc6WOJfoT1Rsp6SfM2s2r6YGVe6VsXuAwTCpDyABz935Qm8w6/LIAwaecX+u5AxpgjdTCB6Z1kzKUS2t8PM+sPrIsaHE6tBXtauS+5+D/zO6ZjaNheWERcvX15Um+/8oyMhzUKH0rV2vIQfjLmflkxu8pxxKanwi4hmn+2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717422323; c=relaxed/simple;
	bh=/EMOzkxHMbvTaCpdIzIM8kYRoeTKqYeqYiIB8SMxDKY=;
	h=To:Subject:From:Message-Id:Date; b=jVSLOyHRX3Hq0CuYJVhLiHn1ECIDC7jY2mEH6y7gU++b8Fz/RbGP3y78bVqaAbPyKwq96Q+5ku5PMwYDw2GgJ5fuit40SvT0AFmGpL2lWvOco4S6IAl0HbCPLXmKcS2Ooa6O1U62dNcQ66mffbIbzAuZvEw1XrtXeQed0OfiXmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehImRa8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehImRa8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB250C4AF08
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717422322;
	bh=/EMOzkxHMbvTaCpdIzIM8kYRoeTKqYeqYiIB8SMxDKY=;
	h=To:Subject:From:Date:From;
	b=ehImRa8r8RYrWDCKJoi0HSPTDrSOnkSgy7vj9QBWFyyB7ahQnBIKoff9yVYy+OGMi
	 vQxvsPLCQT0Al16RY33ZXKizdKkE63yYwOrXjtK3kdq74PTYaXxRGepqmAWMX4VJun
	 pVrkW9NWh3S8KfoX0VaXn8QnN3TS8UNj8YQ6k4gfZjq7CHBPYGYlbTahfimzznFIQk
	 k540YWw82N66e98t607dbfPLyuPNKggwMEFFUEQCS4WHv+OfGTKD8xs+XAsjmrSw0E
	 zsUXxKXKejvd93Ef/vlCRJ2LaM+0NsH508hkNRq7WhweFW2actFoF2xsNVgqwMHo8M
	 KxG63Zg8/h1fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7300C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742232280.24141.12444638526668933281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a197ccc06ebe999a19f30b53289d4bd250e8a71b42898328b053ee56358537
Date: Mon, 03 Jun 2024 13:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717422322
