Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720FD364
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716854663; cv=none; b=B7AXrcGwfEKRdAv5y+3p1as2/4N9Xno6wyjBQ/YSG90wTOqMa1pVrGB5m6STENisPUc42Zc4043qtgWkFPCAZd/+i6gp1jwUX0KOzJjf1AytroDy043ZVotUtG27ulS3QWlGS5clniDhgRFWoabVAU6HpK96fdr/9KV387e3HVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716854663; c=relaxed/simple;
	bh=UetXA79hCWOGQZiAee/cAMsuRpMWCoQfhu+hlSdatYU=;
	h=To:Subject:From:Message-Id:Date; b=ZKez8qDkkFz4VeAI9cqgLGLBf7v4n6DHpe/Nm5IFYBWy0Fe8orKcDTjEkR1DH0OapTsqKx+GaUOyLTtlMpaDxrBI3q4h84UEI89EQW1XaK8q7hR60g+RV3sJZH7w0t1YgSfHHiv0jm+E5EOYJRlSsvFJ5jVXKi0E/E7RCn2wpvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNF1huBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNF1huBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3F00C32781
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716854663;
	bh=UetXA79hCWOGQZiAee/cAMsuRpMWCoQfhu+hlSdatYU=;
	h=To:Subject:From:Date:From;
	b=VNF1huBe3SQ5VcPg9gldl0EPimfFR2DG4MO+X3dLC8b9/QhnMrzC1Npb9yLHijLZC
	 4+6zW4YBf0mVcv9doppLdoDbdeJkgsWNJW/zuemgtUVFC9zrZt/s7p3gXfSuLcAy0S
	 4AULHbqpQTpOy2OslGaa6wDu68Je6Ezd6UPfz0WHY9DhaVDWlITSdvuC926xz4Rkgv
	 HsYZvj5ajq6Fz+rD/U8O7ZsSttskNiOFyrOtTjuFTS9Dm7m3Y7BGfBut8NzPMQcqmp
	 K4WdfyQDhAbYG6qPGhAf6WObjZKa3Ly1tQU66Vvo0m+nbvbU52HmaG+QgNxMRQofsa
	 vdiRd/bCdVDTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5805C25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685466283.20216.2470813427973757472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923a1843bed7386a3a98d035754996055cf516714269517ce05e7713a5aa91dd
Date: Tue, 28 May 2024 00:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716854662
