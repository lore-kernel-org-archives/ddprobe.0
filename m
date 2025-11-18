Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BE719005E
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763494314; cv=none; b=fDyuTGvkPknOtOatRx7OrZVRynt7KLbgtDOG1Dk4IC4zy4D4m7yzFm3/AjAXT2lLZ4Ic/+hFkL34eEKC2v2aJ9DGe0woIcpcHM5IzwTXwlmGe87tUbBx4IF8fbVnuvd8ukxSjjoWzCyIXA1EYWgEkXcMXFHtY32Ylz5mTwVO5ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763494314; c=relaxed/simple;
	bh=oX421tHxkDSHqzSmmyXHXgIVPlTGJjvnqf0mFPTKoUk=;
	h=To:Subject:From:Message-Id:Date; b=stP4VfFHOhfsYdru5Ygob/eN700WspIXoORa4jNnsxO6UndxBjDMGX6TQQ+T3wcJ0MEVQvx2+Gvmnhn/JS+XMQzwi/oBiCz0+5eKizoY7nRzOT/+Wo6+vxtyrDfZjKMUazwPRCT0n0p/NPcBaWwm5uaoPVVZMCDuxn9ajhoDSeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDDFc50+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDDFc50+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AA7C19422
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763494313;
	bh=oX421tHxkDSHqzSmmyXHXgIVPlTGJjvnqf0mFPTKoUk=;
	h=To:Subject:From:Date:From;
	b=bDDFc50+h+PmAZCk7biR/pY/kkcS9x6CWVgUIXCEEnKRhdzXi22EVXBjJeL44HRaP
	 IbInrz2ZuWF+9EogqZFFY9ymEgmmeXh5/f8E/kujKKeTQXoWy+uNdLSI0lJcxXfK7E
	 EyA/z4Hjf889u/e+E3OGj7xfbkXHTlJx1EhxIkkSjXQHja6II5Z0C0VGAt67Jiyrio
	 IdgPUP1E2P42B7KRtPIEyGzFBqrrDhkqo2eT61RR5WIU8QJE28OczX0uRuyW7mLZSk
	 d1Q513gQINKAFNKqnfncJadkVhexwBqv9u7nenoKvrwIberxVkuGRKO4opfxV2copx
	 YJ6FhrEamP+Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A7CEE34C
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349431358.14399.5562222349348893087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b6a52ff2508d323e650aca4a3100baccbd46978db84bc8af03d674fc309ac0
Date: Tue, 18 Nov 2025 19:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763494313
