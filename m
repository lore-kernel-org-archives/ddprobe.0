Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EA08834
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766855034; cv=none; b=PnARm3yXzoirC0hRmpUWIsC0MVdpRYbIn5wpujKv/xywdLNJv9ZJ8JXKNq2f7MklPizDB86H/FDxCW16sHFCj3z4aAc/PnLNOw1SSFB1be3UUn11zv+rjW87c3rQ1RSi7wyQzlNwNcxsChlNe05JHX/X68deahGsXTczq/+KR18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766855034; c=relaxed/simple;
	bh=9tDNy7v6AsnBoYqbDxqulWx7xHaU/rNhllC3L9d9T9M=;
	h=To:Subject:From:Message-Id:Date; b=sfR1WdiAR7JcDoV4uEANPzC2JxLTVaxqL3tgJXjdmVYa5DeESGaTtT9aaxZLf8u9zzSYL/cFLaeOBW1Ry9vJFgApkpvTzzx4wM2z8NMFLnYxSabt93OHdj+PUJB3SnBtY3bsnmabOEmrCq4EdesyCVuW+FZ7y4yiCJjTpdBgxqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh5/Mzii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh5/Mzii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE45C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766855033;
	bh=9tDNy7v6AsnBoYqbDxqulWx7xHaU/rNhllC3L9d9T9M=;
	h=To:Subject:From:Date:From;
	b=Mh5/MziieKplOBn1RDGm7lOn1pdEk9j8dS+IRaIrIHzpfllpv2zQK1dGYN9ND+rmv
	 5MkqqaXpAH/+ixDE25Lt+gEUM4q2LOdeVQi+uMz7nDTheyOYml1sjtpWUDUMpbtBwf
	 TWqT4Gn2AuUwwY+HaqCvv1vN7zXjQhJVtNcQEq3D16w5IIzJoWJPi+8Va6ZdwLAq/U
	 Kmu2Yx9flOeyuZTrFdxLwylEOrH76K2bnlxJyOdhcOVD2RsNRG/+wr2BK0uq19R9KY
	 KhGuPwCrhz+/OfLooXdldAQ644XonZItGPrXqq5PQFEu9mxLL8bKJk7Yc0Zg3YMNi7
	 9UVpgTccxXtoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E90E92714
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685503358.3330.16448318509599142728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcee4d23af2b70f790b4df33486908701740597135af97f69e63a6fe32760c0a
Date: Sat, 27 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766855033
