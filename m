Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885961DC1AB
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775763454; cv=none; b=Xuu1WQSqcE4Skwo60jbNkADitY/vxa89hjlDRJXmrzjJHKV32yPlGi3NUzE03mMrbWleMyhV4B1pVjfSFA6x4ZmFR0qXJ01YoNdswh2hguZSO2GJ81mzmGqHF6Pa4HTcgKCOId0ByHCcd7l9EsTLWoA6dIpQ2JgeeQRt3uWJ1xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775763454; c=relaxed/simple;
	bh=REgTUnX5pWCJ5TD8JrDRu6rb7B+9TgmvPXvZk79u5bA=;
	h=To:Subject:From:Message-Id:Date; b=EgaLhHf3ag5wt89KGdZimQt1sYdNIfhDHjTXHb9MkFiFe+NFRFBPLBoozSuc0l37HHSiIpKRhq1VnmX1dL/bSWX5aKxg4gxrYr2vOe4DV8sTi7oHwDcCJMASmRnJrYjJYzeL7z3BIsEAbke24yZCFwzr5uvfE0Roe1p5TemDnvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCX6EZ8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCX6EZ8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2102C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775763453;
	bh=REgTUnX5pWCJ5TD8JrDRu6rb7B+9TgmvPXvZk79u5bA=;
	h=To:Subject:From:Date:From;
	b=nCX6EZ8dLARvxzHJ+E4CQ32RvbxRGC6FEFNnWsg1xvOZWaq/uaSJjNByBehELuXlw
	 y0b01b6qn9gsffj3R+M020prsW3x1tPQPOGvxB3Z8BkWI3DbLgEWSoP92T4D4pKKNJ
	 8AIHiSmGaqKgKchRD9D/xlSVjhqiDN/hc1LTUSxMrVqk2gMVX2/9tAGsPZnnjToTBX
	 jGO0T5N3c7pqVcsP1WSI6p/uUglcPqoEROiP4b/9FpYj/jFxXHiUIi/i180PC6mBSD
	 Xsj9hs/kVXICpnrtOY+swe5zAM/gSXBowYmTqLnMx+mFLjRXxinVIknvek61aj0k/d
	 1AzxkQXH+6xKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD9FF364B5
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576345368.30645.13960311750450917810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7dc81ad5e0c88edef26a2a85dafec1daf4b9462fc06836ac3bfef3b3343b25e
Date: Thu, 09 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775763453
