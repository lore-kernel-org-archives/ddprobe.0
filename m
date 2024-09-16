Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227F155359
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726494954; cv=none; b=Jv31Niet7UXRNDLxaKenp4kDuLG1ITlm3F8oeYtQt0N95j2HG4srSdtJzTbtBdZvIeeCYKD2tIkrQUknXKhuQGszsU4fMlB/EDb8pv8LUGbABMzg7Wo5rtyOZAFmzmyjLpGs2x7VlkTzRs26S7vBdpngPCuEMdc4fMHJkUYdojI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726494954; c=relaxed/simple;
	bh=ZKrqLnq8AmZhsY6iBYJHNrr/qkaEqrllNZS9q1pjKYU=;
	h=To:Subject:From:Message-Id:Date; b=UjBemm46VFsUW4dhQl1Gjos9UYM/FMFzePh3kaX4QGCjtxLWn2aa2G8rMOzIldRZftOvqvBhy2YjMUtejbFOUlO9zhdthVO8kLHv1XS5m6CPczp0K+Va71sTDKYtUmYqfMhwLaG041zIX+PjaPrOxv1dFb2qQWEn7InLGRO4jlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUUxl1Xv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUUxl1Xv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5293C4CECC
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726494953;
	bh=ZKrqLnq8AmZhsY6iBYJHNrr/qkaEqrllNZS9q1pjKYU=;
	h=To:Subject:From:Date:From;
	b=jUUxl1XvuqaUBu6ZL/BC4FpKLtMGRgq0r7KQ1JCohRtIVIsA/SYV4QjunIOJfTZo8
	 lsw38aemGJROfX3GGSlsNs+8oR+RONhysFSwOlA2Jlr0oBSL0QaDBbQHt02qWqocDC
	 wthzdeesGJiIjDuPEEEEltR0DR7sqhBYVKCEtxcnfSrja7rNTlpGrwOCqaWzF/v/Tv
	 ONiXRfU4mAiO4qFnFgduWnu6s0mrWHxJm+xTVnFrS5GkMFB0stRSyMG4et7tafCHEi
	 tbPXjR0mLKYGDr+uGI/jRIAblWamWkthm62ELaxLFmX44Nlp29pM0A9aqs8d1m4HOM
	 tM043JHYMi7IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6E7C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172649495361.24575.14706410942963338861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12e30ad64a3a9e522c2714dd1ef5ecf5496f0f73e27816ac2af048817b85017
Date: Mon, 16 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726494953
