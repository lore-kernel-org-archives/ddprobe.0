Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD2638A718
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782929914; cv=none; b=KDtPwP4IXjvDIt6gfuEBfUHSTzf+MQiTo6WhcKZZXLA8ZjVknwnG7lT6zIgW57zTnY3GsldfHozfhVKVmunnJFesQLXFyVupCAPWti4h6C3VRBbDeD4d+VyDhxA2kYsPnBRJZMdip5yx/eevEFZh7l+PIZD23IBw0nzk5jiO15c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782929914; c=relaxed/simple;
	bh=oCP/9TZdcOvu2Kbuhx3Necxx/CKXg94TeI8qljPZTBA=;
	h=To:Subject:From:Message-Id:Date; b=HJrFajMGzX7QzvAfbloX5QJhP4QbBsSOGXtD4iMdcFbOO6kW0xv5PUsPnI0SkZQbHk+K61DYJ9M1u0Hm81gBlZB75lLrnn5WxK904gjYhf7H0Mn6qHeiEG0/5nkuZHh85IgzAjgySOH1fdbVKRaXdt9ScWYpVOglcJUZxwiWImk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E00c8x+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E00c8x+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA49BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782929913;
	bh=oCP/9TZdcOvu2Kbuhx3Necxx/CKXg94TeI8qljPZTBA=;
	h=To:Subject:From:Date:From;
	b=E00c8x+z+BVlTfH26LYy1dMHs1o9uIiq0irwD1oU1qDRKTsPdWw67+XLw1BuzDKlZ
	 HoiEJfALHzs0g9SCyZ+WkpFk5yV7D20akj0XQPxQO8lfucmmW0hTb085ApA/vUlRkj
	 neeforiYnj+kmib+iRBSfbU0fWIlvQupMvkQ88JTbY9V/lltm+od6UZFO6P/NWE5UH
	 Zhx3v4pv7GjlsQMWE50JCIJstjhK688KfjpwT80z8k83dM3W3lRCsDYc7DPnObeXLs
	 iLBX5O15C8rlOkZ+vI1fOQQstFmiOOyHbGnpqwB+xWtBHHQjcLhyYZtU1RUQdroBZH
	 gn4Mei64dGQiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA744C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292991368.32570.15844733526930474684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be703a490cdce1983adbe9892c8f306874f1010c9b6075a86ac0332353b7e37
Date: Wed, 01 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782929913
