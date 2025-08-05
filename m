Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BE0235364
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754437194; cv=none; b=mc8PcLLnwuDpcj2xF3mh7rPFRDhuCjH69dzCGkfnKEF+ym7DXO0PtVwxERYM4oFyKue0x5vgOA4NUaJN/YlDo20ACpJLu80quEOtVUB2xQSemk4kiHlNut7uVurds6X+QGHGzbadrUHSShYHfbSxhjLrFXvKeORyj/ZheAnENAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754437194; c=relaxed/simple;
	bh=FeQF6xdgg0amxAiwcnppaAyZQayfMMY21MJ35ijx/qc=;
	h=To:Subject:From:Message-Id:Date; b=qMlrPHMeUwHU0ICRpK0k/lKTkxDNFDbxqDWOlooQvHi/M1hZ6Li97+92C0HiANJn6pA7NfCX9We2tA0Y2UBJMKd2g20H79lrqwNXbble3fgnAjnI3TbJ5WHnB180VvQUTJDM9w5k3RTSkA0vUArW02/CIQZgWw5yxI10iL/2vS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nj/WYe3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nj/WYe3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE481C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754437193;
	bh=FeQF6xdgg0amxAiwcnppaAyZQayfMMY21MJ35ijx/qc=;
	h=To:Subject:From:Date:From;
	b=nj/WYe3rMOhwqX9rMgx/tD7T/mI0K8Id9RXUm9rJOn6yAh4aWOAomUmkvpRIJvn6q
	 AAPLFadf7moXCw5uqkk2Zwz38ABD5kcZqCRE1f3U+PfeujczXPeALrdaGauERU4yMN
	 mzzYByIS3QGJ6zo30I9M3QGKobWTO/tzDAhEOuTS2StgPVAioryAeHGqFLgrkhuwtd
	 4nKxieLoA7tE+Or04FXZf4PXfIt9GhoOsdoz/D+RGCfSX3DvasxJvy4K3wDZYKOqIv
	 R0r2Kx+pge/FmU4aEVikOZi60MtTiz2oH9WJH+wmTV7akC+MMlmhb4Yfw/Y8E+heHr
	 kS55sXP410ZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99799C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443719361.11184.5370627655485177272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae005c3b9a6cc3b66666291a586e7c73acf3d3b76a40350be7f2b43014631406
Date: Tue, 05 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754437193
