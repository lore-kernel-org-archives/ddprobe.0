Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2206F1EDA3A
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754252994; cv=none; b=QhNC9el4Y/GxKOivE0A/YBhlsg+MSNOUQxcCQz3v2AbeN8fWmm9foC4WFMllvzwm6hAG3Di/zw6l8f9biU6aLwUQmRzN3sI0ZINEjhCRIj6o6Bhg5txigwxBkKdcNMjXrJd/ghe0sTM5PHcdaPoXHB67iuMJsXozw+4o1Xti36U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754252994; c=relaxed/simple;
	bh=rfLyOB8wLvNrggJL7V4dg7vvi8HxHR2SNUjIbUsC0ug=;
	h=To:Subject:From:Message-Id:Date; b=VjjcbbmgkUUrleeuLVmIsP87o9Qk8XfwlntOavhrgoYH0Ng/wIb3MfUr2xhf/mhtBtnmxzhBPP+tJk1Le4sAUDo/tt7gxsxyYklDqvk/6LJJI451UPJBFiHpxzxsHIHCBAr3mGbJwXnNt62g+qqNsPKsHBQQMkQ5kQQ5ECMZTNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHmFrUXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHmFrUXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1511C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754252993;
	bh=rfLyOB8wLvNrggJL7V4dg7vvi8HxHR2SNUjIbUsC0ug=;
	h=To:Subject:From:Date:From;
	b=LHmFrUXSDcR5j+egZPZIg+aU67MVmUBg1NbLtfHRKgb+ehwFPomiM/sfLILa+/SJy
	 4RvzOtFWcetzmXHTSX1YqCc7604OdtW2JqOh6VM7ELg+AvLYnOzej98s8y7Jxb8dvN
	 DIPuq43yXEwn+KZK+GPh9YwqFufudb6FmI/ZJxuaWcJAA0SnHkWSV37XECBafQA2nU
	 g2PR/NffmqBVjPhusD1pCt8fTOSo4CHBI73BTOTpGz+2l3ffX3uSU/3cPOfyfAmNTH
	 5Tv0oEhiOTVDOW8AZu1dw7DXmU4rU/iXf62RQKFf+eaTOnj7HJiYulzSANYgjdi+Kt
	 rzdx+eYHMRucQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91002C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425299358.20645.2029504122100773131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11ade126bdb822f69b9bca96c0521d08ada11e3c7502b7575a1cd0deacb3ca9
Date: Sun, 03 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754252993
