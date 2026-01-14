Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D952DCF61
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768402434; cv=none; b=H0C6izImYYUDBgpRmr1riRWGj3vcOPx1lZVgS9z29q5ElrMHmtwicRFtiTB9ehTvLal1cnS0Gvc/Hs7KZ2Omlw1BxqAHuzFhU7mTRcDN0z+MAF6VCizoKDtpeozIv9PdYYcw+IG9jPSsC1NfSZFuC1owdQM8dVkzKqaZJi1pOtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768402434; c=relaxed/simple;
	bh=6qQTx0K1XiBnKUEZoe36s5J8xxZZ+Lz+Jl62bLmvJrE=;
	h=To:Subject:From:Message-Id:Date; b=T1YE+DAB/Kid24rJlAGdruRKIFa7Z6lTrgdXqnHRjeDUQ3DeT3LyQATG6BMu0rW3djXI5LGCbbftq4CMApxAI89u40lprQbGiifYGrsdjgU2cecIA7Ut/yhc55VUK+ApgccQLe8Cnf+3Pths0vL5xkqr0OdcgBUo1k4+nLiEPYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gB96bhD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gB96bhD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5936C19423
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768402433;
	bh=6qQTx0K1XiBnKUEZoe36s5J8xxZZ+Lz+Jl62bLmvJrE=;
	h=To:Subject:From:Date:From;
	b=gB96bhD4ajPANCioVbhZsSwkAwXq78+6bJI0f8yNaYTdL9K/3wYlPrqfY33K1QBOU
	 s3YGk1SvVa3nLLxAMFieShPBP8eY+lLaIUBWefZ+0Mxhwchmms7EkmbwLITRpBP4s4
	 OQ5M5IckMDfWr5X63OYNRfGlkCE+HdsWl4to0OCnc4fibFS3h1pKf2F07tvN01hgwt
	 MUvrDFo7LAa8kHUgAuy5kL3PtBWNit1PXym57fX9scd8cRA+im39Z+8on8SN6BQglG
	 Pjf8tienX4Y7mRDpb13Ogs4KDWPz1kKhFk8hus9j5Pr8EVP8uIPl7wJ4NXkmsFEKNg
	 idtHfYHE8UyEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E1DD37E39
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840243360.28424.7174661354606684175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6795b629b2d3198c22703d9faf59bb29e87c673a40ef66339b90eb3ee920ce63
Date: Wed, 14 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768402433
