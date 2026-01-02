Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288ED154BF5
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767320034; cv=none; b=EfvP4LnWOHoNOB1PHY5uFBQK7H5ndx04nm4NiyxcN/Tl+P99SxhhdDAyInOY21o3zO8H6mFP62tytrqAuqQ9+PFoyFWJWzUYF60ceYBjPRxwhmDnuWSZSh1YiO6zp/ozlVkn95kMBorRxI2LM6j8O9LSKCsfQKysQEfWtfnpivo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767320034; c=relaxed/simple;
	bh=KRxWbLuWdEx05iS7stjb6QK/VPIWo6eDab+TsiKBTh4=;
	h=To:Subject:From:Message-Id:Date; b=C66OQz6WR8LSD0FFNWt8/wYT1Pv+lpARp9YqIksxxpY22vVQzbhWDcAEu7xRJRe8iyEDFjg0MlOI6i/ZRRdL3gUiUjanBsivUwSIU2ebb4TcNva0gIajXZS5+Cnq7Yf9FnuUPPzVWVfoehL64oX23nmD1wTjwQU4DjePowC262M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNEkkXT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNEkkXT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85FAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767320033;
	bh=KRxWbLuWdEx05iS7stjb6QK/VPIWo6eDab+TsiKBTh4=;
	h=To:Subject:From:Date:From;
	b=RNEkkXT8hteVNiBPKiOe04QyKuQ4hhiSXuJ5EFHAZr/s06zj6k5X4nlEboI1VJHre
	 co+3ueXGh0MbiVQYCeWEMEzgBpqqi2/UftWsyiwMDMPuVsOImCUtjhCMfSVzBbPLDr
	 qz50jA/dylEX6TM/vB3Z7HcOs+8QthXTr/Xk/bVtTXWbaGfUGeQKEAQCYPKuoEGOie
	 8+QAxtS3AdeD/ciySpGYODP978n6w3d0WoQurG7eiAcsVue5Tt5MAj5OPduU0BT8m5
	 brhTQGm110oofB7iwY7TEeb9ghvXdj4D+27xkjyxHfv2CITCAfC2Zh5bOO9R0qVIwX
	 n2fbG/DB54L1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95575FA3726
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732003358.4520.3918852129961744633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e4f7e3c3ade9f88dadb851789f91d8392d51903bc9c0e319eaaba92251fa33
Date: Fri, 02 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767320033
