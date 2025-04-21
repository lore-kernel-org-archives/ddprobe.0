Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5742B1EB18A
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745216996; cv=none; b=hI8FVArZ3O8CfjO2uWJ2adzVllrVUwrFuCRvwA841P+RrShqJSR2NasIAyFHtmQD11Kqe28uMXzCM782/E1BYYblPLB/O4K029AjyTht3+RwCZhyccAPfPL5swi/U8AYsO+ElmYw2W/kjQwUAQThp6F5QNCoNFc6vdfrceO/mSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745216996; c=relaxed/simple;
	bh=OM+qSpLgW9MSctMn70Zrp5gvNBHyLoaMYpr8bSr8SkI=;
	h=To:Subject:From:Message-Id:Date; b=AZI9IkTSif0tQQeQx8fUBJB4NDAHguwO3fPDaqCz8Z01C/uxDqiqN9uTrE8ch/mjeD/U8gg1vwtoLFC7zH9b0gdgzyiwqrIP3547s3gFPiDEclX0HrOnibMH/eedD3f2UfrtIMEv83xQPU34FmagGisHHarzhVsxZuAH0A3OIdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g49ixqvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g49ixqvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBCBC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745216993;
	bh=OM+qSpLgW9MSctMn70Zrp5gvNBHyLoaMYpr8bSr8SkI=;
	h=To:Subject:From:Date:From;
	b=g49ixqvWO0C/s8D8ouMVNHJYFOAwwiXa16g6IkfJU+dbDF6R39K0NnFo6Wc8S5UEw
	 dAJkMKZKGuD0jkGxAePqKb4/azqKWzq1m4jZjbcLVDPLKbmWtNgk/IqdKIaAXouadC
	 BAVx6yUFS/q7djuk62e9anRAPi2Hkyk4uuFZ50hb7gPuj21XxC02GBDR4Gia3tnQ2w
	 pmHoLgsRiGFB6jZcyOx0bU55K2ayL6/PwBqPTrLVUxZRDycLuqN4AXYa0hzLv3GLLJ
	 4E7X4GtRvvgyYzwzXlNiye6leMsj76m5um73s1iS8KzFzs9WVcXdu8hmnVCcnyrOiA
	 Shmiw1FH83ucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B018C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521699362.28048.5398424111038466347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ac9f92d5223b689322d34b1ba6aeb1e12304dff4f9d6e126cc5e05316cc7c6
Date: Mon, 21 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745216993
