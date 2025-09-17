Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A0E242D6E
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758091194; cv=none; b=b22+hHLLtHgnGZ4QANzhK1Me/k6i17Sm5jynJWD8t1COEwXLgbLuZ1E9P75PfJHLfxwkrs2t0r7O3iIyID14If5sIC10kbIomDzoymXhyNhNfvoTEZdlBlFLk9pTaXARYBRRtif0/Q4pwue42FjvyuPZzrVcepELNnwqVKe6jFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758091194; c=relaxed/simple;
	bh=F14ByMH+VaRAGZufA5ELCwRlwVjRD+oD3BPVDWBI4ks=;
	h=To:Subject:From:Message-Id:Date; b=G719Tx7i9wkJ5V7PZ7lhC/VBg7FJi7VXzG8MThmWr6Rj+rRPXKxqKoeY0HcPhopUeDechCH75uzwk9wReG1FbLXb/iUAJ6RA6fiyLNTBO0Mr72wxPVBws2mR/HI6KKrca2NzsPMOJp48e019sAG8IN4+71bY7jj+eH0shKoL03s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBazOijl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBazOijl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C986C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758091193;
	bh=F14ByMH+VaRAGZufA5ELCwRlwVjRD+oD3BPVDWBI4ks=;
	h=To:Subject:From:Date:From;
	b=DBazOijl2eyNUTQwBML8OKtSZvJUQ1IYlJ3atZxXyulvU1OsNI32UDze18Qlczy4K
	 6VhIGBD+A2TEw/sH6qF2Dv/7oHhb473KHBuBsDHexjNl5PasYPrQPC7JjMVbzj/yYR
	 Y5Vr7onWZh+dtMsZIVsPDUgjI3JXSGRGVT/yA2S99Xzp/ogR562Xh8v6EKR6T8mvAs
	 fCZ54IT8EmsN/vAiZxM7JpTeydBFD3F3KYCNOwY8Y/NcAXn0ArLWwBWHxrs8Bv8Ufh
	 dH04GR8C/+ufu/gjfR6i/VUVde3CDmeTiJQmK54TMBIP8O2Xn3nRAA5Tz8rdhK/rvD
	 v4p/+u4g8yk8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED82CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809119357.9349.11264327390103036214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f78da1cea7d3efb95f897293d80f56743747fac8e39cf35c1e3143bb6dcb4bb
Date: Wed, 17 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758091193
