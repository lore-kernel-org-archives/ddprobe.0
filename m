Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AC42517AF
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782340654; cv=none; b=a6jukICqEbqIiOoyIdEX7zXmUd5HTc77KZ3YOgJOzVBaCgOu6Lvrjt3YjZvUBgA8BQUbYoYreUs55rKKBu2XxqX1yiCxMO86ZMK3SZNSDYySfPlhxfRAeK8xqj2OMa78vRHrk973FSQyP5u3eyFae/RAABX380EwQDtNVgFgXEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782340654; c=relaxed/simple;
	bh=zezBW3EMEQMDBAGMqTXZHE46UKwEikNJB6kXyz2lKLE=;
	h=To:Subject:From:Message-Id:Date; b=rDh2+69ip6VnfwqYKmSAqp1WFZ4h4S6b3FC7c9d7PdMIwxLXyrU4GkTbRuDxDfPva2Xw+mz1IRHVi/MjiA9W6Y8yckguDARkD2LABhMwZoW937UryuP+RzpkLkV1DWUjwMMWmwdLsBNhTfziD6i0ahkFgObPwABnTvZMptO6DOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fi36qRG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fi36qRG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFD0C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782340653;
	bh=zezBW3EMEQMDBAGMqTXZHE46UKwEikNJB6kXyz2lKLE=;
	h=To:Subject:From:Date:From;
	b=fi36qRG6a5I26TpAX7GVuF5RSeBxFQG4TibYDAqI6BZLdKYkFYXm6z36FjZlt6ZXx
	 km/vpv69cI1r8gIsAXPX4L0acaLXfkBYsnFGehKvVbFIYWhg5INjAS3TanVupuldBQ
	 cvxsmJ2kBdhqd4EE41tmQWrm7VjMqFXIVatKAscN3GptkHmPN6ILybnqASxvTxMfmP
	 pSHbl4VOSx6cQIDziwjO9YjDJVL8yFgIDUM/90CwTvfQCIpib6NPV/RwhGqLsT5AXl
	 rTouUxA6DwSMDlcUf/z3ROEs3C7i4bxqZaWdRFTT82WKmS+cnSt97KHX2L/eMX7UTo
	 UD1jjm9MOvS9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B459FCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234065370.16962.2118188588284224821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de14ddd26a784038285f435e8a7d9423a57997dac57e1bc42af2804121a90c7d
Date: Wed, 24 Jun 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782340653
