Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D93491596
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791375634; cv=none; b=YeQscOprnooo9Gj5DrleOLLIUJlRhjwdtHHfxrnhEfWcygKqE7nUGMVUigaxz77kxnJtd7a6kqp09ZkUdXjiRPo1UhF1Sr6oOFc6JJl+F0p+XbsWkbyc5rZor9AhpiHLHzQUHfy/V4LeQ/HHjn0ZmAhMznE39+rPkLw+ckgHsRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791375634; c=relaxed/simple;
	bh=JHvnhg+mxMJ5BVnK8r1hsCn57W27l1aOYrPoT9/KjUo=;
	h=To:Subject:From:Message-Id:Date; b=Z2cc2ZosiaItdlY1nyracMArXZ0llpvJGtNxBkglhAmi7xnNw+AcpRfXKkMapMnIU+9nbGy77ZjcVlx66uY260y06kadLX0UKm+XyFCzOSYiX1H2rNooVl1fC+XLPRo8VV4twBcPxBEBxxdUalelhLv8IlFtoWxfCZJ6v/PcfOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgGPlxS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgGPlxS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB5FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791375633;
	bh=JHvnhg+mxMJ5BVnK8r1hsCn57W27l1aOYrPoT9/KjUo=;
	h=To:Subject:From:Date:From;
	b=ZgGPlxS7LEeUD0TsGL9AvgzufTS27cPTQGktZgKKu+juMzu7gslTTIHhRmr688tUq
	 YFgDO231Y/LMWk6hNIb8wWBeM/aDM6eXY8ECtsthLRdENxi8iRKEiiMwggY+sr/fLC
	 THvGnTKG91P+5iL/m3Q0u+e1xiv74sYMP1mfHlQu322qW2inqEh34iAVpEBdyBEz9y
	 H5NuwBssAWX8dyT2PCfk+zgeT3EpDx04C3Q6iAjM0TL0812b1wQ5cwP3sc2Zj2fc6C
	 JoxL1NhJw+9Qlmvyb+TEPoOP9NkXr4jd2SgCsxN45FXl26KruxYWYoh6yjptT3AI+A
	 SS8umFYOclnVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA390CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137563368.20241.553219528224791523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cbc34146964f580d3aaedacb1bf1123c47ff74f2f0d52bf2d9cf02c89d12d9e
Date: Wed, 07 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791375633
