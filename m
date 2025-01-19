Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745532F2F
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737260754; cv=none; b=Fpg2c5cYXK0uLmAI7S1gvIMhCmB+90ruhn+takyn4o6Rc4JNQeHo58ysF+xKiRKZnLaBTZD8qd/EWy64UhzvhiT5gR2MUDsCDIaffU9usD8iMwUkwI8zJ7yOcUn6GRGtQ600MuAtWT+uM9WyaRtWYdfzkPEnJXHFdtMHDNipjPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737260754; c=relaxed/simple;
	bh=fO73cC1EwfVbnli1ZIqYRdH9vgQhsQkS8viUAudbFBo=;
	h=To:Subject:From:Message-Id:Date; b=DJ8zBRCtBSiXJ9hXQnUIWFqsgVXBRv2+pfzsXoVQ0przmtO9VZXGyAf02aHKwYY2TN8FNb47ydCV7qWZ0dLX+Rb73xCTpay98R7ONB8PaF+RW4Y0rBi68CQ3EAbAGXxGkt6iCRWI+X1Tof84K2mMGPfpJOJDFEPBPDxODlLvSZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTx0Fp9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTx0Fp9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DDAC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737260753;
	bh=fO73cC1EwfVbnli1ZIqYRdH9vgQhsQkS8viUAudbFBo=;
	h=To:Subject:From:Date:From;
	b=rTx0Fp9Q8Hpx/4AaOCXWDKEdMXwrl2GudNCxWBz7vyvHitrXDOFD2wwll/I+EkOjW
	 NlYbTUpJN+8E/WOovWHGHCY/7+vU1xgiLA/zx4ZrR+e/VwZJ2gcQSVV3y/D9bt/pf/
	 bf3alFtmhoHJZwMCtgB/rjDCw2fEgGLuTxvZnA3pO0msCdot8NpWumVRUFQVPv0yuu
	 tvRR4HfzcwykN9FtAgMVHGES2SKG8IonIvrdaSatHp+qq77MpY8nu6433uRI5t7kvI
	 1pIXIEXp9o9N6XjiHjggZguQzM3s8RlaK5dBPBCvV38bdwIV9ipaiSaJtnBxAxEdtR
	 1bboAE7B+zOdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB84FC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173726075368.28802.16016667616659861462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911c82a3681c3e2eacb9fc24161fd797ec772e8d1e9eedb1a398a840218ec968
Date: Sun, 19 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737260753
