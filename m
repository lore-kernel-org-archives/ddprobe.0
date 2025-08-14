Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ED92CCC8
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755176994; cv=none; b=WV9si8Q7mSpoSJiq1iMR5NUthj3k1jtZ8EQ4zt4NjVI59+fwaJ/cMRNdw3DNNkaxpCfznDqE8Ts5sr5sxgqfZieqrfrwerqIRq7TDoLDXX/Z3NMi5V8kp7U6oZOz0oZtVL6hgNcBeTopIVnGuB+58+gCcm7eoaBqNwhIb6Nongk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755176994; c=relaxed/simple;
	bh=QhKJZgjmZg9eyKy9JyCsrb1cHNRgB2xWeBqsOKu9GnU=;
	h=To:Subject:From:Message-Id:Date; b=qBgg+KToBNlV5a0ZD0M6QGmxbaZkL3ymsGWLzmC7tpZ8dp8qi2Ubt/Yk+/zNJvP4E4HksVXl1SsjyGimBPQaYaA08EqE+3pCzqOnRxHyoxumkm96yeOYSAmKw9IjS8+deVypmqFwu37bgZZZcFMbwFc7vZFQGIbB6EG1eskoSz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvdNDLK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvdNDLK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCF5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755176993;
	bh=QhKJZgjmZg9eyKy9JyCsrb1cHNRgB2xWeBqsOKu9GnU=;
	h=To:Subject:From:Date:From;
	b=qvdNDLK57hAq/evBkxOw8tp9HuZ6ffuhbwYRMw/baJ1CkXGy2n9W8o8E7oI5MedtH
	 S4Z1ngk2v+o24AVXH40ZJTunn+oKmbX3p3LOF5qjHYTKH01rm5WnlL7prat6q2FpkM
	 hrcmnJYk+lNy72r5lRb6Tded4WzXy3QhoYKGXz9/b3ezks3X7B7JqlnoFWTU2/tV4y
	 gQOAj0FuWAbcBKXyC/i2jgZXc49vHPrXiZ9AfKAZbwZhQpSM/3p/nqCoO6IW7W43lh
	 SOBe3hOP3H156xH2Lsg/O3+WKPwOMtaiIK8sgC63OJZxlTzWj+Y2ei+3EJOAbH4DXV
	 Kf+2KxeskFCQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D86CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517699358.17445.5187125495048512531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a940bfaed56ffec28c4d838a2243dc6dab11ea7de55a7c332f4da954d8d04a
Date: Thu, 14 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755176993
