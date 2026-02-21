Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150F31607A4
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771708494; cv=none; b=P0i6s2QnmB0VwzuAFiN32GJ4TsFEI9NhyEQcxiSPkmbWwLcDDsskvaEhh9PEJTRhaiYNdm10ayXOPzeJhluZbmPhqFGI8Arxy95UJTMF7HWE9+fSBq3MNI6ohd5KUGT6wNpS67+cUvLBUIQBGt7QY5wl/xrMVOhr7yKhtM0lAzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771708494; c=relaxed/simple;
	bh=SbJeHxdrNYknYaTMvEhUexMs4ihVU6ua0lteuDZ9km8=;
	h=To:Subject:From:Message-Id:Date; b=inrtIOknf2R3VmP17C87GOc8gcMVd9N4yfi/6BmKqtOsI26eXD5RdKRnhQBuRKI6fjcmxfZHNJcQvfuC6CxnFaVX76pcqyfm9/huA1deYnE6B0jHH+EFm7YoAPqpJSOVuJUgFVmjC7YV2FBwbY+5z6qpZcsxku/goc9oUce9VHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ldtn2nxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ldtn2nxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABC8C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771708493;
	bh=SbJeHxdrNYknYaTMvEhUexMs4ihVU6ua0lteuDZ9km8=;
	h=To:Subject:From:Date:From;
	b=Ldtn2nxffasPZuF5Eg/6+nEOJT0PZG2TrBW6AQCrlUS9ecgmlWRbWCxypsmTPQylC
	 HopzbQDbznOF3LzTAtxx1cgxJc36C00WpX/WgqApGhoXWstaPMgw4hMYEHndP/rWTK
	 awwjQVpnyWQWSXGjTAau3AUzlzESyG3zbfPB4E72l/zKAhsWKZJPK21yzRx/ah0OEo
	 T+2ywfR5MSoExxz3o+sfy+5kjFnAGKSXUs4WZqqBLEb9nYFFoxBmIpseRczse+dnKh
	 /8FF7WTuKiq6DWRh+nJN5Yb1d+OW9PjfzkkjHbPwb/2VMSLqqWRANkR/RkeOB71K6i
	 A1XvtJmX8NL5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98399C61DEB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170849358.29533.14388302888149104659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d601ffb37b4baf2e82911c5a34fb47950d61535a66fd27b91a160133ada84c2b
Date: Sat, 21 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771708493
