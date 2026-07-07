Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D1543D50C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783460314; cv=none; b=ZVrn5m9/E8smq2jcV3dE7IWJkQXinP0mNcFsqjZEA6jdlTZE8RPg5zTAJgQ4l5IDvGMrg0YipoJJ16U2GUirDwDa7Few7I5CHID9W9Znznyh2y9xz6+VE66J4Smw5SFmpgIpV8FGjT/i1FXPsaPEgqYVQvKp2ShDYb9YEvL9pd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783460314; c=relaxed/simple;
	bh=6CbPV7U4VVnj7BIfcnXM9pSc8sQcubfcIC8VVJ4WqaE=;
	h=To:Subject:From:Message-Id:Date; b=GABR3zDkcgPkBDOcefa7mJaGseGMY5MCYs3akSwqaD97ty/JFqQGPkvfDtpC7MeWnRKdjscgehZm+C81HxlMgeqUJvC5ARQ9DcyUyJkV2u8X55zo8dy3xrM0e1Mbvb6kzV3cfXogQkgA9Tnm4VfCYYrffOmldpb3dUgBDxTyX5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lzs6P2Z3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lzs6P2Z3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF74DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783460313;
	bh=6CbPV7U4VVnj7BIfcnXM9pSc8sQcubfcIC8VVJ4WqaE=;
	h=To:Subject:From:Date:From;
	b=Lzs6P2Z3gMG8a1jeN97k7ewM9VOBlPq/ZiTKA7tz5va4kX0U9UGT6QVl5GZ0y8yNg
	 RvY0i3Y07k5EDichN3UN2XTWSRA6srXzswYKViYPh+4lH/4UfunUVRInJb1otJlLl9
	 oT3iKliCjgqssSiD5m0vj+MS13y7t5JYZDNvsGwo6Sp9enjmL22Gm3SJApiyrx75kE
	 nqHWq37mgGMiWjwMLmEKRDKzY2m+A/FaQmOEgzJTv55KcX9+H37E+KxNn45GtBqSFa
	 /XFO4JRHftIAnvqwR/GnY6Ym7UxuGCiwh+Scn3V3ARiD4vuiV3Okg55/Ik7DcSEhcb
	 8Eqbrpt36hzLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC5BC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346031368.4476.187303206384117692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93dd8c987fb669f221727b9918e2efc4ee6c1458d2a1e2ba0e865f484d0a9feb
Date: Tue, 07 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783460313
