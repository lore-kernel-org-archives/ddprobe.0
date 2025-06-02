Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205234A1A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748863195; cv=none; b=P7ew7vJaufHxCR227Xu95ouNfZQlBuW8w32Ckc0y4/xBAMCL/eG+iGmgTDf2mQajGFk8IAqj/q4rm+hEGPLRVS2n8+C3ewheTocLjMD7DzXtQnBrrKhEkiDFZ97oEJYhwTaY2AJfjWXp+ettGZ3nWIImpcYOXUOjrwQtSUi5mz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748863195; c=relaxed/simple;
	bh=Mzyt0IXSPLAwbXUSArTvgFdiZggncfRRq3o/Ihxg8lk=;
	h=To:Subject:From:Message-Id:Date; b=Mfvtu39QarFC3qOK5n4JZT78W8CiQTlV0qh3mKT6D5QEpu1zhTjkOOFkh9xQAEEaXrXZQyc2282eGB+Cz++BzUULcJ/7rVX0Q89XsseS99xjthClzObTrBZYAQs/ZVZH3eWH0hLe/yy195WiYyChN1pXTPVFZE9aZ3F8yOT7u+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTkS2h48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTkS2h48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F939C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748863193;
	bh=Mzyt0IXSPLAwbXUSArTvgFdiZggncfRRq3o/Ihxg8lk=;
	h=To:Subject:From:Date:From;
	b=BTkS2h48Si+25p50ids93uIdlUQcIHmrHHuSzijmiNPbKt72tPuXVVhtuteclkiIh
	 T5MX8yHUN7Z3hkgTSEK/IsnKJId+RXe10FH5XSr5YWopX1Pg24alwlCIviQKq7Vmtm
	 q8YoQYc2NAEyPJsxUWuGHodE6fasdJQIyf1HC1puWJ2esO088crlFjzhcx70i/72Qz
	 tyMc/Ggu4J8cPZuxmqzW1FxFejf45wyGSqW13GBl+8CGvJZzpMEUrvYtSZWBL5N8m+
	 4n50xnK8cESBu94LQZPMuxODHgTyXBCljVpEjf0TQaL8WwpWnqNI9ATsBcVWDoTi3g
	 yEk6B0nzK6xSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79EC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886319358.23655.17404055102583172235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c0d352ee9f38d0828f34d169db316cf40c2646778aaabd2a46abf431f59765
Date: Mon, 02 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748863193
