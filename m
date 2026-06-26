Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B01B33ADA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782444454; cv=none; b=D8poawK8ouAfSAY7daWICVQRHVwzYwrjX9aouA+eGB2JePUHMt/rsP8MwgELvUaemV4cfCVKVxFif62wBQBLx+isqabmVCb9H8WVQzbGsFd1UL+Ul+ULJFzwZ/ulpheLo1UncAXJGiiNmoeKRT1EBSgstyHCSlzrQM5LvC6IDPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782444454; c=relaxed/simple;
	bh=wO6jBN9y8NI4sZCXPxlRmWVW9G5RmJ1Po50wCA55n/U=;
	h=To:Subject:From:Message-Id:Date; b=BlCPr1BWrlxjDQn39PRZ3Pop4UydYPQ1Y//oF2eVBrrYj+96VNsZUhgNi/wawingveeBTkTWCPt11J2sLUIdYHrO+RcS1pQ1N9qqfTXnCkyadn5dCQlm9wpzkFo/fK7NPGjYahPEwbUQ50BIy3M4A/897kM6TA/DhFgSk2oEw10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0l29+3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0l29+3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAFEC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782444453;
	bh=wO6jBN9y8NI4sZCXPxlRmWVW9G5RmJ1Po50wCA55n/U=;
	h=To:Subject:From:Date:From;
	b=M0l29+3nCYy2JtMss/O8p2lf36jwBuImVhdodus/0XWElWFpQRUFywHr6NY8DqRni
	 QN1wl9kGk8MuQzAG2SXGedO/3Z94s2vPE7MMSO6shEeIEIJkKg3SY8rb9HjEfc4fQ4
	 ncwMGMLD3SiTxoL6ve2DY3orc/d25EHo62b/pB0K69AmHHgtCTyuVvLwggH0QO/24m
	 Okt3tENTcmIrQiD5vP8TRkwmrFUYqm6odUlAD+kR0B5kNSfiSedX65nzeGFXBgAEq0
	 etEuYwsiOPNwuFCNjXF2un6tQFkMTTLeAjt5qqsDIuOTn7SW4G38/0ndpQhvi/prUe
	 i/pNgU+6mEyeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20A1CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244445369.19575.12147206767094782527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126c00638a15b5826a06fa6e8dd77d8bf71202a14ea5e03ad876364cf39f52fb
Date: Fri, 26 Jun 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782444453
