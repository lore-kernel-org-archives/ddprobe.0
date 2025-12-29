Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21358262FFC
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767050634; cv=none; b=CYjKMck/AFblaK9pGofW2G3CEPQHi04ttWKBTxD0mhzH4RoyKbsUPxPWl5tic6LZx2f7IaO21Dil9t61MNhS6d4nMJIpiKalrQX8DeOcCUMNe4gML/5XS6cNp3kDTCuHJ6uldOGyHffjqR76QvwKAAa918teEdpsbGOAqpMuOR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767050634; c=relaxed/simple;
	bh=n00TOJoEh0YyqmzYdWOfSCOH1krVuovsu0s/D21qP2s=;
	h=To:Subject:From:Message-Id:Date; b=J11ocsc/Wh17yNDY0JYduLz9qN5wA+ydokiI5mUwR0YLGkT1k2PTgZFSZ6h6HmiDuzRX09hhaufAlXNQEO0vP1IY3ipWiJYevY+9WSmjov9tLLgBileLXEx8yVzt5AJ+mi1Js0Ph+itMnpcYNLUD2PK8zIVWsvBt+VREFZxC8To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUJl/Tgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUJl/Tgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59DBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767050633;
	bh=n00TOJoEh0YyqmzYdWOfSCOH1krVuovsu0s/D21qP2s=;
	h=To:Subject:From:Date:From;
	b=bUJl/TgijrVj96SdKmyArzYylQqyHiRGEXhJuF0g+vVZF1L8a1/gNlw37oGOFbrFr
	 1xJMr35+1Oks3K+dVifYPLs9tac8EhmdhjM0A4CBDDuIH3qSnI0SSd3H2dJqEwyfOt
	 +mUmoikRjT8excDCZkvcWKjHT8dwud3eIawYXqLic0bK1KRElhIPKMMVAEq5fJRk/H
	 2C9rKoxMMAr/CzsHEH68uMRr+J66jmwmRQ/xlDywIHH+i8ah8m+HZX6rMtmyzU0r2P
	 Gtp87VCcz18nqzhCbHTkX1ywuTg4Uk+hTiVXkYUpcV7pL2nuHYBj1rIz7kcHzzjHjh
	 LfDP8CXhSX1FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB6E94102
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705063357.7312.10800749023544050727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64943e174b20ba8b3bdad96ff4ef672948fc7ff20cf817d2f06d603bb5831faf
Date: Mon, 29 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767050633
