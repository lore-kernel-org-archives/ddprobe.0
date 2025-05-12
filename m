Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C972185BC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747082395; cv=none; b=NMIA0GtDmoYs5xRh1tA3YYaGystWK/AF3ELB6E2z4nGMUP4YhB5WVownOLinDndJ75V5Pdam02bK0jqUq0hLu3pU5mQRZpLs5kTnRqwPyK0VOAWFx6sAk2iVDSfCf0DmYXjqDIu+jKMkIgyj0vKsU0J4DkDIX0P7JoSq+eWWvok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747082395; c=relaxed/simple;
	bh=u2nnlZSx5lgvFw++w0dQLWwfHGBhq2r8cN86LTwy400=;
	h=To:Subject:From:Message-Id:Date; b=ewn/9mSu7paSGvUGTX85FkHZpD9kNS2TX3o4xst6PVcA2OXUSW78emx2ncFaLXJf46aV8jPJkq1TpRAhjMyr0vpdWKLPtVMG1RzMXuMmxOkSu8OBa+mCjcbAIxynxefOQGt3aYeSzrYyBtaYtlh5P8imB43VhmUrqCWU1NT9tUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uy0NMt5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uy0NMt5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86B0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747082393;
	bh=u2nnlZSx5lgvFw++w0dQLWwfHGBhq2r8cN86LTwy400=;
	h=To:Subject:From:Date:From;
	b=uy0NMt5NwvACxSDFrH6R8RUJoD2EU/Gx9/c/2+XDY3m6R6mj1D4vd5kn6Oi8T5Jey
	 lbPt2TYoFcy+EIa5/57OxFUc6MHvuCKONcEWENS/iz2bPTWrGEAYlfDwah+P0FpaJE
	 /CZ+I0hLfhm0lyehS2beT1luOeraNMGWYg7s4FcfmQ7+Zq2WSY4zpNdpiXsXFFOCh+
	 q88KnmjFv1YftiMPZ7kRMQ/gPyNBgkR9m0hmE9dLSaYzR9jJEnWPSX+TmS/MgJ1hCh
	 d6JBBnURVUdbHdhN8tITjMRw9A7KYbNvxI06WS7zO/SXeI1Z18arEKpbc9cjRUKKwg
	 JFc3toKqurdRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97073C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708239358.21805.5865193156571922593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3ce185a1cf3c6d375df18f0c3811cb443c8ea51fe2b94553e2e49c9499baa0
Date: Mon, 12 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747082393
