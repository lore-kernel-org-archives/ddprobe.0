Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF1641C66
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 18:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713206363; cv=none; b=cTvfBH7kYmoKqLyvLdosCIy3F1+v/qlPBuO++ZX8B621roQAf4npbDh+DkCm5dRZjJAVItGNTBhgimaa/Hja0gSpyratKYXvXc2rXSEZxGvPLmnttl71zfqHmPJaMw+VUer3D3mDLdhN8Kny2gv6thQE+n7W+KrQv8xS498golQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713206363; c=relaxed/simple;
	bh=FIaki8PI0AFSZjUFBUKuhDK/1G37hkXZNQ5a2S4E8Uk=;
	h=To:Subject:From:Message-Id:Date; b=i6U/yInCbOf/104wKBFAp7VUcvohwVGCrLz4WfBtcNIUNiEHhdpV7QvglLJDLSWZ9IHlRprsywkzOIOTrBcsEdocnkNnkRnsDg9DLsmOI+R8puPm+OqvcLbBaq12293b4OMgFvnfVIj2cOaZC0nyovJW0OFxAa6U1Eyw6d2IBYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Im9me95l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Im9me95l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8624C2BD11
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 18:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713206362;
	bh=FIaki8PI0AFSZjUFBUKuhDK/1G37hkXZNQ5a2S4E8Uk=;
	h=To:Subject:From:Date:From;
	b=Im9me95l2NioltUOp2FaIg2itWA/m0qjq5GF4/kBoBpZFopeRVxcwGzFYTmHxuWJW
	 R9yFar9abNWoimgn3qpUWn1M1wDY8uB/O1TzPSbqB+R/swAEEniDbutaxIHTPLynNJ
	 fPYGbnrdLoHUvRPjzQYkQM9h8GFaw7FvJLLT14F/cvmiV12y+Ig7ZrEZlR/lr/QyGT
	 jd2X5ILNDL1MfxvcJN4qEar/pnCghG+oGPlUCLRI0QEEN8VB8YwtZTLVeUhR95gX9J
	 ZsPCvxdhJVsq9lQV1eJ3viKLlybGJB3102mlbOJnKdDXF0m/cq/FCcbjg5bo06tExa
	 F/EVWikiaWw8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2823C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 18:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171320636278.7923.17437049226186355581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4f95863dfd07270fd5d2a10121d64c416a8a0f16f4aa5dea18cbee9ef99de6
Date: Mon, 15 Apr 2024 18:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713206362
