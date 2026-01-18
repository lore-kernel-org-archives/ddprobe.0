Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F0C10A1E
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768701834; cv=none; b=YlQxvCXUhEsiLRkVmeXYoyFZXSYp3go8HSB3Qi4hQJfgen3wOyW5mjQRS7hute2OHTvJVsVuFh37L7YO6YP1jEbs7bnuSy3vzxpOVSF0wDr0fLNz6KG2HU4uGGmsYDTZm5jQ94RhIhVE4tnb8b1OV5Dvlnq+JLXYXktP5enTxbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768701834; c=relaxed/simple;
	bh=zurAOOhbqiYI4dkfK8TeOd4VtdekJcTlaKXplPzXiJE=;
	h=To:Subject:From:Message-Id:Date; b=kZIFBqn2+hHEcRq1ySKe08cErNdnOqdqrnp1fht4lNlJSYcIKD9tlA0ZGtgDyGKTxlt9ju5kYa4WZao+ecpoYnBrgfvJOu/jpJ4+tOgmry1zyrCH5WDicUr0QjvrZDY5KXSj/ZWh1l20J9qer5Xv9KCEbfln6GqXGJGlF0Wk/Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9+V/IX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9+V/IX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5B4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768701833;
	bh=zurAOOhbqiYI4dkfK8TeOd4VtdekJcTlaKXplPzXiJE=;
	h=To:Subject:From:Date:From;
	b=D9+V/IX3zpKrcmqqI0kE7PVEReKQYTlNgIxrYwamVy3Fl3N7+vePRvFc/4jMTJjjr
	 oOIFlksNu/onu/mho6v40HwuLUhVkRQrYYGX4FqPaMXfye0OPDpdzQquTfQYagNKLC
	 7ScrcFDVn9Y+mPE/eRoQdKGXCCHrxqBDdoIQOjXiPTLZzcLKOhyxBDHyFQ2K81I3KU
	 inurAyu59WZl4jdvSq3IcS1/lqtWdaYySk38DN7KYwOkEPbDtorTwViqpXh92uEIZu
	 DuWj4ib0vwT2V+rmOHvPAk/eoECcNIhBHf1d7jMwOau75VpthGzH3knNYjytCzJj1L
	 DcDAYO0zeFg8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93829CA5FE1
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870183358.21918.3517129866584522789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6d974d48f0ca5689f2bec366a74bc54814f0c108c5c2e3c2ba7c79a1cc9596
Date: Sun, 18 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768701833
