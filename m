Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0923F2EDD76
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756712994; cv=none; b=EDd9kSASwhBo1KoCID1Xiopt+Gq13tXgyBTC5EndmzJSNqVqYNeCVR83PJf9hG2HtY3E6Cfj4PgwX+v7QoBbeQp+BT/GgoyWrQ2JTiAeUFuhPd65N7Hhz8wnsyh011WRpfvWC0BoQXl+154dGjCBuj3AmbdKQB9z+YFZAp1i/+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756712994; c=relaxed/simple;
	bh=//zKV1Dxcp771aCdk7KvzBQF2fH/utivo4kkLVSsEfM=;
	h=To:Subject:From:Message-Id:Date; b=QiVWIYafgvFrPvphb+DWq8VoirJCYRg0Brbzwq7Q0zhxz+gCifVJ4/Didg9RF6KMP8iAxobpZ+A7g2O5yPnjw6BFFw/0at5cetsPnbT39QJnDojdEpsrDWOMOATcWkKbSh4YiMEmieHxv3iGP/hpH6WDVcHPLnHk5iY3cD6Z/1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A180qhck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A180qhck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F281C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756712993;
	bh=//zKV1Dxcp771aCdk7KvzBQF2fH/utivo4kkLVSsEfM=;
	h=To:Subject:From:Date:From;
	b=A180qhckauxNv5tEfJ6UIIFOblmCjT95rhpxuJAqqZmqxx+q+oFfLzgjV5Gm5hCHh
	 LNsCAIXBVa+8DQGqULTSDg5pXewDA9clHQGNg3ygCA4EYUWZuJG0cI+gjnmMWJuIO9
	 1yYkaNAlZgxYGmMkpSIwu2vUfbO64WWllmBm1arHomK74HZ04hOThPNIl/cWYOoflc
	 DYnfotjLLd1qgO3jpZeKMidtw7f43xQltgrWrwRmJozy4NpcEf+xvQUBSeL1/YGJfX
	 2uBtYL9KXTqK0NbBRe8bInhUvRQ7pQN0Im0HrbTGwTOCkn2CK8B5XGb28alW+p7Pg1
	 PQCuHKBO6jFnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090DCA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671299358.11708.7736031698105585705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e64f6420aaeaf06197b073a4d47ee58d17eb9459600a4639e7f87c772dca9c8
Date: Mon, 01 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756712993
