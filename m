Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE673359A6C
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777507053; cv=none; b=hLOmXSL38Zc1JxF4sYyQF34GTplBtERlwqId4SK/piFY9O8W9ons/M4zHlwul7nN1MLcg1tQcVQpc8ENSIUspAR/bniT1mMxzRkUUGUFwI5I5i+V8PQbxBlclSiQjN1sW5f71XMcrkLO+tEIQN/Cn7QZqTamuSYW0f/6pjdC49g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777507053; c=relaxed/simple;
	bh=s6e2GQcp+z7rqEojvFxqYhey8MjJBCXcTZx+YEGSmV0=;
	h=To:Subject:From:Message-Id:Date; b=hIgbCCi3phJmv1lVhoQ0f+xIG0o1Vj8gycIY7dkd5/2X6B2X94WEcMAlD45ZXsFaQ29OGMuvH64V20zlcwMahVKjgRuO3BiZai1n3X0qz3oPDR9tewt8gZ5iSUydWt7qDZuaeDQKuklW7FvLTSCLs6Yf4P9oEBO/OdiNQy8LaEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuNJU1+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuNJU1+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74E7C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777507053;
	bh=s6e2GQcp+z7rqEojvFxqYhey8MjJBCXcTZx+YEGSmV0=;
	h=To:Subject:From:Date:From;
	b=PuNJU1+hxvKi3XTRXocG2u94TPo/o19/Li7x/YcVnWYhp13nKNNJp1b170RrZQ8u1
	 IiHY2kkoimCEUJg/qcQcDEYAQJzVRh+Ke8XWesCB2+wjvH8Q2/Qg1PLiiNwYeeLhqw
	 qXpxdU85YzanQ80FLd92JpnURF0SBRpYpD0X76FMY6lU599Bmt+gZ0rGlsRcHlD/cp
	 H8EfwDFo9YCcBR35ajYeWYxSMCNekA+ILq448TWOym0FJ15uunZa49aKTImWf/ksey
	 W5LBFrfFYFK5MiCB0BkpgJ7eUZVaux51KXEfiKCWdY6ZXZe938+CV6TRS6e2E2cYmx
	 j81vEB0HTSJ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9313FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750705368.17850.8346352130989173804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f72ce7a99b788f88f323f8e0c1922dccd3ed4d1d4d584e9c3d5554b8064ef949
Date: Wed, 29 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777507053
