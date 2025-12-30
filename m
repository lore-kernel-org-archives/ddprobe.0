Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCE72D94BF
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767062634; cv=none; b=EcUYlPAhSOuOgYRaD0z1MZYfSSmwGQsDXoPCaYGEyaUMZZz4DYZGcgsuH7GOdUKaALoOrLpzCLBebNQXMuRFakLGLJfkNbdioSLWYp9M4O1G/3znVt030UT5uEjmXk93HtHugra0XO9REDavxL2uQw1GagEkUSxyie6pocRkmUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767062634; c=relaxed/simple;
	bh=6SFJrZGhVUuVJX693A5vt87wsqeQQG+4HppcJS6BtQk=;
	h=To:Subject:From:Message-Id:Date; b=VwbsvnI0/nOL6mM/sGzRWCePWFA1FyCqDsVC0P1BtTaHvFgzJKksIXRS70Yo3qMITuNQBRXRDNrLkHpJkaBsFiaI2vncjK+m8hkYacuuGn16wrK6f4ZQSgPNYU5DM2NkehnvzX6o68LMJj/qZw8AUW9Wt67FFuNONNObR+H47Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxxpMjmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxxpMjmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D81BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767062633;
	bh=6SFJrZGhVUuVJX693A5vt87wsqeQQG+4HppcJS6BtQk=;
	h=To:Subject:From:Date:From;
	b=CxxpMjmzCgNSZHDjh0EiPqIkth6tdmk2s20uLVCj15p38ZLpKYptatGZMbkQUysI/
	 8FiULLPcEgrh1Roxv3haMvdv7ptIjaVftTZFQ+CVadL4uZrGXPzF3eCGgq8m5Lv3cR
	 Dm2U/M7kFn821l8uSqU5lvNLKLdB72iC29Sq4hxGKyOnnhDuu9Fs7sKxH7ahuxzcOb
	 F2eEsUtBehtVKM/Gq2ExBkt+1XLSIgICckvMebb24ghGUiUJkHusjtbH0BEI/B/Io3
	 ycpYlUYIpF2a/xT4W4RPM88L9vqMs3ioGqhVEwBKj9Z5lYWKQPiaBVByPfLVeNW8OJ
	 KpHQDcLG/eBlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B1E92FE3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706263357.15103.1840526669481795609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c1abc291ca6e6ca99f0a35d10194a36329eaccf3558e7ad7a5ec81189b6226
Date: Tue, 30 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767062633
