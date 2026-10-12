Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E3533AF65C
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791781234; cv=none; b=EMZzmfegnFgUn683MLnkO46AAedTrNaUi6GR0/kybEgbqFgTvMvqfsjKVsXVVL1llX7RMBFPHlTTQ4A5saEfsye58pUx7AaI7sR+dCRYkrWuCZsBmzil5VuAt9v1F06F9WL0Olzcr854zF9ozmZQ7h15eC7ptaTmT+Z+cp2VyBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791781234; c=relaxed/simple;
	bh=2JojzIsXzwY40kxnC15t9pRrM+gXPLVoq5sR2xQksws=;
	h=To:Subject:From:Message-Id:Date; b=tvqaMiW3fghZqxqf4hYLeuytaPq8Yxh5737MCFmkLZZWiLSAXRLB6oPP6w+T7yEZGQLrM1NANNJPgWgx1hU2eSgUH7uEFO3gCM+W+eyIXux56vtwSZodpr9uoLu2FCKSfkXmytK6jlKWr/uSCtELo5CfKCuE/069wa77hl2hVhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOQvgrw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOQvgrw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC1DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791781233;
	bh=2JojzIsXzwY40kxnC15t9pRrM+gXPLVoq5sR2xQksws=;
	h=To:Subject:From:Date:From;
	b=oOQvgrw/NX5FqiV6SMvhYg1qp+Q5RP5A8OuqCm6eD4EGtz9puRqFTFXQmve3DqBL0
	 rfAEMRUMuMUzaN20YQXUvj9tDiuTJtXXsADIL28/e9yUMxabjr4T8gyCm1ZaHW+HNX
	 a70GhXGd34jr+FZhmppPzijSknsTZhkY/AZYu6M/YTN0MnavJlPDppNsrNoQOlWNII
	 qYxqv3O/XnocwM1lwBXUZ7weYlHt4lkZPpBsrGZREWKxu+FdVNZiNypyqZd0goV6fG
	 TGlnWvMvk1WpswoXnyfRgRGQE6/SkuzPCzXD1L//CYXGQb+xFMAfE9r+uOMjUyo1nL
	 1VDmuPlcVhsHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB265CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178123369.2257.13849973068228847505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39db2e5dd4affa9ae6308382a9d4f3d2f23e2bebf70f6e9911c7b15ccac5eb8
Date: Mon, 12 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791781233
