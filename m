Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645A333E1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738380954; cv=none; b=Eo5hNY/jX9o4Q0GyyVhE4oXW7QQCL6DQHsw1y9cnUPrS939OCAAj86hfICKcIX+OVMnO4/4/qrkj4tcs2vYNBX50BPaYpMk3GxWt8t5MSb06kq/iWE0D+W/3YbOTtiQ5RX58hQwAAEKqpG7ajcTSGw5kq1aKAyLCUDoPzXK86uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738380954; c=relaxed/simple;
	bh=/lY2gh+4g+UQQBvigR5GDQzrIm0UDanAUWTdvif99/g=;
	h=To:Subject:From:Message-Id:Date; b=lGU7IHAfY21ST1GaPXfb/eRqICbN1x1I7zrZKT0k1Yxe3xgEZLTmJm6CCnwSQdDu/VW9VAQD5ZYg799/TzfqyFUG1XErFiqXSUXX1hkyEIL03NQRJqPKn2OfTKfM6uTus3DUTd6dxgxkNQgNYRTWK/44JWeyFh+RLt7euhkOHcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9QwpdT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9QwpdT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0E2C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738380953;
	bh=/lY2gh+4g+UQQBvigR5GDQzrIm0UDanAUWTdvif99/g=;
	h=To:Subject:From:Date:From;
	b=U9QwpdT7ifiy0fZtEe8ISDwZlLniMNQd+TuK57g5qSOIlE3sbAaev1DsGa3hArogS
	 Irtsz341VJRxUydpCinzkQKCEgLYVcrU51d1OgZpST8hv1rYtZIysA5RNivsSDCQvF
	 hkareoOjTwdLwao9yd1o1GiO0KU/RyVfA9FV2Q7NuI5plIq4tGnJhe6AQb32R2VNSj
	 befMkfmlH/v4QFSGn59WF4LENTxTXn4OERndyK2IQfIfpneAY3GjFTgOaQINls9ifO
	 889gg6YTBZjyQKn7qi8jazLUkg1crRw6d5hwCR/ozKxwVZGAMAXLCPBbx2HU0kG/N1
	 T/GZaMZdQadUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5309C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173838095362.32606.11387973395058964012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58700cbf606ccaf1a34b3802d44d6b84e1cea171bd1459e5a058a7f002a7b834
Date: Sat, 01 Feb 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738380953
