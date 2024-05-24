Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4DC36D
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716511403; cv=none; b=kiBalvQFNj+TRQq8900TeKf1kODofx2sIzfTTk03qYpgfwMAaO52wGeYzEYY5PFfgFTMUg7DwDNJA9XsyYFD1qwOCImW68jFHvlC1SEEsRZLii8vk87PwyFafZh6lHXqxx9wVnVPD5zoYulR18JgyUJib5tR4aqfsHjUrRrf+pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716511403; c=relaxed/simple;
	bh=dtissLZObF2elIdmStI6Q5w+KRCQXCCbMnssRIdcpSM=;
	h=To:Subject:From:Message-Id:Date; b=dj+jzkUsjlOZ02ccmtBO8AqAmA6yWireelnIKSneiSHT7rfg/Kq641urWKH+L+PZyCf+YSeTx5MvGK7KFQvkZwsmqV9J84lL57B2L+0Xg+iPU9eEnjLZKecgnB/ehaOb39MlR689Jc2T/0G3e2DMFoWpsRUC+Yk2V+vTE3ZN5Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCl8Nx4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCl8Nx4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41CEC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716511402;
	bh=dtissLZObF2elIdmStI6Q5w+KRCQXCCbMnssRIdcpSM=;
	h=To:Subject:From:Date:From;
	b=aCl8Nx4OUhdIw4wO1VAJ48aPthUdSPhorAEqhism3JOh37O8HE9v/p4rN9rWPJkDO
	 4ea+M5/dADPk3KwcA/jj8XeyKeXAymOLhQt96mLP85hTRO9PVirn3HSnOhgo0FUU/4
	 yRlptyocwqkg32Zwd8pGRuIJzHAzkj097Mq8x7zONKiVdADoT4OIMGPZvgGNm6yxUS
	 kMlV8qkUCOa/OkuaaIL8gcy73IDWQxAIG6e7zPyhcF1eku/MNDSnJSLZ+3CyUeI1mC
	 cHLYTsdSXI7x3YFH8FU2MzRTqLk1JVtzf1pkuobdqyPk6h8Kn+JIl9MSiRpwdJwm7M
	 L9/N+Z1/L9Dcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2E3C25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651140277.1325.12090412499254706319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f855db593719e039e89348f2281908740a62fd5556b818f53eb899bb57e4ace
Date: Fri, 24 May 2024 00:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716511402
