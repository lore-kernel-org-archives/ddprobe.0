Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5724A26A1AC
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787115634; cv=none; b=ssLAIB2jXZZFj6MPu+qufUW+OsE78sLJf5cTck3QIapm/irCY7RRFydAAgJGYw4hfpXb6H3oc40QiZL6qMvy1phx5k2PD3y7pg2LaZE2Jrq2OA7UWRFeQoFmq9jResfaObhrynEgyQQEUvVN1FLhqva22uwymE2yDPsltZe6NaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787115634; c=relaxed/simple;
	bh=nX7wOcnbxgvCJkY7SocqZxmbSGn2QCobpNcvo0Oz1Os=;
	h=To:Subject:From:Message-Id:Date; b=nRswiZ5yoCPLZ+JcAoWYE1mZ57BYpssaChgYztAP4fRCq7WRfTrBrMwqf1JtmxafkRWF+JzMAetQwfMjlnsFClkQekW/EnVWl4kxoSyQ3cAEqZfpi/RYtouEVfZRUWuXiVnzk4RnxuAKLVxngwOIorew9K7F/8hX4L/tuDyR8Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uq8x3jWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uq8x3jWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1703C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787115633;
	bh=nX7wOcnbxgvCJkY7SocqZxmbSGn2QCobpNcvo0Oz1Os=;
	h=To:Subject:From:Date:From;
	b=Uq8x3jWidRmmJLzdASo6mvC8W8dFxzUnhvGx9QmLknYlP/1UaP7AuUXeYZNZDB8Bu
	 fLtxBJuJFR2H8Wxh/lFjUCzMzdsvNdASLwnjfjHzcwZQRIwUV6v7c2ghAnmT5BpMZr
	 wcQYEaxVxVsKjXmPlnxrSc+2BurafOlkMDteDgmcT8NfCTowphbA858hrN1tSseXpT
	 FAAlfKG+R8VIAUdrFJC27BwifXNSpF9JgVR8WPWWz7OUoBJurop3KgrSBfO8MJHZp+
	 Ex2W6mNcFgN134OFrXUz113kFk9cnK59M2/UIoA8NnDvLXtTgsqn08AwIEt0pCnQ6F
	 q4hIwE31WiuPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD9EC5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711563369.28284.9591208189234941505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42862d55d5cac36a68aa8194df23ccccd76229f26266d9197547cd1b4ab0b4b3
Date: Wed, 19 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787115633
