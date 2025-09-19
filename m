Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235E1265CA8
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758308994; cv=none; b=M5IXELgj/mYGzCtwxf4hMMhic8D2EMWZ0VIvFuc3kIlmEOaBGXk29wXSmgg713SPk0lmsSTC6FWdTs1of2UuL+qR6FHJqzmlSO5yEQ42fuM+uBftnL3HBbH07KX+Py6/mWLFJWMh4ycEIfDkaDi11DTQzxhQHE9UPc/PiD80oz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758308994; c=relaxed/simple;
	bh=H0bX31O7J+H1YSQ8fI7MIsTqkuabPJPhL5pgU/RaPCU=;
	h=To:Subject:From:Message-Id:Date; b=E3m5Y/aKqoesyZGRfXukq5+NRhGkN07VW+W7Ab58frM5d8ZoV15XOOZaPLOwQ3NACC/zJJCPwvN2Vfcv158iYgsI5ZsXfoPDNBtghXBl5mrBUgJv9f1txnjll+OyJylzcZq6bKv9VkPuT8jHw4Gb8lvqAcTfXpQ6Z4nwOfBYVRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvVQNvCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvVQNvCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9959C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758308993;
	bh=H0bX31O7J+H1YSQ8fI7MIsTqkuabPJPhL5pgU/RaPCU=;
	h=To:Subject:From:Date:From;
	b=bvVQNvCjovD/pijZows7vpen7rcqH5pbNZR3KcUCrdiC5758X1gsbiUFn0VIvOYsi
	 4xYqSH025f42wBt4Y4wfPZnmGnahVvBQlJQKh7aLv0cqYBGtzlNc0K5kZzcevuOiLm
	 8FZG7RJAicPIH4/xrf+Nv/kFfFQHCokKpwcGwJBEzV4Eu1fbDzhOsgkRfOipnkSdM3
	 Oazj4vX7jfszMXiB/+1CFM+z8fy9EJ6hie5ussRh3OyOufr7in3nDLquBMYnKzOz0X
	 9T+R8X4Nojd2u2PnGobUzoJVzKhUeilAEnLId56njthUINUmheMlcZpXl8w12xRuHD
	 BnvFaWtbCeqUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95617CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830899359.26612.4918444411423138808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56877302a108dc75825e5ebd21f559fff5171502e5e490d81d3cc2b910433ef
Date: Fri, 19 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758308993
