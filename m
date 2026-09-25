Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5408041A914
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790367634; cv=none; b=VxXahAczjgxwXyH7R78XBWTXfVM4DQ2rpRMswy0WfGV8uV/rS5I8JtxqfEocR5P0y0d0GATnyjgH18XyPeYAcrznICaG4bZCNszMEWYWdYVplzkaAOqNLt5lwTWNSBfiyyPx9cNHuTvkT+5t1/rPfL45kc2Dl+NoEAQjHxK7BV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790367634; c=relaxed/simple;
	bh=ol/5e2PpcX1tdjizyV+kR5DxKbHRsUZDr7SNQQaoHnk=;
	h=To:Subject:From:Message-Id:Date; b=rN6a1akBMf7Njv/mt65d/+hjqRgRVBNQPivSTZramPHsaDRQYB6EydJ4NgFfwSYNCE9ugS2OJiW7s7I9fGjnHDlnJSZF9U4Pdr5wdTDw1nglE5JsN037Ig+vZhiDRqBa0NFiBhNI5JrRnHK38+xAZYgvF9c4kRDYMMxJTODlrBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihY63LNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihY63LNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21DCC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790367633;
	bh=ol/5e2PpcX1tdjizyV+kR5DxKbHRsUZDr7SNQQaoHnk=;
	h=To:Subject:From:Date:From;
	b=ihY63LNj01l9hCocn+viPY7EqFh2r2Sr/Zbl6CCar0Qnyb2Ml09HXGno9kkLjKfzJ
	 +oOVH9d5XfgXNW11rWdIDDC1E1GvrAf+EbeEB2uGJdKsp/GVL6/EIU8v2mLvsfocSF
	 7AB0AVtTMYohbMq+9b0Ev6YQ4ONsEtZWIFXnUKEWNMPYlvg+EO3c1LS+tlXRTrM9gv
	 oNfO1sOZi8qsaZaDe09StxvZDDm2gSRUz5kTEOUIYCE4AufXSWWTMHPAB4UObwsDYH
	 WBDITZ+kgy887p9EvjsnCUGv0kAhoDzPJVhcoUo/9L1bm3Px970o2EZd7t0rFtmrBd
	 5QcvI5FdaJn7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE319C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036763369.8416.9247193692236473099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949fcacb61b924ae4fd506b94558e9b661753f196abebd799c6fe61c8b2b0e50
Date: Fri, 25 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790367633
