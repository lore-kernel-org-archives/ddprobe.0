Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C2E4B0482
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786347034; cv=none; b=EDgj1Qvok++7uLbLZs+uUGl2/X8IYDU8YM3MyjYUCjqZ9l42vau1AB2sNcAbG2Y+sWZfgcq5Wkfu/bQfcjS7LFgKRyE4KrDumklj8JNFrEA0o5tgcwCjTELzsuRYwqQYKIkQo1RJcxwOjVxwU+ePenTMFeEgrs65oLTxFKpsLtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786347034; c=relaxed/simple;
	bh=JL5oPrEQXNz8HFxTyNoFZQMxwyrcR8maEXaDxRSTzLk=;
	h=To:Subject:From:Message-Id:Date; b=QR8pJ6M/bWD41GrUO/PQpkXNMwCapK7YNaV7XJlEkCQf5oKwW9YuJlOzh2LbHtsUnUksD9qKlrnLrOcQ4LxJx+aZZWHcnLnvHer2B7n9U9nvMzH3tl7EZ0e+DDtV7X6ImiZo0+7XvDs2BGtoipb+4zRQgYGxGaTZulCa92jC3Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GObrhxvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GObrhxvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCE4C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786347033;
	bh=JL5oPrEQXNz8HFxTyNoFZQMxwyrcR8maEXaDxRSTzLk=;
	h=To:Subject:From:Date:From;
	b=GObrhxvTDb0D/tPQUMFfFmBA8gRc2l0sSkhXVkFZe2mljFpxchAK7jP1TEPm0EIjr
	 bYwOwTMup8sU3jW4Y5BVUCFiUaAxM05l/9uFHPXcI5LjgiMiwj//0/YlQrzBrb3RBU
	 YDzSV6eCOHqB4+F0EFTLfrIshzziDG3tNZdio/UB4ZYfdZtq23dXLKmPBWQACYzYRO
	 lmdTktiKZ0NhxPZ20qvJFULMyVGj9ZdRaji3Sc87IZ7RFmvSDjcszjBr2rk+s86okF
	 rKANo7rtuLg3eVb6H5Mjwq5DlbTukXm5Bmx44pQm5avvHeYvxTomTEOKDH3IRuZz/P
	 5izuFEwF1w15A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1C0C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634703370.4798.10916261956471984335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d932e06ebd3dd0a3e2b832318c05fe457aeea76eda18f813f6b96250ab6c30ed
Date: Mon, 10 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786347033
