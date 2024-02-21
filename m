Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048CB3B198
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708500497; cv=none; b=oyiNDngky0VRVP5PuE0As1776UEwM9MT0QcKM3cZXPTNYltYBI0YYvKTnmSzqCL4VJ2SpELI+aRt+BOd1YuSoxG8rJAIi1BzohRTqq3Dhe/bpiIEWGXmx4aq5VQW8c+gt9DThIBAouC6n85fuhNv+ytEhKdnTRqso4o0slLxdRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708500497; c=relaxed/simple;
	bh=LgsdF/eyjWU50P20gMl6cMldTGNpvB9PYM32jAxB4/4=;
	h=To:Subject:From:Message-Id:Date; b=MVz6xhWnAnFZyq30VBkRvE5Y15V8G9hM23K1RPtGqaNR561aDzOr7pOdi3PLkuDoyN95FAEoJ9rVxf9iE466XeDNyVjFvZJ7ycja4+UY2Pevw9XwPUbqn7LemfKmkZCheiDVEeTxFirm8MwcW0X9QYGTyhSFt20atnPW88WObeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1MzvZeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1MzvZeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801BDC433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708500496;
	bh=LgsdF/eyjWU50P20gMl6cMldTGNpvB9PYM32jAxB4/4=;
	h=To:Subject:From:Date:From;
	b=C1MzvZeD6YeJ1vCPhN2891KgFfHSsQRmUxzvtipHGlKBZQLeoy5jesi43audURudQ
	 d+QwjReJf0FT5JfjlWSTpj/6Lhy7y+1R4nqfIvGZNAKPbanfdcKcY4g/CEGVR3fvpP
	 5WbtElTU/77CYsKaD3XMIUdqMYJ+XUi4fXa5xVbuX9B8x3hxZpy0Ut4iK8jgPtJPqB
	 LuAXfCdNaLFm2rWJ2XXHJrdUfSTc1cHG6/XIeVfOHv2eMX5GpRRU2Otqzkm8p9s9N6
	 heufjxvhYeQpE5cH5cOSge8aLz/LSegJdfCvY16rgWIPqFmQvGzWs9uFgvl7Hm69Oq
	 ZODVhDpa0lm6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62302C48BF6
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170850049639.20639.8033076810245135045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e1bbf317fdb0d82645283ad12294b6d6a64d65afe02cf82e58aaab4ba7ddb7
Date: Wed, 21 Feb 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708500496
