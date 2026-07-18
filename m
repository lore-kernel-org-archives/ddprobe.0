Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1D8366DB5
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784359114; cv=none; b=GdbKol6cwrgcZtvlJg7gvYJwCfaI1lPNGN+yTmi+MCkAkIewjU04CF2j9EgMvCH6QosInWyELKzHlUZWaef1F2GmOKBTAx3gVRj4fk9WTrF4/8zWqa48CeBdzoBrhwJar/U232Xj0alxaZTFjygudAGuYvNZ914FRf5QtqJjC1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784359114; c=relaxed/simple;
	bh=KD8BqoYgirE5vkRFsuc5gN6nxasAFXVD8qG25ND9h1A=;
	h=To:Subject:From:Message-Id:Date; b=m99VOAQCxLhhCyFdlIYuUFRaTVkv9QezOUChp6JqOosLzPqrUD71QGlU37kzRQCYUEsajxQQn4hFNphXy4dXA26hScV9ouyMg+hzvt3X3DFAw1JaErA4DqSxmKSPkcXiu/mEH9MQy2qi5PjXdyh9IW7K48fLYKWh8l3LYGmrGG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFjE/prZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFjE/prZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD13FC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784359113;
	bh=KD8BqoYgirE5vkRFsuc5gN6nxasAFXVD8qG25ND9h1A=;
	h=To:Subject:From:Date:From;
	b=pFjE/prZ+RgdRCL+Unw44ZJaWmS1KIGVzf/rQcjNaeEFLoOuJQeFCBnN5qzpU4vxv
	 C9nW/ATCYf9gd0xXGAb+ePi+6c7+GwMlvFIhoNNBiOpkxHMT/Yz0P3cd++VR3M9HLS
	 Yncv8H2mgYTroaepx65a8z84Eo4H/81GavG52NqbOWUXAqS8KrAXfsif9qHeOvZDZK
	 S6MHxn5K3zJjuygYpcuGwPfKCOeuR1XUcH3F0aiV67cpOg6Er2IBqklbVwOnaNodJP
	 s4p3sIiIB8ECIPN18g0YefaUAohqaBAeb6OGSI8HTDqGFtcfWRZNhciJSZ1dSB1016
	 zmOWaL7obzi0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EF7C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435911368.13544.14942577407494086056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b4af80c13ffeff016a42e5f3ba00b0770a478c645f498adfc8baddbc74921d
Date: Sat, 18 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784359113
