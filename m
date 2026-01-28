Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1231D3644DF
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769612634; cv=none; b=cNhgR7DyDynU8q+nvodxyeTEHxBeUCZLyPCk7Pq/W8q3QOJF+OIZgl3rIl5EFfj4/Ir8i/TX5qwjPY7OHq+B4kAa5uBsF/3db9BQjey2H0trHmqXjIYXRk/gVdYyZ2tPULQ5pSXv6RsGdI3jQoYvrU7QuK5eKDIuiNEYOow8wAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769612634; c=relaxed/simple;
	bh=UP2ChLwAYLyjNfv3gn/mr0uYgcVRwx8kBAK+6pirjSE=;
	h=To:Subject:From:Message-Id:Date; b=lmHynS4Sv2JmEhn/qPhV8jRs1uxeZCzM8YjU/NxwaBwOnoAIjWcIgurQvfnWgvL3hiflB2qz+6DpXm/bpe/IBEQeezPxsncud33g+7Tx10WreN5powFzGPY2louarWGPp7gbOEbD5AhpFH4KiwB9kK0cBn02R3HlZ1FEGYb+OXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJ21nn0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJ21nn0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F173C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769612633;
	bh=UP2ChLwAYLyjNfv3gn/mr0uYgcVRwx8kBAK+6pirjSE=;
	h=To:Subject:From:Date:From;
	b=JJ21nn0LmbZdxPpjREFpsBZU3Qvm+plG2v712bDKz3NjmRoaDbdUxq3lid+urOqwv
	 BJua/85bwxqXYbCnpeCA0qJ9QDt9DD09v+otIoZ/Gi8b91NOGIFH47tRy9raHN0V3V
	 nw22/+NnSKOnrAd9Sti2FH8Kz7mMYXHEIhao1gXB02kcYMBYr2gDCtrmXMowWdQVFM
	 N2VqW8tULJwsZjiJDaJcsqtkJorzmkzdLWXFEUQJDEkoQyF0ufkH/SWhU6KLS1jFYb
	 bAKjX8Ll2Jlm2FDNP8MrwGiWC+J8SZC0SUG72bw7Mv/aUA0EFufT2lrEg2XBmFT31X
	 8NRUlyqeHgnPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C62D3F07A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961263358.12425.2882096399503456307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e0da5353987c44d5f15065e93e5f7cefc9194742ba06a331b7277bd7e1e809
Date: Wed, 28 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769612633
