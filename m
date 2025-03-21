Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5620A1D5CFD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742590194; cv=none; b=tcLuuP+g8ZrCtit1cUbF0XWRrSBkRNbJe4T5RYdxDuiMiLoVG93QLBORh3x4j5pi9eb7paDr610gLKlopzUfgkQjhf5GUFL+K2cTqVqvgEu2O3wZ6e+093B9xccf+T2YB++0PeLfPpN30Ch6yOlyJP/1FqdxoPwcGi4487mlu9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742590194; c=relaxed/simple;
	bh=yVO/1AeI/thFpKgKacjxTA3VTPPv1dgbyLKQvNQwl0k=;
	h=To:Subject:From:Message-Id:Date; b=ORXmkEgKljuBfjG/4oM1zX+j47nuZQGDEQUQNMHMwhd9shzs8nKrV3THX738KUUTtzVS9Hx76Zo+fkGQ9BoOErD5WNR1nvuAnV7VIZRyKBbd4yreMdJifPG2iUe4zh5B6RHF1dAfDY5tLOezVYRGwrdnh8cu48NonO5+eMol1Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rc/Nx+rq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rc/Nx+rq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA240C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742590193;
	bh=yVO/1AeI/thFpKgKacjxTA3VTPPv1dgbyLKQvNQwl0k=;
	h=To:Subject:From:Date:From;
	b=Rc/Nx+rqjc6OvGFiCPP7yjeglNCU5+q0K1Z/s3wp1TfKdZp6720QX7RTBzTtw8f1I
	 I5V4l6p8X8l4874ytBdazoO4gyQrzOr4xwioa4j7J5k/ru+o36IGzvHIirlkiIX/5G
	 NrlPJp+dIgeWb3nF/m+SzOslXNYJ3qJ7OFylefynlVL4xq1MuGVxAAWAQPTxaZLkZn
	 /hHCvO49NM4/ZF5qakO6S/5weUBe60D2AkVQOF8pJk3UDW8f1UfwJAqxG8tpvYIapF
	 85T/Fel2XII5D9UAkEuOi6tz+Y7bqCNJpzLgiD/zFmPp3aihqoLqH7O4wYVq3cf59G
	 XG3IgvyQImf/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01A1C36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259019370.25830.15217125018812497792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe297843182c0f35fe62854254a205e6c0cbf8de37213e6a91f04ea27b926cd
Date: Fri, 21 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742590193
