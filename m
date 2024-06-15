Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B50711CB8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718437703; cv=none; b=APAOOhbwBqR8LJ9XtzM2TDzNTZzgLhbl3936eaLcrpB36pKDt+LqDc+DdXrO8aJZLUIR08THQr3nrQNGCBghSKKkfZM7YJrKRSPdhsgf2VBzG7KQObKtgXlJL6LRkQHEQ2IOzwXJdHFIsejqiYDKfakReUDek4Ixb3IvGWY6zQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718437703; c=relaxed/simple;
	bh=rv5Gu4su8AWJ3Aod2GztOe6Cy7HPTX3nkSDpqH1u/QQ=;
	h=To:Subject:From:Message-Id:Date; b=LlcJ2r2SrX+9UgMvruaz8HivB5C1aiA0iH2BSKpc0ZOMe0jDJVh3NSf/Mc+g8Gnda2JH+rGD6eggIus5aleWez9ibBcgPdwiQwUqJyOawZPgK3hknoeb3OHDr6ma9WPXGdtFEGKJKpmDQklIDoPvN2L8y+JccIM8Sru3zq5k4fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofsM7Spa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofsM7Spa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F76C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718437702;
	bh=rv5Gu4su8AWJ3Aod2GztOe6Cy7HPTX3nkSDpqH1u/QQ=;
	h=To:Subject:From:Date:From;
	b=ofsM7SpagGfEOwJ6fIxZ4j/Td/4F57BUFwE2ZKgNw/1oJXa23XaRSyWN7E8tHn66d
	 c5EZJPt37+QhKOCqURQ48MveAjjVMh07N/kcB7FV1F9iOjH1kpdBYEXLBLAt4ZAiVJ
	 HE57u4iIk1kbC1pWzTy3VhKGIzAyJtwDxSY7McswnejzZnHoJ4eA65tV5W+GmbQnzM
	 cMUPXGRrrg8yonYRSYZbln87Z330RZ/T2nTKP2LdsSxvNTP7dqBSKeq61/w1eW8v3S
	 o5D0Bwsui89kv7Lvust+PY79vTswOf66L97J649oUrHF8Ei4OSq5xY9tRKUVmEtvnA
	 yMWje8Oii1xgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E30C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843770278.15204.4357160209339423073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ca838126d5a324914b1b13575fddc079db01031fa830d0b07919044aa201a1
Date: Sat, 15 Jun 2024 07:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718437702
