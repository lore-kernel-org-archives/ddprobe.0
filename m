Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0047D3D412C
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776263254; cv=none; b=e80MhejOF1N7Laet6LF+duJ2k9r4fkSj66J/+6ERhhc01fVN19YhqyIQgMvBkORPnJyXbftzkGDjnWT8w/tGrXqcfmjKLDCZykTz4SCB4jEdxJUxOAxRcDgxHsFjo8UN5bITYvTN2z1x7Pn/z/Vi4K01G5MgBsBLfEZFqCoGARo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776263254; c=relaxed/simple;
	bh=Pw168z8xxQBXu4EXyyHyeOm4gP0w6Ps/pZlmUWVQKbE=;
	h=To:Subject:From:Message-Id:Date; b=hPsRnrnfniet+4YcGcm/r+TA3himEDppZxlYAfXst7xRjhsqtalIuuD3fkr/JMZ6b9Zvi2ylzaraE0SpvltQOlaFI7ho1krZiykv3G2SWJOdHlGMNMskg7Qc0VRe7smt1+wJJu2enOoqzhAYIKFVl3mnAAaU4GGx/Wp83u/OQrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUxj4KMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUxj4KMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F2DC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776263253;
	bh=Pw168z8xxQBXu4EXyyHyeOm4gP0w6Ps/pZlmUWVQKbE=;
	h=To:Subject:From:Date:From;
	b=mUxj4KMaWRCTZtDigGewZczSPu3lNzZZHR4AWFmdjskrjKaOyKEzLiDjYdFyg7RUf
	 PdtUvTKhAAB0U9/rMzSTDJlYXZ5vAbqRjBrJDvx8UXiKMkUNCyA87bEhOmKsSVpEwK
	 BzT60+T7bhcvYqB8Ojmn4ht07OSK4rVDeVpP/xZglRmFIBhMOTv9hXWlQ4Qlp/YH+L
	 Zr4jiOKTZpKqG23WfB1IvaQ3ipqnh9hP6rhcqtwV/3IGYgmt4QkAgkRhV7Wnisx5G7
	 KxwXw7mSNDtlP3GQ+3CminZ/mliovMJMAvxrK/AP9FjEBVNbMq/SzswWMuoz3yVdYm
	 wNz6CQtinZiWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA134F43828
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626325368.21980.17692194347446649598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4ed9134ec9d59119cf39fb5e132dff0a27178720261716f63b36c44bdb2f13
Date: Wed, 15 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776263253
