Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E722442118
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783520314; cv=none; b=XajFVAG0w7NMRDst6UCcOGjaxWdWZ9mk/Zc/fWDq1mDTgmYar9lZW3lRy076eyKt1X04o/SAuVzo3MMciCniqz6ixqArX36rtYy6XWKWzlmMVX0noXvxSYKV7DU8wpt/kWKNEthFEsy1P+LJAMUA1MmKqt4HhXx97ke3pyV157Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783520314; c=relaxed/simple;
	bh=KRQLWf8Tz1/eeg4iBEjNsR6/3MjAfyvaquVIMT02Jhg=;
	h=To:Subject:From:Message-Id:Date; b=ZvNeB8sc3gFXSVq4ijcKOlrXWIjSSStpvvGaunjFKen+IRMuVQouWyYivS4vpFedaqBe8XXG6/5KaBr6g7tG9CLo8GGRgq5F02Ud7KgZEDpWnNrXHf3zeZ9kswzjR8KRaZlzyWylX2bX6YZFYAHaNfvSkAMRwfbkvkl02yqYCnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feXSy1C0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feXSy1C0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE100C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783520313;
	bh=KRQLWf8Tz1/eeg4iBEjNsR6/3MjAfyvaquVIMT02Jhg=;
	h=To:Subject:From:Date:From;
	b=feXSy1C0mVwQ9xZU6o9lfa0eHyROZkHElYyK7lPQpg13ld4dpb7JgsmZ5Fm6bUk0L
	 7iZccwQ9v1npH1xY7wmFzPissoQURGpKWDW6ElnMiuU+xeIlwYLM2Gx5I0+oHZ6ud/
	 vZfAna5OGZG8W+JBP/UOf8RZdH/H5gPPjayGBCGm8FTySyyywUAAqEZJaFE9G1Vdzw
	 2u14a57OJQEw++FvTQ69d3GpA7VgnmQNEXPsJKA4XqrYMPSs4TOs2KhLbg2oxRsMyO
	 izg1ADTaNDgQ4N57SYXFMcSz5V1qf3SWvDwXXKtDZdFK4Zk32y+Rtae5l5pXr8bXma
	 CG4kUZWMBQZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC10CC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352031369.5038.13431415257560602215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97babcc6de8eb44f4a792d8c0b2f56fc62890ebc0fde37fffa032373ed5294c9
Date: Wed, 08 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783520313
