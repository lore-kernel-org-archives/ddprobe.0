Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5611E7C34
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745713194; cv=none; b=ecHZNfxbE4mEUX7Mhufw3pfyZs6c3AW5eAz7DrdJWabrel7+JIH1O4OQEGBFxaQwuK76f/m3H1VDPMBVN9Ht543qGzv5A+V3CH4azDoohO4yTxZIgErxlt+ob4exp1xFVv6Y8hdbMmA+HxWJFdrgTaa8Uv5iZl+Y1I0fBVCjQJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745713194; c=relaxed/simple;
	bh=NhMX+xO5UD7TUnNgrMtq5RBEuqwoURx1Rkw3G7qyN88=;
	h=To:Subject:From:Message-Id:Date; b=Svpxsu1LU5rBf8rwT0g30ZbVYQvj8hVhzcyMXB7DkJHiitCpTItGBQZ8BiBMgDu9t8uvVxINlQAHeoyMN4Qw+4MywYF+uYrxhzG9hw4izTDeAithg4y02KNDf7jdnCen3YxsXvjuS99iUYrdTyJuUdZW2f55PR83Kix+Znow1JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4X91CSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4X91CSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F5C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745713193;
	bh=NhMX+xO5UD7TUnNgrMtq5RBEuqwoURx1Rkw3G7qyN88=;
	h=To:Subject:From:Date:From;
	b=b4X91CSqL5/ZVxcKf85GqbOs+igjfZaJWw34nOHPzn4e4/4jwdKoHmgmEtu5iufMv
	 z9sdVJIjyLEqhfo01Q0T9s4nGfFm7IcN4h4NxgKV0Pxcg02cSSuYigncPbzAxSe7Sq
	 SKfxfmVEXZNyuMJKmJkuhXYBPxm5cJhjq6t/eJlM0UsuE+DN8vDZ/Vwxm6Cv4/KLxL
	 M35ZxSZcpti2CLa/t3EhcqRRlDppFDwfqVKSR70BWEwZWRMK2cVaEBf0C6Nj5MKKpM
	 aJNnQI1o4GSa1FyAh8eVqMI4E7ADL9lwoMFRLfUgb2TFghrMM4KK7vkjaB0bUJtZyz
	 Grg8ikWlUvVSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB9C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571319357.1982.7766013205513810773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e4c8abfd5b24f2e2514f8459e6edd6e79ccbae459fcd147ed6891a7dcba8f4
Date: Sun, 27 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745713193
