Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEC72773EC
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771476894; cv=none; b=Wg1gcobbxp02PzPU8glErJcLYGwj5q4+fcG2wOYoau/bEnj036D5y9b3RtPAUftFnjLx4y9JI+LRSGqScfgE7tFqqK2WdEJchoSCl+uGGF1ORLiBopyrikygSie8b4cSk5M6UaOa62smF4uheo+QFRGE578ku2OKacsvEYEuLoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771476894; c=relaxed/simple;
	bh=Ac5PkMQRNGta21ItVILNLF2zhWjAATQ5vcJnGTPfGbE=;
	h=To:Subject:From:Message-Id:Date; b=qLFvf4TaB3BS/T/44WxKduldkIw4ZjcT/fyzj042nFui2nMYqbe/w2FEznv2tvG84P41dZLzKqMja+xe0J5C5opQKNLwCz3vK8K5v4j43nOKZEPKup0AUSNHPDXlAup9ZaEBpB6hdLq9RvPZR9MMi8/62ncAN26BUWJ/bPH7WnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFyvKEtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFyvKEtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFD6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771476893;
	bh=Ac5PkMQRNGta21ItVILNLF2zhWjAATQ5vcJnGTPfGbE=;
	h=To:Subject:From:Date:From;
	b=iFyvKEtJ+EbZNjkBqR89uvvadU0h4h+C7Wt1+7A/RO9p6KPBgKU+5igHQH6O31aw2
	 BSpJ4rGOxoGgMZRarLW/44erndg6qUcMk1lgMF5lDz4PQR0arQZ5sT/EK07BpR5GIo
	 AFiGioP9m5fsmWwR6LHWv/fchq8FagftzXbnjnrkEhdidRta1GofoJxJ+IEa5+Fcr/
	 WU8n2O+LOymnwKVFeHu3kAIT90BJnUTcrG69sCpcmOoTaLWVuF7FZnLSLqzWH5RF5x
	 cH01lUp1Ovghwpgekzx9U44dBgSAoeVrNyhftBAG2SfUTv7B6GAoUUuapFXffjNB2Y
	 xrP4hLKCpawfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A164E9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147689360.16107.17718977052360271982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a6512546cae45cb40e453339aee4870e1bbd858f3fea437f7e76d44f97854f
Date: Thu, 19 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771476893
