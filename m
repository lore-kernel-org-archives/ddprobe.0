Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3689140E8DB
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780668874; cv=none; b=hkBbI57GA7qoqNJFwRNqXCYNolT/4DfcK/VXf/ncWqGtibQrAMeLa0GasVtT1g/x4VOsDRrBYFq60ucv2plB7p2C29FgnnfF+ZyTvYKb9LK2FPQIYvtm8Trw40zQGGMUJjTUpYP4Dr+M/KN27CIYo9ZdT+J7oPthFrAYn7KqOZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780668874; c=relaxed/simple;
	bh=rQtWQna67DH9QpdPpSxDkF4MYZve86dZ30Sx+KVOSFA=;
	h=To:Subject:From:Message-Id:Date; b=tFJbBOKr2q4aMYhPjAmZj0avt6nKDxOHlCoBvYe4wjSAiAq5Bujt2RGoz/7RffEO21/vWWj8zm7e+hd36RGz2dH9YBncaPcMgkXGHWSOAgrXJyMhGKUtHslMcWBGP4WC4sDk5mOHHhVb2ivNmqQ9H+KiwppDTFmBTA7IfbaNK/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Noxz9BKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Noxz9BKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFCFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780668873;
	bh=rQtWQna67DH9QpdPpSxDkF4MYZve86dZ30Sx+KVOSFA=;
	h=To:Subject:From:Date:From;
	b=Noxz9BKSD4IXJJ0jKJZZ+x2Hgau6e4S18GtYOvxhIvtavXw8z5iLFWBTz0UYJLYfY
	 9TY8Q8UuqHSimGkpUHtqsdS89kpyYeXnzul9ZXNbSGB+CAHsHlHdM8xmg9PbPSesuY
	 GBQI1r9qhF1axt65wZWskWohXv6NfRmjNrUC4HKzP8MDTbXkMbwR20OT1U2QQouXkq
	 tbDt/3pQXCquFrzsOux/rUDgmU/MUh+nPK9aRHroO5zpflZCEExvZSKD9RC9U198Tl
	 sP4hCdWgxBNfd2Rygw0OSLRi0A5Q1LKl9F0n7++LIksXvejAgmxVGEfYNQC0Nb8/4S
	 9kkic7jR0jcRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1A8CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066887370.14511.2174463544560263998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36f931eb62949113187b35b2c84ebe133f521fbdcfc9b77402a8685b6cea2b9
Date: Fri, 05 Jun 2026 14:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780668873
