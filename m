Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6099E33D5
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713690623; cv=none; b=VfowmUilMi/+fI8n0FoJ8cW+raYPD6Hv0uMfcT7O5rpFlEX/68bHAvfQ3xXo8l8DahfE+1kNLFc82kYAg/QZtdCPlWcMgZK1cJdZPI7vTQTASkpISt4RKoCNJtqYYY9rVpaYSFBWB41MdjmMgC+ad3m9C03z0YozbQPJV4lfF7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713690623; c=relaxed/simple;
	bh=4wvJqH0Vqt/iMpaKqUSLYs0AY3PCGAxqq2ae0phTckk=;
	h=To:Subject:From:Message-Id:Date; b=rtnzBKf/3sORj8aAMHQjHguPogqj56SmalW2ctUdljs8FtJAlq8kj/zdtGDMiYhTx7Q9KkeaNhHdiH10r6GFwWyo4i/rpAiNSVndGyPGFePxj7us1rjan8QUjz/5tIuDy7LZGbvNynUUlGig9sEqL4y7EuP2A8kqP3J8w1FqTGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcVNyJhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcVNyJhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3195C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713690622;
	bh=4wvJqH0Vqt/iMpaKqUSLYs0AY3PCGAxqq2ae0phTckk=;
	h=To:Subject:From:Date:From;
	b=DcVNyJhL+VBebaH6zVb/7Tc+AGnJIXqUEbRPtYcaQigh5pdRj2Iyccq4QEqv86TOu
	 tFSrH8veQ67tC2gzk7GR2vEANTMgZllw7FekFkc2E37hRF+cjmPa5Fk0+STkmCLwcS
	 8XMPRrAf4oz0IpTMUAf16XfPHjOrYQ7ii1/IOf/KIjAywlv3qQecqC04oobJJSTSvu
	 bk6sYM31ntN5z3RLADa06nx/NQlZA/xXGGMtvOqCikDdkVYrI7vYxoD4ykStXagWd6
	 3mU5jPHwwdS+XrnNtpLigUanQxQ6MTnyCXfREKJA0xDYMxusHvARSlXKaHoBGKR/e+
	 Wbmr9ZZAV5eEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD448C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171369062277.21096.3588276453463154178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ab0ad2d5a0c46008693897b726d6cbdc704c90f26ff27ed5dfa4204c420c54
Date: Sun, 21 Apr 2024 09:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713690622
