Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F6B45BEC
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732116354; cv=none; b=IBpGmmtORG28AFxxYqoYh0R/9Iu2ABdwaary712EYNEdjlFsszoYw6OQAf+Ri9Dd+uRqtqgawwc+DZ8awSpjaywL7FQnQ8OOqNQNv85U9JO/iamy0MzAo8xM0/4+NWnGekJw3/EV93meJ6SivuTSSEI0iGOliLpJ1rU0qZ0jjgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732116354; c=relaxed/simple;
	bh=+miiQZnRSifTyIohbHsnaNH1oHYgivWsQTozFkLrgbc=;
	h=To:Subject:From:Message-Id:Date; b=AqfA8ow39BDlcn0kMMqsNOIpQZJPK1H0cqWik5YK0C556jl/mYK+RMGj3KQI2OfrDMQ/lI72YBjPX2xwZIHpEpeDHsbt8KOtEIRC9wBEeHwxx/ugbd7TmGLMO6kzx/GEetrB6os9ns2r1hYCRdfjYsg+YKtjr0Vi4PhJqXvmHUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0YArGBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0YArGBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF945C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732116353;
	bh=+miiQZnRSifTyIohbHsnaNH1oHYgivWsQTozFkLrgbc=;
	h=To:Subject:From:Date:From;
	b=G0YArGBB61SRkzI6xiF1o19JeCzmMJWCYvwqxPnx8obQESJiYeV1OGvlsTCt5Nrd+
	 v5GkIUuXJr8A1eBXgj2w9Yd1PRMvnhqJSqlCxB3ZjLjCua/kWzAAUna7nO77VNYzcB
	 dFRbpUq3KlSdDV9uPRn1/B6o9OJ/yMGU+aE/KmnFxPJCisGgxYvroHWs+qwkaEc9He
	 JEPj3spPRXM91JXDnyF4FTrqspbOFLJTtjdIeQlKcTMeQ8OZeclb4ks/BObGySARap
	 tMsrVNKIVGrnLwTy4OJ4+jYQe7OHnoLWTh5o0qSW4MsvPTDfec84JyGg0ObaZPdt21
	 OGY9IdTxWZo5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBCAD711B0
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173211635363.547.17917326767107025216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edf19c13d859f76e5aa9cd853f030cc65e76ac02bccc2c862d50df3bd51dcf7
Date: Wed, 20 Nov 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732116353
