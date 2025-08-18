Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2DC19EED3
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755479994; cv=none; b=pxlfg6CKcZeGGF7KyDCPgOTFv8unglNt6DBPcgcrolQSMctcCIzZr+2hnc8+pzm9M6FWZWpAX2Jq4u/dftD3FRGC2Ifa3R9WK7XcLbYLqdQLuyGOKWOpqUx+wIiTcR5BTqYd3CPAWwfF58hxjGeFDkUmGT/IcptjzrN7hP8vJJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755479994; c=relaxed/simple;
	bh=rCECEH9hTudm+5rJQcuN2bnXQIt5XV4FZ1IP8P+0Tk0=;
	h=To:Subject:From:Message-Id:Date; b=e7I1DLdOgTdwq+q+n7RKy8T1pjSLcG/H8+2zeG8jZJwU1iY//+mgLErCUdJeFVBbf+GZdyXyPLF9dkkhn8EVRaiYqNFVknF/R7VuiWU2mhumJP/jIGccE/Vi29WO18zWhQxJtovUWPcVF/8Xm4lVv28NdFjkX2ckP0x0OkNUymI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqYJUNYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqYJUNYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA7C116B1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755479993;
	bh=rCECEH9hTudm+5rJQcuN2bnXQIt5XV4FZ1IP8P+0Tk0=;
	h=To:Subject:From:Date:From;
	b=pqYJUNYyILAOLSMOITiN9auO9h0jziq6GN7zmz6Tw1f680RwOeIXsOAslf23bB0jj
	 2uPZUvDVOhd9cwtSbMXJgTaBE6ca6eRirfjJLG1L/ymFjAFhXpGZSeGRtGz6YJXp3w
	 i/PcnC4KhNGOSu1Y79S7NOyqi21MxwUWUX5GG/oEQYli8BXEUNnWGPXPHJqUiicoWH
	 AK+E3YprgarJlvRJlN5Y6BXYc2NP187VC8ud8hpMbARaJCD6UZxsMJId10Cg7wBgqE
	 1eceCTMRWYG4taBcsG5G2QN27oInpomq3ExgTw6uJ9/XuBNTpWA1UGrEzJpSld+8AO
	 SYBdaWrHtgViA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F026CA0EDC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547999357.23362.7653656005856474966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7bce5e97c0caf2fdda9bc1a71f508064bc411da4c7b7a01be90475d371a69a
Date: Mon, 18 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755479993
