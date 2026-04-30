Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3C22765FF
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777516054; cv=none; b=p7jSKTBQH6/Y/8H16YArK1ELxKztalrbeRDcC9W/3N7a4p5QRZYNifDUldhfXPXD3RdNnpXKYf2nDObda38qTuYFbW4jFuMkrnrPVK+omOWaKGUrLGIfnSfT67SILp3qBHTm74mRYP4mFf5/FDcx/5k01Jz+vtdaL7AvryTCcEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777516054; c=relaxed/simple;
	bh=XGvtxlsKk8MDxlBIux2Essggb/1LFeRIDEdN8ks5HmA=;
	h=To:Subject:From:Message-Id:Date; b=VwqiV9APiTcCgHBUcvfESgEHtTUcIOqbLHR7bGKdekc0tXTC554kF9z72rT74c5NBgqneCS0pNpplTQtIOAcogSwym0FFjna9zBVMl2YLv6sze7c6seBl410f3WejanQM2n4qG7NElAeZHAXo0mT20da1rdF1RyYtBfU7qoySEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5crfL/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5crfL/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B46C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777516053;
	bh=XGvtxlsKk8MDxlBIux2Essggb/1LFeRIDEdN8ks5HmA=;
	h=To:Subject:From:Date:From;
	b=r5crfL/qOYXzMkvka4hpduIXhRzIAlQbclxrkZ152RJRHU3n1ohVkVG2zOinVokEv
	 BcQz9hSQE/qi+NbV4xWhrD+jGXkqBATi/7BnSLPaYBAgrjKTr0mKDBXbK64xh1UrRy
	 OcMwpFuKzN+UWoCVqluW3Q+7AzRUXHWjxsGliiY94OTOSRw4/+4TvvYa/M2AyKhc1V
	 7aIbqN6tLCpQlU3j5MNAtKntOFv95sVhkCS7Zo1BgF0ctmUdbIsL2rHoGU5EK3KhIr
	 +LZxEle5JkC7KwajS0NgbPR7ZGd7IzghAuhvPcbm8YTejKWAQENBGno7UzDFMpIJvf
	 fDAZrEfQBhxxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC129FF887E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751605368.9628.14522643832137236379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94de57cb0df1873d189e8826830b73e80c97043df7691aa9aca4d5f5630f8e15
Date: Thu, 30 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777516053
