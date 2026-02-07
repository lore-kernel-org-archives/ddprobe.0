Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2DD2E8B80
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770488634; cv=none; b=a082Js+iAfZPS2xNs2qYmQglDDq8qKkMXyxg1GUzA4DFeUV6oyBzu2qQYHU/1bAnXgZG8+h1RuFibPatYSZ65aRbk3+SjggM5kZiYloJTWkhd2wdaliRXMBK4bW5jUogOaRfQ0h17szzaitgZicrwxvbgkmftQWoQJPQaWaHztA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770488634; c=relaxed/simple;
	bh=2ntJ432c/k1mg2bcZXsWfKT0ku2pw908uAMybUO8Tcs=;
	h=To:Subject:From:Message-Id:Date; b=LaVGCwExgbAJh9keukMVfcKL+WS/Zw7NVwqGEgI2mB2jMsjE8h993x9C0aThY+C28RUl62O8RyRwaEvxO3sW8LtkJweciMfbdjbrQKRyL7H7eOm9m2Eguz9GSYs2+0rCVuY4vfTT4DaPG2Gi3e6QYJefyAxvz3q6nG2E3MhcgXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3s4DBv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3s4DBv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9720C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770488633;
	bh=2ntJ432c/k1mg2bcZXsWfKT0ku2pw908uAMybUO8Tcs=;
	h=To:Subject:From:Date:From;
	b=B3s4DBv1TLIp1BDt40PxUD7TvwGp5lOmE/FyegnD82wrS0BXI682RAcjbIFxeSH6X
	 CTc1iJ6OfStLWb1kEjjfg59x3zgGStSp1OcEH9Z/1+OdtSkP8cThA/tE2ndhCb2VBu
	 WNA4UaicE9TLEbUZTRbKKpU3AKQ7Q1DDUQw3zZnvu7nvqNx+XXnNB9pqLsGynD9DJk
	 nMtvTUPadsg8SWBSbjx5l3XbUSVRKC1VX0bOQ7IuzbY1CRwMzuWnoJmCj2begIZpg4
	 l9QgxKNkp9NnnckwZUUI46jDXhLNOfHiWFPoMx9b7DF3XmaMs0ntmX8wBG3iH6aoK5
	 ud7aDckIqh3nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984F2EE0AEF
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048863359.3299.17431363761300586353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7acfc8fa73176014029094cfc7c2aef1adfa3dbf730bf970700decb5a6f61c4
Date: Sat, 07 Feb 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770488633
