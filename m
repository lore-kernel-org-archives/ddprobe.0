Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA044A3D44
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792329634; cv=none; b=LcubWTt3IvPH+17Tz3SltxBafBmzm7mVkiAsiSSppe4qsGfVjvMlkSvW3T5UNzn4aN9DGzpWHCPphoD8wWtiRv2Glc8UdtzRDflR6HVCww67couy2ghE6pZsV4DQMmu/2LEvPAcDMf90PLBBad+p4yDdT9qz7XALohXoVvQ/G+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792329634; c=relaxed/simple;
	bh=jqu0DD80H7GjP5sq+MBBJ5+U9LaEqdrYG/rwSbLFpPg=;
	h=To:Subject:From:Message-Id:Date; b=hXSXHVq8ZAnVzmn+jjQJRmTP4Hd81ttesDCi9L8CalpFYgWNFNvNRVFrRpS8Sug9Xo1ucPOfNhQ1ond/8ryRzBPiL6veABn2QHmitbOF8Oi0K29f30njttOdEHEyUwrPhdctoZIxKWAx/hy3PIBFNPHu7qZCIhS1yU5MOk8KdKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIUKmT73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIUKmT73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC43C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792329633;
	bh=jqu0DD80H7GjP5sq+MBBJ5+U9LaEqdrYG/rwSbLFpPg=;
	h=To:Subject:From:Date:From;
	b=XIUKmT73cArI7A32subuv6yicIHm/vPzVVyuiPDPhUGRL8sD5cnerpLruVX9z2RVE
	 ciZ+WYyh2wF22KhmO9vI4m3wZ9uE/3SRhvdrop4NHBfXaYV38cab10RLoX31T8LyCu
	 ij5FvFhsV24VSwY1cUWNRYp6iMIjGlf1TvxLW7/RR+dV6U+/wBRFbK0xFn/bD9I5ww
	 WrWo12ADqW9+gi+ZYpCudDwEYuwbtbGe4Mwc3O7PMiUaJ8E9uW2cCvUtle/ih2XZ9u
	 PbX8lh5ouUTT8IruZL71i73A6Dbi5A/PsAwILAKdG/gRY/7tP5e0L/I3+YP1Dxyzgi
	 d2g9ZRuncgvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA057CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232963368.30767.4130759340962974835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ae67b71101024d5bec1701e03bbb7b3f0246cbe1d88d6eb21a0ea5f2393f36
Date: Sun, 18 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792329633
