Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4867E3A1DB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747881594; cv=none; b=p3BUkFxNtNZhTOqmZxhaxtclMyAlt0dnbFu2vGB8h1vvfOZL5aUTrH0wH9PwZ5mQ6kyv7cKE/nfjhVlRuNB05kKyJvEc8stV1dMxUggQkcQdJMEby7nFh6DHeQMUscOsjJy3W7X/OdPf9d+UP6dsK2EX6LqCRgIlNURTHk8kA9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747881594; c=relaxed/simple;
	bh=1hBVzODDhfDs5WhyLE1/dPTRh8bsPW/5mYsaHyf1B2Q=;
	h=To:Subject:From:Message-Id:Date; b=Xa1viqMH8kaSolprOg0hN+u5mHGsMP7CbSnlHMMdAWk5XUJYE/3hm3zUFRMVFEUq2F+FcagDKiDItf4PWxZF6vYMkHu16lEifKQImr2vcHC4uvS8HAROBZ+2bdnFYhfbP1RZwlovny2oH68aqzGfX7CyPW4jDuB38UhwFUnRzt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNJ1+cqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNJ1+cqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747881593;
	bh=1hBVzODDhfDs5WhyLE1/dPTRh8bsPW/5mYsaHyf1B2Q=;
	h=To:Subject:From:Date:From;
	b=tNJ1+cqLCWpUnawOsY+W9RULyfSFe3wg7n8H2PzH9HAsKRA7kKlO8RsTXXuvz4wRn
	 8BpqA+yMGLyzkSYmeyRDbpQ5uolr40AVNm2YDIVUoDgFOLY/0q5/W4aVuIJKkVJEHc
	 JWxECcD7vTdwfeVDRbgugpcPkBM4FfkP7xIoECV+V0R+VhsxOOpU9FcDxNOJr9maJC
	 2RGRaA5jgQkH0JYIu05I217TCfaasO3Ym2TympIKht+Ar2z3JLKZ5rfBcxP4MqIRy1
	 RVO5NMKuSPxxIODfdalzQe9EgE5enJiIWn1+3S4LfDJwXPI7QmSNK4tDwqQWQb0bX4
	 TnCxOr1DYzU5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E88AC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788159357.11568.1497344665912313491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74b2d120564e33d6c171b7b313cf4dcb64df7cc00d3f87eba80c122d796d339
Date: Thu, 22 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747881593
