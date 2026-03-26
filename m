Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03ECA38F245
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774490694; cv=none; b=rQckxdO6e5lWetjZBlw0V5XQ5jr5GNfR2vH+aYhZpuZezsVVPaBP5ggL+czyYiqP7HAQiNBPF0QMS/oa6ryMZbH5iCeP1KQno8AkQtjJCdV44+hJDNvn/S6ZLb/jMo1gwvu3wcdbx55nh0bByq+mSrVqC0w0R1ddFEAeQO1cNI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774490694; c=relaxed/simple;
	bh=ht6kowtAZtkuPZ+xUlk/MaQFqG3XPtUsyrsrHkm2IO8=;
	h=To:Subject:From:Message-Id:Date; b=U/qBlX6L6WPRi8Zn9puOtIePqyExuVLYj95gFYKhosnp8+tPh5nhCiu6r2rZ9YJOfppzgYC/tpBANBCm1tC1N05FF5KS9YP4UBTTlL7TC6WIG3sWhKb+TebI7laYum1gEOazZha9o2jbbNL0WkNCDdH13QAOUHKJjQ40+q/blqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6v21PiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6v21PiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A589EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774490693;
	bh=ht6kowtAZtkuPZ+xUlk/MaQFqG3XPtUsyrsrHkm2IO8=;
	h=To:Subject:From:Date:From;
	b=l6v21PiJTuSKLBxZ6SdtLReEFjMiksDh2nle9iYq4ftGj1Ox00K2XFUp0Q+qt7XWG
	 FrckTrdvNO8z+BEZ+ePjHnZiLH29fgnaNHI9RKbMfkAFMKXoxjll3XIIXt+5Pj8ssx
	 Qy9BUHyayu+GhEv2HmQnQIAz4Mi/td8W4GC5vxbrfdUEQ/5imH1NjDl7T+bVPOSwAj
	 7YJ/IdjcsiTBlu8LMgOjXAreACeiC2BZHqVyKts4QMikg5BkhjGeDCzasi/OnTguRi
	 cM0Df7i0vKnlRVc0UAE+MDjZl2eIwwH9OpF4QGtUmcdXYK2b7kdoxeFUeWOG8He5OG
	 upy9IJV6Hgc8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9487D109E530
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449069359.17532.7424351758448858087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93be9510c923d0c386aa9e4ad687f9795c69d690f1235575245eb0e4a3617a7e
Date: Thu, 26 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774490693
