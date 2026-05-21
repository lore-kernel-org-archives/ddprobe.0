Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346F237CD34
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779387754; cv=none; b=EtNF42lYHOGJUqufJ843Qq2elF7er9Vr8wpvABeVbnwHdjKdrp29tvzbvkHnHgoo5lcHI3ZaAO3Eb8xz5nQufs592UEqTMSNwaLlmDW1mKnVvEQKkFek/3qiMhxc759VuL4zc6s68Ler4JKS118I34EOGNIKf4pBIjhFZzqiMhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779387754; c=relaxed/simple;
	bh=ZlRh0QZXNh3239EKBcyRk7nqRknSomvd+QcE/OQ96RI=;
	h=To:Subject:From:Message-Id:Date; b=ScC/MpaRiw9UXX4TpvScuGyyKIZNYgrwwFMVhd9bF2FWA+LJ1vuWKiK0pOuC5oR9kUyOh1pSdXpj5kkIiTnZ4ufubkiKbzR4zNCEb5UFTFJ005u2ud8nQbzl1pgrDD/g5kUdeJLHLeE1F/ZjfL1kOxOUiZjaOzdA80LnIvT9Foc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pe65QTFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pe65QTFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15ADC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779387753;
	bh=ZlRh0QZXNh3239EKBcyRk7nqRknSomvd+QcE/OQ96RI=;
	h=To:Subject:From:Date:From;
	b=Pe65QTFzCBEwrAY9gXKo9NSCZRInSE+Fi/KSmeUQcTBddGTN+krBTpeiM/AHCkZ+3
	 sfMGg6lP4hnFwpDXjzN69cjW1pOiHiNJbHFkK+koElK0eYmz6xY50p/KeXOItZYNmX
	 yI3t0KEszYwUGszODxaRT7wuaFpLGU6bSFXr6jCjCggWwqj4ijLpwQ0zjKKOwH+W+p
	 bKQEBKpk4FyT9718e0ME0d5eIWIl0Fr6lOMAi4ms8OnuI1NM4nwlgQo/AWFPXJkKnP
	 0nbK33WE3D9vZTTkffIHbuShksPtEQcTt5lZlB2khS4szYKqTe4X+zHvgSnuLl9XJx
	 wFag75ugRYMMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A51CD5BAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938775368.27522.16307710885685079179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da86fc31b51cc19c872380d0f9f093b5a162ff620bf999991d28cdbe2d050329
Date: Thu, 21 May 2026 18:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779387753
