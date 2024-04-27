Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449301DFD9
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714233143; cv=none; b=ubnB54Pedy3e3T4nlK1isZc69gZIcFropmv2RGUVmOS0+sDydYYbxvuZPR+wsnCMt4E//OMO7sEpeJRzCQP/+dIW8KlqumtaKwSR5jc6XHTgd1p6nXBgE3tQpfWuGL7Kkt1D0M49yabF9Z4hfa11HeAJl2fGfljvEB5Nw74ICAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714233143; c=relaxed/simple;
	bh=QdNn7ZR9Lx0dM78Cy/4FbAQwlsjp2TB/Aw7rlv8R72Y=;
	h=To:Subject:From:Message-Id:Date; b=jt0BO73SgERcr5ocpYINWiELH+ysz2zX8+mBdJ2mgnsT+pM0BlcGiu0nBxknEH61omvhYOP1vDhJKewavkLQvP+qEsB1izHv0zr5oDOSOZr/VUlWgmpwVNI9SMRYQl8JAd8dolP7uXWvGmJ3eCJ23hrI7H50mmF0L8GJFM1noEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+JFMCDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+JFMCDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E93C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714233142;
	bh=QdNn7ZR9Lx0dM78Cy/4FbAQwlsjp2TB/Aw7rlv8R72Y=;
	h=To:Subject:From:Date:From;
	b=c+JFMCDKjL+oACmg68mpT5sCfbcc3QNR4AuuorTNfOQjpF7ciBL6fhXvppal2NKOp
	 HQDrov5RvNk82yJQN92jwkt24qWM64IR7ptWTHAdV9ePgPkxhKfh1TWSF16wG5uv6q
	 Dol9YJ5AG1iBrl/3SGApUSLdhWmI27tMnyJpXbFlqGJnn6+LxDgRTEbBnrF1x2RLrV
	 46OBL5e++FR0C9oD9MZ3uZj3ujo12lhOiA9LvK/SMEIF+YsjMXkp5RrClpbZYEmm1b
	 rzEwHSOxsCYbGXdqBkpmCXDCNLGllfFWnE/cQb9uyx0IOh3U1DMlhq0hwETCp40Bn+
	 oGbB50kJGvhTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF5DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423314275.28234.11705465951048360427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df7be8240a05fe11cc3424a38f4afb3a5403874814e952e255984fa175995c8
Date: Sat, 27 Apr 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714233142
