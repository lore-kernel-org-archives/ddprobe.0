Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57621C6FE1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762822794; cv=none; b=G9VZWreWct2fKOGbZK8nXRqQaMv/fAKWVZ0Sx5atbJMjsGbXle0FoTxCEav4mn+l1EBrqCqHzothERG0LvNKkT8WklB8+stzw4bZOWOD495ejVjBnbUn324oJJJLlBNJVd06n7KROiA52Z9Jo1ciFH+2UrVrR4Pt1m2AqAaMs8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762822794; c=relaxed/simple;
	bh=2+lpa4VSO/kokNz+QquFq9bnuNUpLVJUFM/8UaR1tAk=;
	h=To:Subject:From:Message-Id:Date; b=KChCd0lXleoxCFuq93isnA4X3B3aY7Q3/f+Va/43FwCSoa9Ayr9NKCpzsXfZB0/fxz4zIHWLX7ll66sF0OSAKiK3h2xS9ft15nfKzwh9iHWG2eNZqg2uc9mdYGt+Tk68fzMdbLBelIok3Qb42jYf1D2HJok78mg0YOwTg+YZ7B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=od/8PtDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="od/8PtDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A038AC19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762822793;
	bh=2+lpa4VSO/kokNz+QquFq9bnuNUpLVJUFM/8UaR1tAk=;
	h=To:Subject:From:Date:From;
	b=od/8PtDnWRB0huGwdlytwDd3J2GGf5gAmHHEnoebeCSEmGd2LxYh+vFCf1VdBXQjg
	 mvFMOP6KWbH5UXs1c7fTRzdrWo+EwznlAqwcQnRRTLxQqwINB1xUohCI41/4+ck+y8
	 QDU/bkjDNI7TQbfy2gNOGaiaZ0/neFQzSk7nuqbNktWQNocumVieeKFlENCj/KCkbf
	 jzUcnEOpfQ4v1atGdkPFvYtmElhC6mcaq7iQBVL6aTeHL5IHbcIsAVgCv7VzYnd70a
	 gGaco8R0Py06sh0Dk5gCLUoDMUqPsjn5SzvOzFbJl0AlaoZ33rCrPjqYw8jklJIKe5
	 /VKyZztGp1kIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92737CCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282279358.11086.1878966423941783068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7336adcd6abd3214050165e1166bed39d850fd50e8f40325ad9876419294a7
Date: Tue, 11 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762822793
