Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AF67F8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721993754; cv=none; b=Orex3G6h9SNXTBxd34wpcYU6cVN4/5HhnAHViCRNVk/k3tSk6O+llBSBntTu7/hFx/x4ufogScf0lgbzrvg0pxWe9d9KMWIjCOPJYSNW1IbhNOQLkUSsZDmKmr9ixw8Nw0lWBzfjEgZ1SBhh9nxOdkZH3zhmXyEyVs5dSmnxvs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721993754; c=relaxed/simple;
	bh=d2oEQA1DWHxsgyQTgT9YSEN+gawOaj0EplDfXKxn7HA=;
	h=To:Subject:From:Message-Id:Date; b=bCNfSYNy84FD59uvph9zFzjLQ+kylrRogzm/IsOGDMKapFpHCPOeG5fZAMVl+6qz61k75I+sJe7J0C73xux1ZHI7hQbpM9o94o9XekRqnH2nTzGlF7Bauf4bM0hCabVLEVnsOs8uopAA09E/8qADceAV0WmNbr06Il29p72hcao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9i5uzm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9i5uzm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD8AC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721993753;
	bh=d2oEQA1DWHxsgyQTgT9YSEN+gawOaj0EplDfXKxn7HA=;
	h=To:Subject:From:Date:From;
	b=c9i5uzm0eenbgKEp3K64WJQ7gW3oBnZsPpY33Dd0euouLTPs87rVur7NNS885zlc/
	 pyte8gkB/QF9qRJgSWkLyz6Y19fvB6q7ThlYegpJ1qVzeL9AXhWQHhxZgDsAK2ThVK
	 F+VeM2iY7g1QsF9ftSttiZsiKxdmNmv8MmNq+dfG64rw6jjK1x4SETaqUgFe85uQZu
	 MVxSUtYU+tshWQU6fFWdHFTOoOr9EqTEy8tlb4Y4CsARN9zYWJTsicxXuhyp0dTOte
	 J5TgwjlbBwS5v0SgcZe9Mr2mnaU15sSm0OLDUoAR3FcKzlFlM1bXEHiW3+OlKPVEVy
	 jbUBpIlf350Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E25C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172199375362.12432.12143957871011407152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44fb652b95d0c52ab5e23ab462be41546dcb78f05aaa6fd7f37025c9771199c
Date: Fri, 26 Jul 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721993753
