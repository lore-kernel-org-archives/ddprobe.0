Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11722340277
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762964994; cv=none; b=aoCi4yFMqNRDY2VTS/9m11tdc8PxreHTVXL5l19GS26NdFc+DQmwNHfqBvNCPCuY9aQXovijxEQDP7OLnTOIhDrCN9y5QK6ajbU2+1PF5VXCcQDVoS3TqDE3cxSEev0RbNfmF5N+Z065BMjOEoLwWBgk64ntNRK4WcDj1S5rjxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762964994; c=relaxed/simple;
	bh=sUr3A9Xw56N7HmevCgDELCGoi3zwTDuPaAyGyuxKYB4=;
	h=To:Subject:From:Message-Id:Date; b=gfZ0W8+eNJhGiTO31XCdIQaBsrKofeTKLGkywrcJ8YEFbMH4S/qmkQIR5RgR1AEwxSFyJkdaTHi0un75DHH7wUmQxdH+4ZrV0QXIMqq0/qac1jq2ll9aJKptCCGsKwpZ5NFByoGev4byh9JZ3kqD86Loleo8F/gpvfIMzPMpK0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1M3Dsgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1M3Dsgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8ECC113D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762964993;
	bh=sUr3A9Xw56N7HmevCgDELCGoi3zwTDuPaAyGyuxKYB4=;
	h=To:Subject:From:Date:From;
	b=R1M3DsgpRHjcUAFyJps7RnAl/lEr3yIcbKrk1gkkBKT7t1CGE77GF67LXZ+WOgix+
	 2XHIRJf3kuJeGiPb6vWoM22n5BBGELdKZQwu1Wq/QFniS+Ky/QgaqulQhKwJH9l4a3
	 AJEyGox2P9rJbpmmHr49TkED0okXdRMQ+GIwDnxyCht1f+d/KjpFYidrDz8h+DkLbp
	 YtP2D3PCsUU86VCcxqKNTyqQZOpAA4GuoZcs+fT4cdiNcgxrxsUfxrmxHn9AFtBrOf
	 gGidUNyCqrdaQ7Z2reZn3eRGbsaXO6Ym43begjOwh7DSEsJFh4Dxv2kX2PMmRJmDKG
	 8Mfs2pbcakFFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C62FCD13DF
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296499362.1583.6530766282399423604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d7976e54321e91ba001e511f567f8e5e7cc119f4b7b169ef748858db79ef28
Date: Wed, 12 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762964993
