Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CBA1B960
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755217194; cv=none; b=Defs8PwyaFElI7LEsCbXYmg0JdFxtPEd7dmw/j3kJzdGkXF4n/RxVFXJvuTBhtI/vnspEt4ZyOnmW8ZtO6TYKJAqMzYfS4emj9mfYt6Lg1Bbb8wVODktTQaj5YYO7bd3eGiXi9jtHLdcm2fPBe7w6ETzb6r+iBAPyZFXPpEuG7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755217194; c=relaxed/simple;
	bh=8OlFbrBGAfWNlrXJ6Ypbg2PE186WRMEiMq/JB43Oulw=;
	h=To:Subject:From:Message-Id:Date; b=jeFx+h5FpkKdbYzEQtdX1AFowe3SQU1/Jfx5ltxzXQ7KQO0Ye7uZiIJBwJl0u49DXybtD0PWAk+v+5ox4wot73eV2Iz7u5Kj3+n9NzQr5H282G3WmaVrgoXypA1NAUJU5ieczDE7cEJ2TjOUV2S1BtF4vY4s4xRmdLFBXnTisLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5K1CGnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5K1CGnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE78C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755217193;
	bh=8OlFbrBGAfWNlrXJ6Ypbg2PE186WRMEiMq/JB43Oulw=;
	h=To:Subject:From:Date:From;
	b=O5K1CGnx+aWyL62jJ8I4ptUPqGxHWhaXlryQ7qD46/7d9VEXjQUNnz5kp1XuDYris
	 LK7oXeMRocXMS9dsuBzslr323adV2w7+grRa4ZWqb5j1jhR16Y7UFJR4bI6VpG9M4n
	 NNYxTHfmjPicS+rgjE4cfEvbYzvZuCKmjOq31jMhGPClT3Db1wDfvEPFtKranTo5qY
	 n1Ubj0hppUDL4Y6kidIp8cUz1M4yelqJS977vde0fxZDzd735v0XPDcvi4Sehim7tg
	 1g2H7Djf3Setva+VbIFhc98Q+UDuo9tgx2zbKMNZ8rhgb4xP5y39MSMjrg4uoX1IlC
	 87bwWMZyg/j+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5BCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521719357.15385.4838070064975658286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fa73f54f9a3e08acf6832a6d3b285724189ff3d3d80c49ba46a1309c61ceb5
Date: Fri, 15 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755217193
