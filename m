Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ACB1A23A0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767857634; cv=none; b=U2TXdOpOlX3Rhfv1MhF8e8hosE/57dWPYFqYfds5PGHABZFrBzn6lbCS+j+sc6m7pYX35bBzFc1xDuoip4i68KKzwTLrUFK6qB/AFAGlCbNYMc9APhz9jvIiL+xxfucgk0uybxvWFv83dUN4WN22DC1WtOwyJDU8KgEWE13k3xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767857634; c=relaxed/simple;
	bh=poeglxz7SklRBvu8v5Ghj1NtxAqvRARutnSo0GZPQKg=;
	h=To:Subject:From:Message-Id:Date; b=D+psFFz//JmmBNquMBsVrtAn1Zmq3U/Y3Kzkajl0Ansa3nCrVYdKlA3BCy7e/i8IpKG35QmaqVOGpbq5QUf8+pQOCKnmEnj8RPVEEDFcgwzGfdH8Je4PkG9vHu3TsB16TBeBVvlomb5ptKu2gTw3s+8SVrz3BeFD4SwQ4KU2h90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvxiJPSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvxiJPSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBCCC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767857633;
	bh=poeglxz7SklRBvu8v5Ghj1NtxAqvRARutnSo0GZPQKg=;
	h=To:Subject:From:Date:From;
	b=pvxiJPSOMZP/7T+T+UiMZKgZYewxv/RLhP2W9wmYnXDws9VRo4sWCNVvqOET5k4Ng
	 P93cju8D/3b8OZTlHrwXjVUFI9laiiezF3NoW3LmDDOUFjYh/m8B2+/q52aTHskAAx
	 rjGxklZ5vmeuZCSn+HjpGo4bfk6b5G7tHLsP1VWwkK1x0vrJtIjQPm8DPqgxkvssvq
	 FCbHmSl+N4PnlEbROSlhtQKkezjRZ95MQi7h6SVDbZeMeCqECbYsQ5D12ZMs5IvokO
	 qMMpgP81VJyLo2Wc79hEVRzn0nP+UD9fjdl9Zkdz6HBh9BWLVQAblWkHAyZfvB7UuV
	 +a5/ljrPGSaZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E835D148B7
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785763357.16490.16365035487377214304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97758cffad87c69a4596a12fc9e828f62096ca4b8532f538491eb73eac8a717
Date: Thu, 08 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767857633
