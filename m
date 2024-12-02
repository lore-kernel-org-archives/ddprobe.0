Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F8870800
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733165754; cv=none; b=RLPgx1vqkFS7w4NQXMw8R6hZPsM1a+pNTRX+zJUTPoL1nRBqc0I03nl9focAdRB2neCFohKnPKlO0yPvyOZIZdsRhsHslPEc8Q01pSXngBXcNWyiNm9jJNl9gXhaNj1xy5fHENd9dU92a1+lY+unC/j13lKF3KpZD8C9IKcCUpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733165754; c=relaxed/simple;
	bh=38rsWs5c0WkSPZcjg0+i6UZZpOK1iq3m++TEGClbwDw=;
	h=To:Subject:From:Message-Id:Date; b=bBKrYCx0/X6/PsqTmKf8ltuRgJOublSgHzduxnMpB4Gij23lUagjf7GyFkJkElSWJRwq5SvsXciHcTX1xh239FZi1qRHao8dYvGcFthiD1pdSLpp3D5GUvmk3TSKV4NkUdNMRxb+ShxynbgG31SN0vDeRO1MSkKyQHhAjpDP74Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijHw4t4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijHw4t4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52ACC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733165753;
	bh=38rsWs5c0WkSPZcjg0+i6UZZpOK1iq3m++TEGClbwDw=;
	h=To:Subject:From:Date:From;
	b=ijHw4t4cFQOk4FNHbjBDEIfq8qO6VGoM39b3V+Iv6Eyvfnp53oKEyDY6J7SSRPV05
	 mqPa8WqSaJQsXQynyI8573lT7fEcCcfsdorwMp2lgVZ9h1eN6n8wU8fJexULSVmuB9
	 sYKRNzJiWrh/2VpGVPEz2Qw69F+9AS/OkulzJeksU8p+1QKzLwaNYsG3A6tI94XaWI
	 FZzYUPrzjt3ZsqDtZxbM8Vy6RUB65YADA9lM7G9j4NcVFSDhi1foo45f2deFtc28m/
	 7kwZCOZSyUHLLIJJcUZ05GU1YLP6kpodtHSC3haDWaZWl5GX8qYiRt0rDximsCkcp5
	 7KTP8qR4e6i3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E6CE69E81
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173316575360.21387.14270416399718511499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789816b5e5054c95bd1083c1880144d1ecce1d9cca560473e2c22c8625232812
Date: Mon, 02 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733165753
