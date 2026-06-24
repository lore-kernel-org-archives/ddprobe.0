Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4988F33ADA9
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782319654; cv=none; b=L1CgamEhNW/VzPHASwCsBZ+OsAmoAW0uCLBheNd9bPHYslBdLKHCzXcga3zUNIJ5RfRvRAHvrdyw5Ygl8J50Rh3dByk5tb3H9P/ByD/27DUXxrz3b3EkDv7ghauOuqTneSKyGiDhqwIrG4+Jv6IbNxwmCcjOjng3CM9idDu8gzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782319654; c=relaxed/simple;
	bh=G2wVbNiTgh5TidhqafG0yrldhzrlv4J7mj6KM1BQb6I=;
	h=To:Subject:From:Message-Id:Date; b=uQ5h8PN0p/5VPO4YJgpwpfOI7A0beANSzTpufuWzSLwMyAR4W6tgiaQ1z5qhq1nJQBDPX9vBKa0gefza6cSIgstVdHYIzYiizWOyItFMn0O+T042BHa4m56WK7YS7Fyck8CX5ShnPuRrpoe2Y3ogEZUmggLr/5AJ/TvWSTXZttQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9i9YAKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9i9YAKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D619EC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782319653;
	bh=G2wVbNiTgh5TidhqafG0yrldhzrlv4J7mj6KM1BQb6I=;
	h=To:Subject:From:Date:From;
	b=M9i9YAKNvZtNoFSSumdr03p4qtcsQri8AtJ8S0+2+hjmKGwXLiqKojAF7AnKg1LIx
	 WwDo1iHMWovtLsinxHIi7od3b8jbfTmNTyzEHAfvTw44VUrONZvQyi4ax/fLlS4uaS
	 SjHOO/Sv5bkf1trai26lfKutylNdNptBFv3OjkE0ROmEI4xVTMkf+nxlpIN8aRV78k
	 9YMgV2YmNyrujdJgz5lbhtCpKmg6GRs1g85vdECx2s5O3gw7FfqKzGrXA1pYZu9ffu
	 spOqO3BBWss6+YYW1V64w8sH6fQg9ut/brM3gcr/bw6WmVJSNNpqAYF7R8xfwVMLiI
	 P32z/KoIk/kGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA75CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231965375.11964.1675037813975739393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d095f77cd4a414c5d53a43e1f974325af04c7005797e48bb98b286640948cac
Date: Wed, 24 Jun 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782319653
