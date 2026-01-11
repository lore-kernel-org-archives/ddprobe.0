Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14712B67A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768092834; cv=none; b=Vgl8PIsOYX3Y7VDmCXeHlovA2AQ1zuEK/tQv89SqZYuk89gcRUovt0mb5LctJEANQxbAO1p8iQl1PdGurP23GvvTSEloSKdoILQjsaUxhnH5SlDYOWdLLxt5+oIPRZoaUhuyF+xzKMyXRqj5lCLOpa3UkiK8rmKiOBgCK0vKoC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768092834; c=relaxed/simple;
	bh=S+epp+ndkqGHW6s2lov+OSyj04T++VZrhJtXbsmLkE0=;
	h=To:Subject:From:Message-Id:Date; b=Vtt+TSQjc8Q9iJnGwf0g0cJ9VU0cTW2qjA9wZCIo0+AixZa4Lel2uOFEdPZPdkORgHNxKKsYIXeRMDJR7bitDe3U9w3loriYg4qdHz6JkxsKo8IoMH3CjCloTCYvlkiWrmkz35M+g3R2aEParSNlyEym+fuO5MGUmNYyKdIwChE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fi/C6pDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fi/C6pDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2315C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768092833;
	bh=S+epp+ndkqGHW6s2lov+OSyj04T++VZrhJtXbsmLkE0=;
	h=To:Subject:From:Date:From;
	b=Fi/C6pDiwXdGqW0P3uku+fD2IDG805H1S66H1MIBZ0no4iF52W4dFQ2hqgD5S8PNC
	 eD3BuxfN0OS1dUCtdzsB/Ma9vc9iZpLxr+2VLX7DRwkWrkowGWJt5xazDq6zqJfDNq
	 fb2S5sjRCJqMqenumxb5MsACsnZIKz2WBZC/5bQ94WsmJjYar0kgoiZlc8qNpcX2S8
	 kTiC3RXzIR+1BLnDEDixo4jPWSd5a14833PSqcK3YbcrkgkcvN+C1/PjNcbALKr1HK
	 dZBTW1TfO4+1dm0kqnorc4gbMSqdVEEBz/0WxLUMLeb/V+xiRjAYG7dL2ia4/RV+WQ
	 WODTpmdKPS6SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B7DD25028
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809283357.30049.13681537955792594736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58534a6c0b6e694940157b2b2cd92ccd3d51396a2b904a2122449f68f01dcc7
Date: Sun, 11 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768092833
