Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA721EBA14
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756220394; cv=none; b=PbuRgxEILZ5Cg+JpAHkML4GbPyBlLWdTjp1WsD/TfZOaHA9K3INoq7jTzJxpzThSC3klHNCr+TU52tK8uiUh+bYWWHi2cOEZyJ+HD7ThXpURc2m9UQ3M/l6J66xnNDoyL6IoZWoj4lvw5Z061hbirKl9uqA8LDX/FVzwNvvD0yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756220394; c=relaxed/simple;
	bh=mvB5/j0Ued+15z/EmQFnWvllvNimhwNQD2y01pqTzzU=;
	h=To:Subject:From:Message-Id:Date; b=X5yPIgCGuKsvcSJPlxxsVNOy8D6HS9dT06JvuapaGdu3ZxyiYSHQvo2arS617U7hqZy9da8qTWScCXtvLkXQDfykGL/NECsi81O6U0gGAFLo+5RR9BGT1J+sGNdKj5f/pXUZNMGnlv4WOv0LiRiTzCjhVJef04wDtk0Shn8zfXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaT8FpOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaT8FpOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1781C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756220393;
	bh=mvB5/j0Ued+15z/EmQFnWvllvNimhwNQD2y01pqTzzU=;
	h=To:Subject:From:Date:From;
	b=GaT8FpOJ6LOB6kmdj6veFRBZBt5w/EAwm2pzztqo8SKE669VCGKq3C5E3uw8QU4lj
	 p+hNAmVawYC1TujcvsawOEBA+jIoT8dRziz4zD4Kfc3fpJLIR/h8i2Zn1Q/57HfAvX
	 RNN+5shXQ6xk71zsmmknfT//l2JWQ7loIiykv/qXM2fu5qK+bGZMXna5eLYrXBr+0e
	 vfMYmOxxf9+zxBTwWCYscvyBhReREV9alYVlOBomqKJ9cyj3lCKFt0G33CnSef1LwN
	 ztDx7Zlbfa2oHeBIiMhKwGorEIoo5nSk+AgsPHqBIitLRXIZif/0jo/l3Sfg1Q77kE
	 gPOroyl9kamhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F520CA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622039357.28372.12645978982615261517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fcffc13e3b052b4204818c7a7dad876d54c051843020abfc0960eceb914b486
Date: Tue, 26 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756220393
