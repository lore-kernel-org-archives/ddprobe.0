Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AFC13A888
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707941297; cv=none; b=LuULDeT0+FZZCaXW5mNQsacMOrEcZeF3pjRC0yUZ7mfxp8lwHbGVepukMWB0U+VUPJa+jca9ZqqEPwhG0ZphDh/DU6yrnRRxYzk2Bj4bPf2TU3GTFKkPG/jNOHKlWmmpCSAe7QhAf6pnUeAMPopIOr9k+RTlxv6mBCixs3VOn/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707941297; c=relaxed/simple;
	bh=GR28adqmekV4ui0DrNUAsOuDk5IAFDAndlUxgT2jMOM=;
	h=To:Subject:From:Message-Id:Date; b=no1s6fwrsNKpqI8GhB8XaRpiKmolG4Fp+EjZk7wO/2aqr6/t4qIeeb566PUm/f7eOCc7SsNSzzdPGSxxx/g5rmYaDlsF7H4UjN6fVYFrtsc6CQP/e5i0VoAhJncCUxdBqt533wzsXszuMLNsG4q6t8ws1uUVa/AIFzh6hBpwIpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecju+aTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecju+aTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AD28C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707941296;
	bh=GR28adqmekV4ui0DrNUAsOuDk5IAFDAndlUxgT2jMOM=;
	h=To:Subject:From:Date:From;
	b=ecju+aTDr0liJQpw7essSi8DeD+Tp9EyBpCCVfCIh4AUd38bnVcbMbjtXbaoHsUa+
	 rDt/9iWPgxP5WED7/namobQQurHncPWtVX6lrKSJ6RZ0a1CVW86CA7015q6F7pd+hC
	 moSmFGDvhUJguYu6wUD7iNa9q+a+XqhhwKkx/ijLGCqdBCcBdqFFsISfrSxbwyixBH
	 OGUareDRTuWpMT5v2un5xk+leq/Qzf5cGi5CuV8LY4kDfhl/ttzDln2sMec57UzTBl
	 drxiIlHeKRiDNnvVU+jDso3sQwpr70grqd396aWWST13xqqkxMLwchw6ChYR6buHSA
	 qFkerpbokugvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BBA3C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170794129640.20473.18263510112172665311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98129430299cb9ef371c3ee32d7462369af885e8be218fe24db8f9ae5deba262
Date: Wed, 14 Feb 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707941296
