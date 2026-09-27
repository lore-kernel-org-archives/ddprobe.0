Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F72554704C
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790494834; cv=none; b=uv2Xa6HlENrJVd8QZ+2QYGw6fqX+1Tqog2whNdMgu0VnOlQ091gUIFMS/07ccDJOaYV5DHhYw15SDPegSkYLpHBbVDr1xckKwMENWlr12PqwcomjvfHIqFSBwzDgUWiruk6nwOOYu5cB+ynqiaelnGY8ertYzo5MQgBZq5Bcgb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790494834; c=relaxed/simple;
	bh=2N4BK1XjPbqhaG1iYK+BXYbqVCojaA5nO8puZ5n5kVA=;
	h=To:Subject:From:Message-Id:Date; b=efMcTJrI1n7iA9tjm88gI6JqHTICjL0uJDonrRfE2RyJf7KGH8HtuJflyrxnnMEp7AWo9jEotEdT+2z61F6asgy4N5VC6lV22xMQRFbWufua3eqf0SnhkQhDy9ZEmTijFO90f16Wy3WdvxK2ucGs6gyL+gRpEa1ioK5+e48TmpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoPesk9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoPesk9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D074BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790494833;
	bh=2N4BK1XjPbqhaG1iYK+BXYbqVCojaA5nO8puZ5n5kVA=;
	h=To:Subject:From:Date:From;
	b=aoPesk9QP3yyYFNbb09uzptVANYLROwRceiKXvPuHAez/PQhMATSNXAoJw2sOosRG
	 3M7MjZCNhm4BnzCqdn4o+qIjWWr/5WTqScAIZHqEVqUyDclObc0VTX0D0fQcO8yys5
	 dXyfAc+0UIVmKHneXsW3T5ui7F/ABpVA+bOi8yo7XDO0M2gQ1Ui5OGGEFtygM7hoO/
	 8ZoxxuhBWygPLLAoVs1wQE+f5yVD+OC8GxOrt0sQYEi+xrtv7sp1g/MywqUbubIdbk
	 8imAf9ja9R5j+Nt3xSCx59RrWqkzjNThCEB8wGrKBytfLrZ2uojCjptjoH3jFK7ALw
	 Q12EhhEjiVF5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCA0C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049483370.12444.5861876920365198261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8270bba9c1c827a9747b01496340599ccb2f7541cae66226f09218df0907a1
Date: Sun, 27 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790494833
