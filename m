Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3739121FF48
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759762794; cv=none; b=adJvLgD6gVpe+M3Ogr8qyWuD60fH3kw3/n/ehQI5FSdaFlVpeWKhrYXh0L4514WKjlu6i/8F/ajj1VFC4uSdzRckGEBqRfnudrnMtZ/cm1jvRAwPmgqtOx8JsYPdhGdtneNtV/222ikdRv8BNIaiNgqPRFBylR0bqIvmRiXhcFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759762794; c=relaxed/simple;
	bh=JlJCc9beJLBPTqdh0F9m0P8NzlmWZcG9L34/CKaT8EQ=;
	h=To:Subject:From:Message-Id:Date; b=lnZoh5nwsuEluVO0oov3Zj1HC94Eh1I/6RAiDkEf4XoQYwgbtSKwf9j9oxk0qH5XxuDE7SqSMqNJ5w2qzeHTusBNvKCp1wZqDFIf8h7+b49n2rYZ0JdRpiAoy7Q8QOhKcJsJTW/yI1+1/US3GeR7LQqqzJ7BOTHD1j66Kll45wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAycceWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAycceWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF7DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759762793;
	bh=JlJCc9beJLBPTqdh0F9m0P8NzlmWZcG9L34/CKaT8EQ=;
	h=To:Subject:From:Date:From;
	b=qAycceWzSeSraGujIe2lDX+LQg8wggdNWAbMaUTZuXI7AKuFECSPLp5147RZ/GqcI
	 ro8rHEScNyoVwGx3xAFx0H9XeC4JxArVRcY3vgsej/X46IR9qmB2HAt/tMMjRTRMNu
	 0pS2Od2MwyDN/7//iMeQRugXyEb8VvwHmKXh3YyLdGJQACpNiQ8qvUTjGPfzY0356Q
	 x1sJX0LiIpI4wgposwoDqGunfkuRDCnkje8qmg0mSs8YL3mkED43JrgsbemI876les
	 p/pAnlSVEELzZn/GWr6sJGnUa+t8piVqkr9dHEqXq+fCoMMIUGVT5JowbJScDFLP7N
	 nejU67hgYR0UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2ECCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976279357.2518.10929343298972024135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b76155c631fa42d1ec168fa37e9ab38b73a5bf37a6ef555690e6bf782b03e5
Date: Mon, 06 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759762793
