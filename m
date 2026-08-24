Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B09736308E
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787600434; cv=none; b=mvID5EdbQYC0W9I8yKtBErRl0mISOCbSRWcjO2m0cqkGkQwpQ600t/97zezXl6yI6wn83robqDWCzs1M0XY+969LNlZeA475lm5lVaXp41X0RWjuc4SNqFYIw81p5bh/ZMTR/xGGyvOOSJYQs5yVh6UDqQTH5VQJYSL5k9ukc/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787600434; c=relaxed/simple;
	bh=OuDH7JVH6EpXnaj8F3QDRA4Pg6/evyvrmRugK4H832U=;
	h=To:Subject:From:Message-Id:Date; b=q68vboFRc4fhx6mO/L+t2gxShjz/+8L872VwqxO/Y8GJO/mtVIUbiT3vffrC9q54DFr+HAdMXED3OvV5OBZyR1/YQOhOLy75qEY9aMSMdzxTQFNrevCoYWFKoem70j111uxwJjddBTAAyz3enAa3GfmtsgsP0mZM4oBwY+0jQgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZQ6iuVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZQ6iuVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB7C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787600433;
	bh=OuDH7JVH6EpXnaj8F3QDRA4Pg6/evyvrmRugK4H832U=;
	h=To:Subject:From:Date:From;
	b=cZQ6iuVd9dJ47bD445kTACoo0+YxRqkrm/O6BoRycxmp8WtnTvCxDLvTiv9ymwMaU
	 WpZ5UgM7RK0U/8yLktscyACxmlMTEgIaXg8VbQUhxvFDf9ZtdqHR33d4h7K3BLeXK8
	 SnRwcO+a6a2tU7XHNfcJfuYns0PTLyK5IfBNxU9bUyLawOrZeiABoKqqvlcrq17K18
	 /4bTuNzXi4muVT4/X/kbXq2wVfA0pAcrOluDPEdPcclBzh7aI2j/GTH+jnUYfNpi3W
	 Tx9iZ3E3jETCRlNzK0PMuTeZ6KrRNgjuYGSmbap99JRJjc4YImBOJattP5bEc9XAIx
	 7ScJfFD1rZDaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4CAC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760043369.15662.7344366012322195576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3793b9b6574e664d6b4f0c1807010bad3187176e10dbc0dd7926183885fa1155
Date: Mon, 24 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787600433
