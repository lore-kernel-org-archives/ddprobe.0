Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE91A47
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751347194; cv=none; b=XLIjaUGcJhSlE0Raoc070ugGlsyyniR1HEbQEh+RKfZ86spLTxAg4jKcKKLfvfbPw7y6T9INujrll7qylLkn8O76RfQ0FuFkpUXm15QajtmNs9Zyzh6dFKv/i5ZoxDXO0hUt3hgMhjo5hS0oQSAiMiLAiNcx6GCZbadsN1AbetU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751347194; c=relaxed/simple;
	bh=g3MN5r3qZEGCODiA95zhec3wUcP2L5iQSnPItD7IhYc=;
	h=To:Subject:From:Message-Id:Date; b=RMJpVXtv8eqRFYAZ8x58IlUjpskoWluShriPeLr2/6ElNT+WVshL3gEngrpxJrr+lSoC3BmGmkl3bUAviGRPzWbocfFM1AEtks12OpHlwxcRFRcB1Y5mfgt6fZ56/B255qp8keXIae068krq5OJXZAX0I1e5qwLjhfDySb9PDKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9X32AwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9X32AwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F8FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751347193;
	bh=g3MN5r3qZEGCODiA95zhec3wUcP2L5iQSnPItD7IhYc=;
	h=To:Subject:From:Date:From;
	b=D9X32AwJVCdEiJh0/aOiJagwrxhz8+pKt++MxBxBkm6sz0cdXsTbr5vsjEpPn5qIW
	 51wpDft0SSA2l325SRkVkhztUq3zacl1SH7eCqUru49gw5IgPMOMAmQ/i94TCZLfxv
	 dNSyq3Nmg79qfcvcvsWpJRYgTS5AbzUNpvcTq2uzT6D/wNAR9ZWsGd6+lE821ZlShc
	 4msFLvGggTPzniE0F7e/CdfKc8I8RWdPp2td5p1qOwJ6U9kqMJRNvBTmggfyVO9KC+
	 mMCZMP+dvveDzdT/y78DGeRtrtO8PHmmvk6eQ9cYSC7V73fJIeXzunA5A9o0Yu/BWN
	 tF6xrwh6eyL4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE6AC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134719357.15440.16779147593653907028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404b5d43b0d9ce1e30604d773181afc9e6f8784b506efa86b4a12e433b8a131b
Date: Tue, 01 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751347193
