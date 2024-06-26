Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BA2149E06
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719402803; cv=none; b=pLuXuvIg0ye3YqlqsyS501uqp9C8w7RqJ0RF79hRLk3ggUkoC24xD7cH34Nehs8/ORH2l9vLSxEMtxrG6uU7VnyBmOhKrgIE3WSH5LTbkX6/Xh0rsTsD0bz1tzGq4FxZUsUtkw8iyo/6CgGOaubCKRg76IysodrahiW69v6WHr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719402803; c=relaxed/simple;
	bh=+fcXCF3tsRHeFcQZiiJRDT0JhBNpbfsx8ZRwB/Hspfg=;
	h=To:Subject:From:Message-Id:Date; b=CiTL+qsIUcTRYeaMEtohXatimL+st8YTR7PF4bL6XTDx/uy/he0E3Aqgf/6vTY0wFYsQE2Su4TtvKwuOjkSNgKy5gF5+Ml6e5rV/L/M3npbdY9q6mqVmWFAehK8URgsReFR4TY/dX8a2VQBuZRNQXnrvo3maLBNiUwvXroHpMW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSuytyYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSuytyYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3393C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719402802;
	bh=+fcXCF3tsRHeFcQZiiJRDT0JhBNpbfsx8ZRwB/Hspfg=;
	h=To:Subject:From:Date:From;
	b=SSuytyYsq8dIbKOKz3d7YWI0XiiyTRNG62NXiXSi+qRu1KHYyQT/QfRFsVYvrR7jW
	 V7x4qvlYXZ2jgllhwH3exquhd6JUsPQdqzq27pp/PU+MX5bCGV8MCqVqHbmsuDnGAR
	 qwbY9YI4gSERXyras5PP8g8Sj1fL8JrIYCvwn5tqck4Ga0dQrfMKQMwexkXfuyK3zg
	 Th/ulkGzczhl6OiWHpEvKzWd94msCl3XgSw6nJ91ngf90qZ8ABep/cT1V/3DMDgcmn
	 hamdD3H/9Sim9HwhcfOLd4XZh3KZhbqELSjG7Yrs6wxSkDZgZq6YjxZmkmssuAsOOT
	 RZb55NM25bt0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C90BAC30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940280281.23422.4217192176270132821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43e03404f91179d47bbfac0171fd993e118712192e4e6ba114c076a7f1c3300
Date: Wed, 26 Jun 2024 11:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719402802
