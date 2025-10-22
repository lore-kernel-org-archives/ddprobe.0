Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C16C2F83A0
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761163794; cv=none; b=lKYqvVzPcFHIdK4rMyRBDDzxJ+k8KASphakUSn0lNdJjs/BDrgxEusdT6D6s5C1FEcRzhDNaDerT1H9MlQwj95GAuswtm+3fSNrOfoO15oWPXhyPUHi8+8N/SlxoZJ5wRGcZPyjc/Mh/DB4Kpc9BE5vVs9DA6eoqoZDda4sbaVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761163794; c=relaxed/simple;
	bh=+ptVh6/pguQb3RhTD1D/1vOhz3x/r6tsaWr0rqPeEzg=;
	h=To:Subject:From:Message-Id:Date; b=UuRwWleEBdIKB3A3YWCplwC/+UI8oQwFYe5/fPe5skzgy3KDilehdvd4FG4+X4jMYGMHynbYbuYKRR7aPbJ39swyPvsGy+RJTq+dsLLEvesiozbqmMFApR3iV6rmJZnskipDSMrmZPkZnHw+GnpT2vMkkGqPGxbyRUMyKHab9Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKaacE1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKaacE1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A576BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761163793;
	bh=+ptVh6/pguQb3RhTD1D/1vOhz3x/r6tsaWr0rqPeEzg=;
	h=To:Subject:From:Date:From;
	b=TKaacE1w9ldsPj6K+aiuayeqN85tUsxQnGR8HGUjh+fcgIuvUaNpqrvNpqw9/hma+
	 rK6SGrvKdIYKc2TqTT9SzNalRBM62gELgDjq6mGlY7YlNe7PnfEzba2dEg5sVSQKGl
	 pb+p82lOisf5EbCO6lFFjrSq650mPUY8rMYQ3l+T/XUfb5HqHmxaNPREs7TLtfZlZd
	 1Bp1bDMfaXJPgLyRzJ7jLIvZQPcSEwfdwyyhCkLKY6/U5R/URIuBAzjdT8SF9WmvQ0
	 t9HupmQadlWFGVJC8qYKVucvI0Y0fF4uufYFc/RTBQfn/+61VL/MrgTnVKlIO9r+UD
	 dAFJAxOJO95zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB0CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116379360.8823.11728386138136470185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b07644476478744713a5d51e501328a017ac31027282f7a00e8b3a1cca91470
Date: Wed, 22 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761163793
