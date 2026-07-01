Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D793FF1D8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782899314; cv=none; b=I+wATf3MHh1p4CKjnw79+Ve7embZZJ3D/dqM5iN6fEXxErQC7eW4UBHfZ6nBZGf0tOnGYLEPHvQF8NiDTqv7j548azTlkuedVZrRlWnUrerRnmj8UPjrdcgsxm6jSu5lTqwAtLaXUZTT1nbRML3jUoP9Rnrmpnuen+0WR/4e0YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782899314; c=relaxed/simple;
	bh=FjdrjFELfTdhpKiSxhVRNrM5TKmF9ZgiaHTrzdXsqNQ=;
	h=To:Subject:From:Message-Id:Date; b=IantxaYySH+uzecqfXA0sv+t8OkGn1JnLeTCkqsixWD4Ao0XqMTvDlDXK5wDe0tp4gSAyHXAIeuZt02tdELnjQJyG/jmXF7LG5+r84hhKcy7z16gVdNHInxX9mWAq1OrlqpOfCyUMG5aWxKzKfDgy+Lv4yaZ7x+tQGr/gJ8hWgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NICv6TNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NICv6TNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77F5C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782899313;
	bh=FjdrjFELfTdhpKiSxhVRNrM5TKmF9ZgiaHTrzdXsqNQ=;
	h=To:Subject:From:Date:From;
	b=NICv6TNXGWKF2fJJtRuKHoNXtKxfmfExIP9SaiwGy6SQfto8Ev4zSzYL7YcLlWHc+
	 SXHIBKCF/nl7efYuqEUQCei51QwOieNAO8uBVQcyE4GIrq2BnIEHEgTelugPfaMwsf
	 W3XRdJ++ywsqaqwPaATaY1dGByQb+B1R212Dvc2y2AFwJRdr3J2BVDBdITx4U0VBH+
	 pEQBu8n+2J/VBo3QgQJLQTMfZ9g17UPB3t3ks4zomIyEs41qdxLroeaKCeEhqJSSab
	 O+P6BNTih/CoVigwTNQaQzvzoy/cgdZ6MFdJ21YvHKdwGyJLES+2ixt1fUV49k92PB
	 e6RzsEc+ktsoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD68DC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289931369.2588.13699857308372379615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda5d3d56fd79d55d8e182afcbef8870e99150bf44bd7943baacbf9a4eb55264
Date: Wed, 01 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782899313
