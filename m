Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8162BB13
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748159994; cv=none; b=r6ZB6i+cCEBauwONlDcXAxf4JytbVETudLzRV+QP9CGzORu0W7O1j96bX46sLhIcZfAOH8SzBqUYoTYHWqc3ZmRKcZbYTnGldhxZaNzy8AKQkm15ljDbtajIYknDRtAntz/PMUL/PRJ8jzt5uW1Hus78hxaBJNo3dog0yW09MZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748159994; c=relaxed/simple;
	bh=M9Co1Ljm1RwhXaAm+nco0LoJniEgdZEta255+On+1LQ=;
	h=To:Subject:From:Message-Id:Date; b=Kz/iXmV1Im/80fnrribRhsLJAKEY3u1ZImX0BEU0xT4m3Zw5X3J51TwptH9T2Mi1MQtPGsxpzqre8nmxl5lBJOTtwRfC6lpD9blRl9a7M0coC/2JmKl6pdgVSzRG6cdlRVexC0yEgg3g2neuwXXls1RDodtWqbN8m3gQzNHo+pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5ROH/Qe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5ROH/Qe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6744C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748159993;
	bh=M9Co1Ljm1RwhXaAm+nco0LoJniEgdZEta255+On+1LQ=;
	h=To:Subject:From:Date:From;
	b=u5ROH/Qe/DL10khLHLHauaZNJiMefKUTjIBzeI00OoYsYODp2ekw71WJPXdM75Ux0
	 fCXI9waNp3ISc/nQTQK/8R5Qr5zweXE6s8zqjSc2uspqQnxo2L8RWg33eMU/D12Ao8
	 bOH9Wods/2UQNI6PCtXSRDlFKEvAsThREolqmLsKZ5s/qFJrQMTXoqSy62/Jm+Muo2
	 8eSxmfAPo6CL33xJhRFGUaai2BDugauem8ELzvUGBeOr4vCbofkQmg57gldX1IDBfO
	 ON+PDDVUrR8M2trdp/oyzXPcQsxo2H5tW+cYSy3P1HYnd18+ZMaaMR2mLVAQ8QgRDG
	 cS6LjqE9KKM0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951A0C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815999357.16579.9001313816403123623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba5ce09398631ee597f5eefc73a6eb73bd5bb5109135c56db84694ce98f0016
Date: Sun, 25 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748159993
