Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED072566F4
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741695535; cv=none; b=tK2bFkj47IzsOyCjTgTadGjtofELu56JRb5r4sJJTxBeBOvjE5vYrla6Tner0VXMoZe3MccH5eHbbGsBLhcDKnOwUrlysjZzzW6ovDz4SeojT7EXdNoI974jKcGuyXcSzhhs5YeYUad5zui+Ah8aPoM1tGqNIaM+jNFgkl5hwXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741695535; c=relaxed/simple;
	bh=B+CTaBkPbbj0mMOg0/geBCtbZbUqjabpymAUWAl0gME=;
	h=To:Subject:From:Message-Id:Date; b=D0CKtLqixfkKKZa/BgoiSTgod99ptMab9jSH4m/+RN8+ZPThFvYkdlPTI6umgqciNHw3CeVPdazOPVCOVXaLiec7xod/TOhvArs7z6WPVnCoZBxbjPirl/0PnNCA4mShSKpD24bImEf2snLsrs6miUl+tiUYzrCJgelHHhJNNB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtMXtVxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtMXtVxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83D6C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741695533;
	bh=B+CTaBkPbbj0mMOg0/geBCtbZbUqjabpymAUWAl0gME=;
	h=To:Subject:From:Date:From;
	b=ZtMXtVxvtMDzvXOF4dzThYtbSwJ348mfK0nOQLDw36fKfVcy0cIzxSvQk1g14jWx2
	 Jgp/Xypk9SiNMCDTMu1ea8x6TU8famwUQ2XVsK8SSkJEG/NsUIZMcTWLwXP2I0RxZL
	 VMFgcKwkCPwl3DtjJSsTe3vZWPOulnrreyyeRs7C8sO2CiO5woVCFowLT4ThpFQlIf
	 ZJp8GhRSn97eZmQcAHP54K0Ke50g0sbGZ4u28Ck0XrqeYQaJAzBkqGVsi+4HUJLNlf
	 Z0qnICDftG7gTV8W6Dj1ZmbZ+O7uRP3hrVfhG5akC57EO5A0lQMcODCvDf539FdNOL
	 TIl2l6gPmJpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA0C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174169553357.14215.4354584731717976326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3ec82b504aa707c0929f8eb447184612f6606a21d09bdea94e63d58bd89a2d
Date: Tue, 11 Mar 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741695533
