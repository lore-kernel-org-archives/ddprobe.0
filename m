Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142F31EB195
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766238234; cv=none; b=mvXTlPbDgAPCIvpGGbDTGOCQ0CjC1XccV5MnIQL8fpMbtQXHVJWCiRZtuEvxMMBjvHpX2ay8fYkk7OapMOHw7UhcKjiUHJC2vrcoSmouULhIZbnMrLPNddJhKr2lHftiQkIA16cSHz1GSUQub3iYPPFNG1lkAJT/iTEdwpug8s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766238234; c=relaxed/simple;
	bh=xbbHlrok6PsffhkFxv7jC0B2Km/CFC1uR3tnZb4oCbo=;
	h=To:Subject:From:Message-Id:Date; b=afoLjGN0CVfcmpdGqpZQ0nm/Enjv85ojZkPwnE1y3Cn2C5M4OMagA4zOhvpwhZAFSxbeULB6ul2ppx/5qlurjh4EWj0WJG2F2NlNDhThzU8t4iB2JJPyhvb+bf0Nr4K3u4cgn/egjBI2LCzBO/RX8hr21OhxhfpWvWvWm+FEalY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KftcK8Fd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KftcK8Fd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70FAC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766238233;
	bh=xbbHlrok6PsffhkFxv7jC0B2Km/CFC1uR3tnZb4oCbo=;
	h=To:Subject:From:Date:From;
	b=KftcK8FdQIhhl/4liD32FOAqT4lSTqpnY6cDj0TnVAWJAcinSt+3yUZnY3w6p7HT6
	 INLOfDESrUqFn5kGCzq8ZI37kiSaCLBphfuQmPKrJharFiHmQgzdFTEiF4Ok17sU30
	 Vjg8Dw6AldhuqRPZDhxDqAF/gy+Iq3TAROYYruc/UO2devAityk4VN6r8g0v8dT8S2
	 YNhhmafZHQe/8IeCIPn8bQ707XgR10h/4hRYMDevpI/YmT63c2JrfYRlTsg75Ctyy8
	 /Lwn9hPialUqkI4WfSNNVhO+tf38g+ql3g0CgX0NgrBWRUuoSpH7NMkOeX7D6ICvq0
	 hS7xar9XSEzaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F9D78797
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623823358.17566.12132773028745656873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b736985e479495a4470a367b74a213c868838c138075d264df99d5f977ecd0
Date: Sat, 20 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766238233
