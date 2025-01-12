Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2692624B25A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736656554; cv=none; b=V3/zosN6pqjxnxVOItVXk3RTaXwyytTO05OWs1zU4C5gn7736vV8UuU+xiRyn8DtxQfrvGjWVhOnhpqgGp6L2zwxQa8341YMS7EQub3nMZqyqMvZ7BYPLd/j+U4U8b7lwepvIEGBVhVrDTMWXcxSSyeA53QtQVEODL8SrJw+Q90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736656554; c=relaxed/simple;
	bh=MOuDDlfobWxvL+ROnmwBT78keDoQmwBYKu+4eCy4Vvs=;
	h=To:Subject:From:Message-Id:Date; b=SXfnSwQmTQyyMh7VXmNPJYRobvDK/pqFxwPcpGdD3wA/DrWQ5KAiheTeYBdEopyORtXJBBddyVtLA2hfFqXh9YPxZ03scpLmgKsefn5u2WsITgHqzmsUSuEKvj5M35JhTDAyWN8C0DwVVhCoWpvL/RBKKb73dOl1BBqNWPdDkDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXOlabjD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXOlabjD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9905C4CEE1
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736656553;
	bh=MOuDDlfobWxvL+ROnmwBT78keDoQmwBYKu+4eCy4Vvs=;
	h=To:Subject:From:Date:From;
	b=AXOlabjD1zvH8gfX8oyMnpT94pnXXLnN20aOTk1kiJrJoyj7iYRu//yV/B5bbENu+
	 qKr9dy5Ky803pSrV5s143xx4rKiYbXKGBwi1Q/PE7Rab1yUOMw94QjAVSiSwnNidHJ
	 l6d5yxaJSHze2jgRia9oyika/skatmrQm/ADQVE8XUs/bZBR9Y25PxTpCSyISeMgw+
	 jsop/TTTPYj6B4jZGm26jgUjWbcy40syIVoqqJDgcMXDDwt3yRAN9fRfkNtoCw7LSc
	 dTw9gOk1X9tn/2zvy15eLElbZkwh1H3rZGyhpoBceGzO2csE2xBJLrzGZFMGDmM7Zh
	 IrRjFMjFHSM2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E37E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173665655358.26754.12473362037603085605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ef074117578e5ed47f40c1b15a71eeb53c3fa570fc4a058b70d3d1c06335a4
Date: Sun, 12 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736656553
