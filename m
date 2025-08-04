Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286A423C8C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754300395; cv=none; b=T2wkMbKGFvFbeRFB5TZtrTsY1Ik2LkaQZrp7BBlRqiTgHCpL+oGA2sm7f9CTMN6mvLrjsl7KFNzNZazMRp4QqHR54g0T1C8QFH6KLPkFUcw7t9t+koa/HfdNdzcf23yjsfpTqYLLyB4C2Dnn0FQX+dvcEbU5LkoLZXi6wDRyKlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754300395; c=relaxed/simple;
	bh=53WcxqyAZI7+3Xw3wFO5IDUwHsoUKlzKc2D5gcBPenw=;
	h=To:Subject:From:Message-Id:Date; b=d9ikfNSfUb613pUdPSyNwZDw9+zL9HLNgythjsJCw9xET5cWRC8L5DAMY1uFO1CPdK0FQxRep0RenWnfaPV4tvKHBe5x/ZdumQNkq0u0+aFFk5vG8KYCRMmXGiW44/eiDNl7zBd6CMx4yCsonbP67MOPBnWm+k4LA7Yn9QRJNMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCg3uZYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCg3uZYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0334C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754300393;
	bh=53WcxqyAZI7+3Xw3wFO5IDUwHsoUKlzKc2D5gcBPenw=;
	h=To:Subject:From:Date:From;
	b=sCg3uZYQ0PTgP0NH/1lXo0xNJfcF8KROBe8SpMxhVCNesr6E1715ptAtQXLSDv6yR
	 O1n4UoS6dAGONBate9JuPhs2gSEB3CpAA2qbH6FqwOPufb1W75Ugq5j0UnKhgBg659
	 bNM7cWdnASJqZ6I4+rxkYZ13k9vk3G0nUCwKnuOEqNKEUaKZiYK59xBgPcEYEsKlYf
	 bN4akGcydVXQuQUkLyz6/JMKkQUUr42hTgrq8NagM/kvM12BQusXEaH3d+weCHTMfL
	 MQXkHPGHih8D4t5eGAGfc5FhAaBVWNm8+Vvfp9Ooz7CwbR6zCuv+Rd4RNsbaAbaB/N
	 rKhv7hgajYFIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1C8C87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430039357.9934.7516687006728668522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664dafd9b775d23ca3ab9a4ec6924d628c7a283d81a912f56099a5fe063c0e62
Date: Mon, 04 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754300393
