Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270947262A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781142394; cv=none; b=CTPVlJRRAaElm58JCnw6WwVKbTuhLcfea9S2iBOjZX4GF46wWaUfSbR50lrkg2pTRhJ8c+jc8Ah7pK8R12PCDiTycioZ3MaSVYIRZX8/rd/rVyNuYmfobtm4nSrf971aNBL/Yge+ogmOywLmYW1rVhFppQNOopm9NpYJli+jomc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781142394; c=relaxed/simple;
	bh=mkgqleE9yybqBYqG2eJFbGNFqx/Ke4poWeOvQRFAkgA=;
	h=To:Subject:From:Message-Id:Date; b=FaOcx400RqGsmfEKdas75a00KP+Xp2Oug+HwJ85pcKVKEgeGMj3803/DU6VEjNctOnkDo22xRU2Y4OEhJIWlK6u16awFafRoO1ASpV9Va9puz4dh2dt4ycQee6/w8iQvUiU1BQInVJspijo9TrS4fVTrKt9cgcsQXrX2JXIq8w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qU7ZQdnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qU7ZQdnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7998C19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781142393;
	bh=mkgqleE9yybqBYqG2eJFbGNFqx/Ke4poWeOvQRFAkgA=;
	h=To:Subject:From:Date:From;
	b=qU7ZQdnqPJVnScDjOaGdrj1pKBbgtA6xpLHlIUMAzYGVkB6m7dXmnTwbI5WFvk12N
	 8Iw6+Iz32yWkTGxCvsNENS6hMADsMMnThhK0AGjFpEg5de1uPALPGbke8IZO35i59p
	 ggsh4Dj7CPsI4rA6nEUgcFBYeb4Iu2K2eELST9JpWCJ+pv/zSYhavMOxybl8xFPOB+
	 BnNAnTs6o5yObash5D9lZQnrlMwnLK+TjUmaMnx+nXsk8xUSDyWOdIQPztAdr3wMuu
	 dBwxk/xNsNnNRQjONzwS2Vfeub93e5UFfitmMYyMfsetBGgZqDGdyzSoUDQNoxSfsS
	 +V85fwqnxfKLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE61CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114239368.32448.7180514061081331202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b1d31f50e2cfc68993fb33f71a4e7fb97b943520591ebfb39455a45af357a2
Date: Thu, 11 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781142393
