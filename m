Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5090A1D63F3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786754434; cv=none; b=cDq/pvHS56RPjaZSbMSOyGLoP8t8Lg5v/WW97GAVrHi1AptlaZ9aG2fRJBCLXrPFbLxYEC7JJYT9oIhmgwPcckywcLuBv9COdGYlYyr1QXMBmKx1xkPAcmhXNSTe7s5mt3va4OT9YllBaIjGo4r4AW9v0iXH6wvF24mlOfGSHN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786754434; c=relaxed/simple;
	bh=4U87wqphmIjEFRO/kYuRWadKKH5cdKWBlNieGJgrabU=;
	h=To:Subject:From:Message-Id:Date; b=YbUyFLsh19tI2Cx5dS1sHoY6eTyT4GxGwt5yLLTEorsVcEivVKxz8iI32gs93a0YIUNl7V27V3/mKXbB65wX3a7Gg6dpQ645wuyEzGOEAm7l+xgr5a064zAssku8qlmc1vh8KEZnPTu6w1VtNU7H8kNgHJLxDnVhC31+jxCdcVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmZZVFak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmZZVFak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F21C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786754433;
	bh=4U87wqphmIjEFRO/kYuRWadKKH5cdKWBlNieGJgrabU=;
	h=To:Subject:From:Date:From;
	b=cmZZVFakP2MpPZpEdqit9LZk34puQQhUmiF6SczpzPb3eRLl/N8cPX1+dmnQh8vNl
	 jYeqybBjV8S2HrwpfAc4rR+lE/5U5Mb9k4MJvbd71G9xc8sKAydHB+1Fbg5OHZH9/p
	 aSTd2BSLR/PYtSTk4c3EY/aoAF5belnGZs4IWHXDXbBVWr6JZj3EvFVzUTvsukxYQk
	 P9qmwcJ7oLCoWfmiQ54A2qAG0OEBpOhWgny2LiHWSrBIGioIMhBQy1wNj9N1iaQB36
	 NXkSzzSPkjJJGAkTlHgR7MP84c1UjWFomQ6g7b2KqVtvTJW3G6i5AFxim3jCDDew3u
	 jBPfbZTzRugeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E33C5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675443370.15594.15294392284904621436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00f107341ae8c2e4f917830a7b228f84f8082cf9eec1ac7cc4a1fd3c3b2e3a8
Date: Sat, 15 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786754433
