Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1AF43179
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724908554; cv=none; b=jIfFJiQouQKJeifaBC3ybQwpuummptXZEbffz4CtRq3yMiEqDXSe893N3l4valWCrgPUosvTr9tGj93Hx1b4qrGm1P0PnbDxTxPwhG3qiIAfGc+MvCzMBdslOZCasegH8j2kMY/LHNr34RhO4Gyq02Nee652M8pfpsI3ZudoyGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724908554; c=relaxed/simple;
	bh=KFzcVFjzY1FQPoAzsG9wKsTFWIms/HrMzgbbaWa+9VY=;
	h=To:Subject:From:Message-Id:Date; b=dO0RW8TU0YMQZYi4sosbLDxDvIFTeS82rPKKzjib+/6WAbtRu9Go939WHs0J00Gy8XR5RtQfajCUenJVg9SkmT87pNxrP0yY6jA9ZH9EYY+51F1URZB/voTz7ZTQuwox7LIRWdnHb5xt35m4QMSamtb6qIduNJLKEp1FzT6e6H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfp+Q46d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfp+Q46d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4986C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724908553;
	bh=KFzcVFjzY1FQPoAzsG9wKsTFWIms/HrMzgbbaWa+9VY=;
	h=To:Subject:From:Date:From;
	b=sfp+Q46dLELN1Eewj/XijqUwj2wcBySQqrCr6ApBoy806PxpS2bmTUstBAZ4M+vhR
	 oJBBu0xLX2L06bD1Yu5Qg/dNCvRaV1Gxwy9bMCDIVXTfQZHa4tH4pTljbsU7zzPY7n
	 NXcNKwV8P2oVdFYP3Mo/JB8Db18/f4JLa+2eHXV/FG5Y0eEsMm8hjVp7+Ph6ce27KP
	 yKE7Si2DkneApysAMUgDE+hj3iJLRUJJDDiSnVyG2Xx9eLZq08TCmHFarv6ZgO9DiJ
	 2ggxbNFuw7BdgYYIzfqp8ym1xv4uWufynM/wM2jdHg18e5NjzFrcwL7iYUac3ITLr+
	 yMzi8jTZ9nHMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E0C7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172490855360.32601.4503641850071675501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e513da5c010913577d8b43face4ba1b6d7f9ffd81ad1e12e70e2252d5a3beb2
Date: Thu, 29 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724908553
