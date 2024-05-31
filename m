Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631D87483
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717167863; cv=none; b=qEj9Q+iU1kzpwPdzT9D5usTkq3495x3KB1J8mnqyE1CED0wFJo5sfYoNp/pqEenxy+rVtNRHG5hu9TqmaXMAUFU+Iw75qjWRPJZSaorHlxOd9avCh5sn4R5sBc4PE/paq7xoxIm9ZGzMXc3JlTYFVz8491bMM8g28khS7xm5LdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717167863; c=relaxed/simple;
	bh=YfIaOruilTkHsx7DaE0zuOFoPrOAa92SuOuBz2+/rwo=;
	h=To:Subject:From:Message-Id:Date; b=PXkSo8Bs3TPS2dnKR4v5rEHOOXrrt9LfiwJXirzqXn3ZVDM13iN97E+FbBc+LW/6J5gDd0hiN3wMXPwyTEU0wDJTOCWX74Y5EchGRogiNQd6JfXVt1wWE6V/p0SIb42Cy/gFLF4JWTmBv5ruXGO8PFoCaM9slxPaYLmq8quUjEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReXStYsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReXStYsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E2AC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717167862;
	bh=YfIaOruilTkHsx7DaE0zuOFoPrOAa92SuOuBz2+/rwo=;
	h=To:Subject:From:Date:From;
	b=ReXStYsEjYPodpHSYcvbGe1knE5tuDC2KkJGe/LtsRGOHA6gk/iLqksStpIu8wK2B
	 3xB7Pj8OTZ27M3tsUFBYyPoC2FHNMqD+jnM5wpToprWH6L531qLWl7Ca3m6FyeR0WI
	 DsYZFBy4pBT1NfYGSkv5BGmQqsNHq8uNhZXO1HZ0taF1Lea4rQn0ix/pLAOlX80zmN
	 vgsXsWxDQZgOzikA+3ytUv5JUjmMEL0hGR1kY6BBqfXO6w0c4OxmInYtIcPoy6urFA
	 dHmey36niv4BxtPxSa+/PBjLXI2kYJKClzMMwN5/kwbZDWKA/SdoBSXokpdEqiVXOR
	 gTQJHPrL0+eLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4014C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171716786279.6249.4720950040747474977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dacd9c69880a3bb0c2e179a9435ebbf364971bb7ac413506c4a9498b654ad912
Date: Fri, 31 May 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717167862
