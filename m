Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EF6107A6
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716649463; cv=none; b=h7LJaUfpzfTqWfIhROZs1jaFVooZlTZIu90klgLDMXA6RoxIYrcCPRyrQ7P2G86NA3xWlOhUaflVE0/HBrkBXfcB7TBBtF8EIT6+3arKukDb20GTcYKzjqnuefkRXb02m4owkQcGrkhLlj+/QdHG67KVg4uZkMG6jl2WMId3qFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716649463; c=relaxed/simple;
	bh=N91lZCPAnU9+nr9a7t/UoEsoZz72ltT3sXziW8bS8uI=;
	h=To:Subject:From:Message-Id:Date; b=XTouZ8cl0J+fu1xBMgO+WBrj/Ja4hPGeeLXSNw1BQ3k6QspnfyGJW3xYoyZYw+rTsDHCC5svPaT4lBmaSiYL+OiDIbVoDh76c1M45mq2/YG886Sw/01TCPKC21lMG0eMRuhXmEcpGGyGmoLxXDDqhti7Gy/ziKP6vGbFt2xAJmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KK7XwiYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KK7XwiYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBC43C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716649463;
	bh=N91lZCPAnU9+nr9a7t/UoEsoZz72ltT3sXziW8bS8uI=;
	h=To:Subject:From:Date:From;
	b=KK7XwiYN4h+B2CgwA+bj7Fi7+am1rAuox6qIJbNpLqkIIheFE/YZvNu90EUBtAtgR
	 dXMws5iw/ALE/uzTD0m8CIjBcf5ZMQcXKFkL6idsfXIkhj9aRsIJd7gWYkqrAUMvbA
	 fminOAgnv34UtEHmCpu0eiCzTPa0tXs0G7jIn0dOtZD79zvZ+5twNXSp9j2DZcnTDX
	 I3zCyqLa7fks/pq9ApwdPrmTunS/LXfUZWKqEZSQdotYeWY7NJQyEZft7BDcWnrRN1
	 NHH550jW6XDtWe0TsLi7eUo39afUerp7SsKBr64v900Y6iEf92IGeaSyk6r7FT5bLf
	 O/D8CskGZG8eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A04C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664946283.14765.13674518468810074312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d0acc684489b4cc4d40ea0192443cfab920f8af4fb382968300e5bbd5ad0a6
Date: Sat, 25 May 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716649462
