Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684AB2E3FE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790831434; cv=none; b=O2J+CfG10wQaEOdLlhQJZ4XqaVZmCRWnr3eYKDOlAp6yPtOyRdlih/miBKTiL80HATt8x4L50EEB0q2RnBavWAV2mRQA/uwcw3oJCpj9JPA3SHucLwUwhYQt5zJEnH6c/t/275g7rL2lMy22xBP80QbaLIaHO+srCiOGKvE3CTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790831434; c=relaxed/simple;
	bh=RamZ+KCG2wa8Z6QGwkAGy3lrG1qXg+QOfztLdllrYLc=;
	h=To:Subject:From:Message-Id:Date; b=S/Uk9iTyJSDfPCxq3+T6ImVznZiHItcxdykeKJeJY92RS26uDcMvXK9yaUD1CTLqxw2425HR9LwSiXtykMCenOw19v63OB0/77xNQOLB3poDwosO1/25f4W08hzp/jm8OJb6bc1z+GFASiQW2beQkvIFukQfnuagl7XDxtwNnlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jnxjn26d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jnxjn26d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6ECDC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790831433;
	bh=RamZ+KCG2wa8Z6QGwkAGy3lrG1qXg+QOfztLdllrYLc=;
	h=To:Subject:From:Date:From;
	b=Jnxjn26djL51yHuqUyoziwgfynTdqfbn05jz5yDjfHmYT7q4b3fv10bhFAxxgbW9d
	 BodPmHEjIn3W777/YSMfcqUP42bDXYXF18g8qgWsEXtE/ZYW29tqZUNB7Hu4gfCC7B
	 0M8uzOQFEQGe+xwPL2U4sCBJo3IXbfBe0FR+/hKnjzgFPf+/YW5uiMGcQUCobe8+ty
	 CQAUlhUaTAjyjgvWMveVW/5lcpAQXyeDvvdOKRkBiJdhgL/AJLa0LK/hEL+SAbebkI
	 uFbF1UVl0gBVtZt7Xve24P+AC0l5QhovnvWo2LDZ5S3ktA5GB3ZnHCg3xB4rPHAjCx
	 UfTDRFkgkn8OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A0BCA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083143369.29726.6871510165644290454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8203a19897cdd6ed53f8183b4ca11bae644e4cf0d2f3c06224d9766a5c5e03b
Date: Thu, 01 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790831433
