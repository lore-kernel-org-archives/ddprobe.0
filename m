Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232CD2B9B7
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753613394; cv=none; b=G2Q5yjxDsS49J7LjNxbFKa4Mrk4U+KsttoBnXcFZNoJei5vtAfgOEmhTHGlRXoE94gQ7H+Q6z2jJSG98gn/oCBW/IhSpaLipqXwmZW7m4Mqba470ZDJEiOOay+nYYrEgf4mGW36NFl3J9vBXZwY5Wqd52o8MIVBDwhkmIM52B84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753613394; c=relaxed/simple;
	bh=SEdiI3R7VLjMUpCkq2hm0Vd2p8iltEuk2lCXJhZigs8=;
	h=To:Subject:From:Message-Id:Date; b=FpaP/jFoooczXB71ZtHJ3fNhaPKLVdnGPghvNYKwP0LOsrP9D65oeo6ejb5b3X1MSgDnjJVlNJNPXH9wC1UbCdoO7IUhpAHFdcAanRiK5SlUuqUeiojcWLY7GYm+6wQy5covwqRk3CDr96LDhrbwO4WMSRMNFhLW5317dS4ch58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIXXgm0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIXXgm0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F3AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753613393;
	bh=SEdiI3R7VLjMUpCkq2hm0Vd2p8iltEuk2lCXJhZigs8=;
	h=To:Subject:From:Date:From;
	b=aIXXgm0e1YY7+Hn0KB+dDtHXmggPA6lzLREYVQagR2zsTmszE0jX8QWMWs6qlIqrL
	 0O1rm4KvoQ3ykE7D7SuX7Zd19Qpgo9z6Vn3jtGUBpqTSazr9MI8DThSPayuafPC8de
	 nm7bg2fE0k7Zmcs26oAy9LcxYUTZQy8wo98/q7YY3l8SJ6PKYJ0W5u3zYt+uQFFkcN
	 6Md6yADlRaaZ3bc1FYG/x7TtiLDpwXeyfwQbkKKO0HD+123bpj9VV6FDugM9mFDiSp
	 JsNiJmwYvlIlaG2fBI3PBIvkkvZ1mZh0/bpl+H9ILsydVaPc1wp5NbVbcpwaS9ZPLL
	 yQlwyhDRDU6rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F2C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361339357.8930.12060250766952308325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0483bd9beb8b311a7e7efed040a32aecce6e6e64c0df20f481d4b7782c98ef72
Date: Sun, 27 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753613393
