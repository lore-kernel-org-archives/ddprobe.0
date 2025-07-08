Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3552E11A5
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751995794; cv=none; b=UmLgydAx5sKcwlJSrzmdXeDxEz9eXUM7d3sR6iNL1gz9yXUDpoeQr852X5t93UeARjIJzvLAyQmFOmSkw80srJsFPSg0i6OUDqzLXiSKhZKZw3RUVvlOU5cNNwW94AbiFPbN/wk0IQdOKvnqid6gMUtghqMsMrmC7JmugifYiwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751995794; c=relaxed/simple;
	bh=ifN+8VtMmsPnFT8hZfVBGirZhZDYidFX7+KsOHRgtIo=;
	h=To:Subject:From:Message-Id:Date; b=LA1Kf7tMdItmrK+lnh/e7fXtLYkfjtl8lprqwgAPaTpb8qM4bPTQf2f/ZWNWrQIV7zhSFeVsn+nh/BQ+GAoZHiVBT6f+RwI6aMBk8qpuTLMWSivBnqz59+VMHL+/4cMo1RCJFjtnZnOV3wUhd926jPUFadmTPeiYf1+FH6/68vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zm4NhQWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zm4NhQWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A878FC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751995793;
	bh=ifN+8VtMmsPnFT8hZfVBGirZhZDYidFX7+KsOHRgtIo=;
	h=To:Subject:From:Date:From;
	b=Zm4NhQWtOPvemvS1L9WKMBY6VCvsAwn06jrXLjl9GwzajDeMjOYO0E2IS9hmfBRhr
	 SCcpf8cx6GZiym1f/qb3Em2bnk7ubwWAtGnKBoKiyjznD+GgZRb2VMQ5erlmPTWKA/
	 Cokeo5jqxmcsdx3C0mJeRMEarfqL/moZ7q+d/DbHdEYSmMJPv1DHjJv/yLOORGLY/x
	 vF1+RZx/vAeglM3y3fjrYlxtV89HaFEHi2bGWZ8+m7gvMNYcTQYXw7+tKRVkGPvx+8
	 m9PKJWzfifRLGVPZyGaJsJZD/FgjAnBNodHqUfvjlKvLCq3ObCgjGuSEha383AV4vE
	 hUCBFWlElwMEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94868C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199579360.587.10062955715751541973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabba3cec8a0b94b945eeb5a1d5973cdbc8ace042593f47e2f995f61116f83f8
Date: Tue, 08 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751995793
