Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1560218DF8D
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755966594; cv=none; b=b0lDPJqfBkcu5Ps1BQi3VM5zPOO+4p8Jam7lkTs3L44PErWvaoOJJlvqRL48oMkbma2L8VqEywsPCyyoWmAfkqy9GJckF7UlTwEZNOJ8qB3BMXsWngC7iF8rS9BNOoExPxRUgxxLJT/65LKAcY8nUW3VPBAj78DpvE+ZSERrmV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755966594; c=relaxed/simple;
	bh=kKbC0KhUD/oEQsgYIro0s8+8SMMX9qzAmgf6qzUP1Io=;
	h=To:Subject:From:Message-Id:Date; b=ondm5ynnKYmovVPyizp0mRhKAJQinCREaoRcuk6THZJ7dK5M+v6MXqlv+0pAgmXy+Gek2l4hBUubojKJtgbYzdRZg28xzN4E19C7G8txCrl86tRuXrn+PAJmrjrynJ1WtsjhFGexFauUJsN/6xFsox3DaVSAbESUMc2+0Uv1znM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJTBTkIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJTBTkIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62EFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755966593;
	bh=kKbC0KhUD/oEQsgYIro0s8+8SMMX9qzAmgf6qzUP1Io=;
	h=To:Subject:From:Date:From;
	b=eJTBTkIxGSLTsnY7bPHhfCYTu4mREzSTKtVIQJWsgKNFGR5iK1uC/Y+Wvoj/YA5lI
	 21iNIfFQWcuZrWI/lj7vXkCw82gnn3ZUTTFZRlNNcf7YM7gzWyvdzJa7QOivkPiRbJ
	 hm3tPCyersDVkjoWG0ArHqm+AeqDkB8+c98/SjbahWMybyu5dyr/0kn6ic3skV21b0
	 y9EArMKB1MF2FgYOcCEsCM1H6uo/74HeQCv/NeC2UBpJS5FeR463ICqJq3JIRmoXZK
	 NR8No3tzHx8QaVmf3+SWL13Tjz3PPaWHEH88qnLHEF668ESKPW2AjK3s+enfnhKETj
	 tBMc9FYZGobDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945A6CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596659357.7522.17941880821923326857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3e7c716e04b5b9e7360d8ac3bf58035646f2b6fb051b01a08829a604413ad8
Date: Sat, 23 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755966593
