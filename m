Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A16D2EBDF4
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760994594; cv=none; b=S2AaYFkW14OU3ATImyarq3tjboH2iSYTSvmx28wvHgmCZiWYZ8SpjAFrMJBJZttaXhBDWzo12NkvCsOYGsWu9nl+yiDgrHA0N1mRGdEC88UpV1i7PzciA4CJENElu0Xx+M9/+F6Fs3Zbspmw4hP9VOStoknpJjIt5aNu5M7w62Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760994594; c=relaxed/simple;
	bh=iFdUlOS9bBiHrVVUhfTlePPlwfeb8IALP3RHTsBxvXc=;
	h=To:Subject:From:Message-Id:Date; b=X3P5yiud/9ln3cmBksNsVEt51auNk7pRs9hwz8ZFxg8MXrsV6j3yeAwPPZek4NzgKd8VH+T324i8Xu3X6ytneuGvPT11du9TNCkf77prhF8DSMzr5HU5RMnTw9vBvLTzxGc9kTskg7QxsdRZ1gkeFXMn0RQWgmDHNmzp0Pmj8LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DODm9MR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DODm9MR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDA6C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760994593;
	bh=iFdUlOS9bBiHrVVUhfTlePPlwfeb8IALP3RHTsBxvXc=;
	h=To:Subject:From:Date:From;
	b=DODm9MR9qQ3fuc9ccjNp41XLA+nDfKCQKFuHzNakrt0CWk3lQw9Pnyq2D10BS2hBL
	 qKSYooKa61oSngu/dAKjUH9474tHzYeRqXjOZv5pf64oGa1hNwWH84jdazY7IWmPpV
	 VRAWatR8O6wJWj61OyLtwZCGGICFC0rsNQvtGgBZupDl/OFSPlZW8ILHE4THCrZyYh
	 V8wHxkTJz8Wz9JwxpeeUdZ/3AuDGouIv9cRC++pFn/O4JZjKVeLT1xzlSxe6jnbT0N
	 k8I8ku3YaWzzAsVOcFt5QAOMcBpolXbWs/aNMfuAMNm1hGPU1OI7p9S2Se8/OibeKT
	 HXflD2VeCAnDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F417CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099459357.19139.17048237907278620077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deeb5c8cf20b5d18ecc8649b3943ef2f56211115c3811bc8fc7f8d32895c07ec
Date: Mon, 20 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760994593
