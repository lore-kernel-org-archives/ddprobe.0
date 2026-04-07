Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291F037C0E4
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775596534; cv=none; b=kViNt9rZ62n0JtJEU6CTP7Pc89vTvZNR42kwTcJXVJ2eK6O4KCoXcXBiRSC1HOnewg6g9MGuEYeh/CaQHcP4JDmt2sNhzlMi2gaAne1gG8SVPogXufuXVA0A3erEX7XOjfqIdpAzmBe/VkIHoDPtYZg+DlifnF38Q0MqQQ7JhFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775596534; c=relaxed/simple;
	bh=a07Q2LrLF9HBV4TVWk08THB7BucJVylkAaoPDpN4ZSY=;
	h=To:Subject:From:Message-Id:Date; b=jT1ASXMvKkZaeaNFHciTXeyn8mZDG9bQ+0Ko+FKJR7yGqbactPrcCKSyp1T2q/qPBOW2NUJYrp/cHWVDeLbariMyUky6Id15USR93k4w5q9KgwiyGbFkxB8CCKNqX/JRjBCgyfuD7Ql5amznNNR6D7G25iPqDU3xyMDe1gOTQ+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAhL7dwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAhL7dwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB98C19421
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775596533;
	bh=a07Q2LrLF9HBV4TVWk08THB7BucJVylkAaoPDpN4ZSY=;
	h=To:Subject:From:Date:From;
	b=TAhL7dwQN1Vu7Tc8CRhPgnJGNDLgbqS9CZ5KtzZajfmKGUBx55hfzBz5pBH0/6cB4
	 qc4ZxdNv0ZCkdaFQB7ZD3XwVhqkFPj7ImV172XemX79bTqOpYJAqQflkhG9BU+II+h
	 J3g2Qg8ZXJORvMyeAAWTkvZlxIFl7BSicqgVIyq1f31gzSWB6qk84yyYdVk49kf3Af
	 SuXx6uwrlge6pYhi3ed/rw6AHFuFJtXfQqhidI86199fCaFOHn/wG+vqjXsg2yJ6Vb
	 VTdS+Y2Nc0DUjH9J60GbMS03fEVcz8YK7NDc52CeUJgFeadmRmnQ3Rd0uz1KK2lyib
	 k7W8oH/z3chqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB025105D986
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559653369.17893.3029059941295108839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b95779dab527fccc56c9df85704f9bbd77fb76346f41b81a998306d4265a1bc
Date: Tue, 07 Apr 2026 21:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775596533
