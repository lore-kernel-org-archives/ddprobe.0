Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A3E388E62
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778763034; cv=none; b=u7oA8Lk5tlmb8gaNKkSE1uUkBAYBeT4VhLXqOb0YnmfGWq4pE5dQqtnsHfO/brbOkfl7igBG5uABptXSwOPhY6NmqkmAOzAkKE9vwf4oXavfeOVqgAYF3FIDgXBgamFuhqPGrfxr5wfDI5vpwTiZL4HERfEP5YcacCb1IXyYfFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778763034; c=relaxed/simple;
	bh=5B87WGDoiHnQjF5KhR3LgAVLfoolUJSKhxdE1/oWgaM=;
	h=To:Subject:From:Message-Id:Date; b=ksk0cb8Jj8yB51nepe1TQFLh7hpso/uH2NrFYTgduwIsi9gPtyi2tJ2x/B3nB6bUbI/I6ewvhfv/uA8PsolSXaoiYVW7ItPoLMrmH6fv24Bw7Mfx0THp1VXLLandOnK7DS61hLHDpfPQMs4pE6T5BiLOJeXk0eFPacRac9JCcgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utuErvfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utuErvfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA607C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778763033;
	bh=5B87WGDoiHnQjF5KhR3LgAVLfoolUJSKhxdE1/oWgaM=;
	h=To:Subject:From:Date:From;
	b=utuErvfo5D+WseGEg5z8G10ORKJuFY9fr6a+5kdYXSwGGTe4Mk96ObQt5xPhwLJfw
	 WIQpqXZfGdaWub/k/tJ9Na0Sc3FCnskHRJow7jhMzG3kqIdVQr7xByIOHegpLa9OM2
	 b6UaD9Z62zybXNP3hYh9zj9hNSWsHtCLZ/eoMNOa9jMPZh6IysMOBU5ZL7UXjbacQl
	 0ybyAWu1K9Jj4mHbzuPK0I7eNYZbEmq50FbauC7+8CT88vUF0O79UbcMMQkYsdCnW8
	 f+6X90RTm4Q0NbjY5NQkkf6b9V3b9rCbuGvWYOld2B2ZIAI77tnr8PSeqqZxeFbGKX
	 i5bmAc2DmHJaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4BCD4F3E
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876303368.6765.729537743601299469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ed899d0604a94c85f265d3dc063f8b9acecd8ff6a7c566681375d9153916d2
Date: Thu, 14 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778763033
