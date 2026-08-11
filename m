Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AB4329E79
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786485634; cv=none; b=Fchk8TysdDS/DAO2PhOyplo4PDEUXIypyl0qT2FUWx5hUyI4vqUYhaviMP/MhUkrxwgHgRXl8FSznaZVM2tYJ43odlGzoR9eQ+UoOFzUTuAzdvPrKlSUZAeoKjJmq/T5ZTpXw0Fdn20QIkrDN6fJj0RIC02Hghg1x9G+Jaen664=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786485634; c=relaxed/simple;
	bh=lavema7ON3UrrlYx86Qev2DBmpKrqbQi3XwL3F8jlJ8=;
	h=To:Subject:From:Message-Id:Date; b=Kzp8X5/s5aNXxrZJTqc4It8jtfy5dZIQtAkol1udfARImA6CxMZFlnbA9ud5OI7J24rFn1SVtVp3A5S3+10IoaqEV6xu3n8ZUblrlfygpemA1+q4KVriA/x0J/esfxRu87g1wXaxIppQ7E+GQX/awxoKW3e6NcUd/hi6oPu2urw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VI1unreV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VI1unreV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34B8C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786485633;
	bh=lavema7ON3UrrlYx86Qev2DBmpKrqbQi3XwL3F8jlJ8=;
	h=To:Subject:From:Date:From;
	b=VI1unreVZSkBZC9GWWnRmp1b1trhVbZIDhuWRKF/Ep5ior9rEudapRhHVHIuFql50
	 eBF+ivzuFk1r/fThnUChrJhL1HXmNWls99auzO+ebbR7ciB1rhLpENz+IDZDAxpXUT
	 IBDPFI4yH2zaUOEdRj6STI9rShIm2TYFTd3+WRU7zjrHW/m3YrEiMsPWURJkS4gocW
	 47dEwt+7f1SjKTMqAbuwt84WgtgQep/vbGZzBejt9hL42WK+uaBIFbq77AJ7p0Ax4R
	 s9fGcMJ9nmg0B5FkmmSnc5+orxjXPyZL0hngwzy+89A1hHT40KUHZwT4u+OP35AYzI
	 AE5A4GCZ7ixsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDDCC5CFC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648563370.2200.11748881854160089962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbccc4f5907363268c3ba07534b468f6885c6ee02c370f172f99bdb78b4fccee
Date: Tue, 11 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786485633
