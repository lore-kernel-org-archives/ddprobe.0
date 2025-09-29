Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198341E8329
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759165194; cv=none; b=E5kWrtGIYIFou12F3qb0Ogg8qv+p+u0i/ROujh6YW9kdPg7AxwyL+b709CqS2nPSXqBBdfdHySFb94PWRyw4RH31PhtVw6jXzrrsYRRUEif0bea1NoC//8N6/6rq0qI4a3HCDR6zBFs1+9tv9F3tVt0BWTdq/fglHfzRUxhFR4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759165194; c=relaxed/simple;
	bh=NurcfSvoEZ8SBBtcqL7PmCdC/wihhl32sOXHv/4OARU=;
	h=To:Subject:From:Message-Id:Date; b=WRrHAqnItYsfd2pzj7+G6Im3AQK7c5f34hh6JX2b9Peu3kzw2aACqb/eAARbnX0xPA5xVWeajaLOboPWNhvFg3WEKs21ozAnKj7h3RcS9Q50QZ4GlWm8+kpT59WBbWvEs2q38z0zJ+ROgVoEDeikrUdLyCN8fJBDUjVd9gKjR9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFohzLpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFohzLpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B3EC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759165193;
	bh=NurcfSvoEZ8SBBtcqL7PmCdC/wihhl32sOXHv/4OARU=;
	h=To:Subject:From:Date:From;
	b=lFohzLpyK/BXIo804DZYATCCoj4qWb6wJyzJkl5SavdY+yy19jWj6LHk9Mqa0nYMj
	 /9MDgEAstCrcy3qWxduJRtGB9m0OsBc262kgEkwPhtxKnAt2QObL2Hsyghz1pbXnPa
	 /he+bIhljh9J4ZX0YrDI9q9h5DsQACrVyzJysteVBRMlov4at3jXJQxv1Hu9J5FrvX
	 c37Zke5o0Oe7/HPoCIje9rGrj+ExlSP8duiMi3g9I6LIisWS+9dW7dfx/SnsHvGnk/
	 4Y6Iu5QoxcCt5aDt9Kja9YQ2CA4uT4tb/9BmbRwsWzDwKkPMIgUhK5F7/sxf3ba652
	 MdK/XRkyYpjcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CEBCAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916519358.11449.6903441771944134813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfbb883d9901d7e7e42f7af40a98b4f60ee0cc9252fd587b8add68db83d76b5d
Date: Mon, 29 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759165193
