Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322802D46D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768262034; cv=none; b=ICd/MSnKj9BFSeXr9jC+/Ru3gOwMyLHIf2OEDLiZPO/6USMzznwqlQqS0gOKs5yyh6sxiJbUpaLjYKLNmxD9egaXO1/6HGUseQFFfcJueZgawcg9xau9Vki6xOB1ne1WXhvugdTJZ2nZO8juUVOGsuAtEqG/vhOZI0PgnJDSBH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768262034; c=relaxed/simple;
	bh=vwake/VMwYh9w850zWqfJE1kgGjXPFmbSsUIp40LefE=;
	h=To:Subject:From:Message-Id:Date; b=dmvKrqPs2yHjkbJMKhK4oINADM4qsrfOU+gpjP6ZmobeQaYraG5N8WNOBE0tAyt/yH2QZFPwAmYzCmL5Uxcs+FzMKvGy5qqP7ZGE0HMSuqwybjvRxo+fONdlaV4uKu9H9mJS7U1p94YJCELM5ng13JtfRhlt+ME2tMLOB0ynLbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNG9azb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNG9azb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1276C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768262033;
	bh=vwake/VMwYh9w850zWqfJE1kgGjXPFmbSsUIp40LefE=;
	h=To:Subject:From:Date:From;
	b=fNG9azb/fstB3UMEkmyLCz1tjLZ+x1Lzzlk4MkfCYw0aYnoBDFlXjy7/t1CHTiMkp
	 CD813Tkpm51Pw4KyAxRMIlX0U2wsNVB2nm+VLVT6Ena+RuSfDtpGsozm4y7pqJU7n5
	 PY2S122F7pvi4K8gNI8XVDtR5iDO6j7jIBIyj2UvpWcdLXBWAaFTzZ49R2RWMS5DIz
	 VxtzbLNqLif4bKFRSqGzWMl8H4sA+PkEz27E2xC30QdzoNmV2l5yr38YODtNR6WIE5
	 j7fq/toFODB2S8EKJgdWvP1MN0dmHEpbSMWdw9jRX9ocmhbU9gFfHNBm8pQMxvcRK3
	 a9L1aK0IS9qKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90848CF45D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826203358.11397.10441055457233424667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc2123f1ee1f0252a0940e95a5bae9c5aa0f23e5c383f398ae50a39bae670ff
Date: Mon, 12 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768262033
