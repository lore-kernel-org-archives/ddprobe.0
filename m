Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA3B285069
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755344994; cv=none; b=OSQU43Aw+BjV9cgDGL6lDt0PJNTgezIwBB+Af1MPxvik4LOnzD74VGLc7nNVEwBWHjapQsLDlrUl9t8kZUaa5zWmlo6nvlD0HdKo8ThwSwn6jj1fQKHnnmNKdwKva2wC4ERFN9//mxyEoBmcfq5kv1YTr1DQ42BuXMErobAkqKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755344994; c=relaxed/simple;
	bh=WIsd8wwbP/BqHYQpQSj1UTNEtwTr9qlQqBx/Zp6xpcc=;
	h=To:Subject:From:Message-Id:Date; b=IFONBMWCvbSVGX1MN1KUTyM+zukgiUYCjxAglGHaXIzrNKurlIoPFaS+DWJ3Rk/YvT5qVlILt0jDW4lxEsXxKOhpHZehioQ6WYeRRmfW1uCRYEIqHeIz8rdQhUDboUK++ptD6AztHUH7tNmAFX5oKlWmDU8F6vl9tJ+2AVsq/I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOO/+oSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOO/+oSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BFEC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755344993;
	bh=WIsd8wwbP/BqHYQpQSj1UTNEtwTr9qlQqBx/Zp6xpcc=;
	h=To:Subject:From:Date:From;
	b=OOO/+oSxI1IXrbYOtiEh5OoQU4pkYdcmmmSLAEwR0pI+WwqQrnlPvRryrDqlagQOj
	 nEjN91anlej4QDGh5BM2rNzvFSjjw45Z8PYQAHdGM1H+hFz7ifk/g7hLQ8Akyf4YNh
	 Omhxr9ZQYLS2asjDPSoH4vMYTleORBqqQ8y2I1TKSZBl+Y4kmrhonE1qqOIHfFxYMz
	 CXfrulpdJChNg5DYrwJ/aigpbXl4eC8jXGRaB81p3vqwNikve0d/3EMQpb16XXkCX/
	 9XWbNBbe8HOSfCId0SdKdahBNbOPCje0a56lsMVVMPnYGTyqT/qReO2VXxogL1GNJ/
	 4d5bvH0yS50Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF5CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534499358.14419.2896434828304667901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6afefd5de7c7405304881052e19e16503c00318d0210748ddd062545318cebaf
Date: Sat, 16 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755344993
