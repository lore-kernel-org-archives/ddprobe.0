Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200493242C9
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766757234; cv=none; b=catVYK1JFtJICNsVg86bvQiJ/uKSXoF7Jf8qHPwURRUrPxYhGFBvkXVZeqK34hQkkQ/oCz++L1fEByQir377zvQAnZFgOXI8wFn/EVsjgz4MHO+Gsx4S6vmfV0wNWgVvmqaQ4NkhZRuDTQaMVuFTm/ZcW4JXpB/ukAaXdTBk8pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766757234; c=relaxed/simple;
	bh=Glxx704w6P5HLmDqxi7XEXKEwF5lbFfX642q1ryHG4Q=;
	h=To:Subject:From:Message-Id:Date; b=dgcdOFAxCZcGUTtTkESPvgX/5h2z1CjvQKolDkmOaPFMVB+/NsdV+YATR5fpeHljDDptYmdRyENTKkkSv4LMnAOA+MnKiHCDf5nLrGe5eyUSDMUqAEVcttp47cwc8AP8JYrIdPzBXey6b6Tw2YMeq91UtBUVPk5DxmTuLmzLLrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bafBWB9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bafBWB9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AFEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766757233;
	bh=Glxx704w6P5HLmDqxi7XEXKEwF5lbFfX642q1ryHG4Q=;
	h=To:Subject:From:Date:From;
	b=bafBWB9qcp7nOF8Cm5UQ0VN5GFmNjvactdDK+vXo5nu3Qwe9qPUSIEVyT0hNJOlF9
	 /CU8InxcDLaSQijcKm0JKp6dglOVomav4z/tmCvw4Z646H/H5qYZTPrzwu6TI5WGej
	 CEeMMeYCgFcgEJkp1pbt/OmdYX7bntzeJiJyz3rk+odsLxCAax0+Z+/GTtVglShkLL
	 cxST1+FdEnNWKzr14zk6zQrNb82YZSDxlqeoBJjrQIVB2tmtjdYGn9pUMJ38E0WOz2
	 gvFdyqPZAPOpZ4E9b/qfRAKRAJCN74bYV+pZrgTnGWJAw6FR/lNlz5ZSAsrKahArPq
	 r/wOuTquklT0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93470E8FDA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675723358.21487.2983574663465158587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ad1fb56c11d17838797ea8320ebd694eae393322324190a959ca2405b4bae8
Date: Fri, 26 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766757233
