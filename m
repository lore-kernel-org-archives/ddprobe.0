Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A1B3B27D8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779219634; cv=none; b=Po4Zb416DV4QGA+Qhpj+CbqeBsEbBlnpeIe5+aqVQSa839QqW1OiSVppRM+pg1InqhJhKsW904rsJDLPDtTI7wPZFxGfcjkPu4aphIZWC3DNDEOQqy+a/YfapbydQCUA5sz0YeSusQy102YDdOh+VecEOGUZ99anjhFjhTimt7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779219634; c=relaxed/simple;
	bh=E6bfSUQiFhp/7550HlSLRnsxY4cpUR82SJELDlqvDt0=;
	h=To:Subject:From:Message-Id:Date; b=oCO6f4jxYkpYag8iJdpVSkRt+Rgrj3rkfv4VcBj4tjkUztBGM0EK7EM3h7dSzAVINBz+MZhF+OXRRuDoUJ4XSue/XzE7YyZIdzecVU879X3yp+z9wKxPA7XsO6o/xwYfHQJFZQ0qvE1Q8a8+GmLHwQBSsSjol41vj7DLxQxMR1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pk+51n9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pk+51n9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CDAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779219633;
	bh=E6bfSUQiFhp/7550HlSLRnsxY4cpUR82SJELDlqvDt0=;
	h=To:Subject:From:Date:From;
	b=pk+51n9n/SKfKG9HWZ+TWsFZdocy5j+uDRXtSSxkYJhXR15zP+BMtAx2lV5ovVYH6
	 3h1LQJXGIwHvaUpQIToPjRZ7703ze2XrMOxRAW5V40yxkhNvONywpjZOrgfpa2Txtx
	 ZDMM1NVkfn4f59tIw2GrdFrxwmlL4Tzax72hMya7rdp7LSAMCscKeXAWYImcSP8eyY
	 yK0gcQ8lbfBrXI10Ibe9KOwsZPQp9sDmDUG03ydZtwnc1b1wTUAG5jlr4PjnzLnz2I
	 h5AdMk7Yic9qOpw5yeYVR4faxxG2LYUmca+1sd2thhl0pBgK/cEzz/ibjxG1RfTkPU
	 +gFlaOPDDEqAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEAFCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921963369.5199.18258886166354976173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba61dcd6f7351d4d0eee840e752b818b5d971a2c0466821460fb1668e4095e15
Date: Tue, 19 May 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779219633
