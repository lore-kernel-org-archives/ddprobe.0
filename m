Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF961A9FAE
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760047794; cv=none; b=bDlEhaojA3HvzngkM4ITS1SnToLlLDqBu0OMzAZgnFQqgQJ8grqE1BwsDenpzx789eVDLhsfxon1f9XuJ7TZvvtrI1zRHtxp/G5LC73HCVz4XiFNMeqUnHXdaGXYiEMBYi9S/ksPVhZ2juokSUr3j5c8JESQ1jmLoWJTQFk5mME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760047794; c=relaxed/simple;
	bh=TE9dN534n3+X2vJvwv6ZG5+puMiYC4BncrJsKs0K1wo=;
	h=To:Subject:From:Message-Id:Date; b=rGKOH1JaEIUiQZenoHnezdYgDXwzYjl6+5h/F5kdI44dd5kiFezaaAwO51LkPGhv+AlpvOEmjqCTJublELBtcMInwCkNQfdvDi6R5iuZGLtcU+aEQUBvN9d5RSNdZROKrH2S7SR5LUcfgAiRGBz9hC4bxtNmnV8VW5M420dY+uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8NgYFLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8NgYFLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABBDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760047793;
	bh=TE9dN534n3+X2vJvwv6ZG5+puMiYC4BncrJsKs0K1wo=;
	h=To:Subject:From:Date:From;
	b=m8NgYFLIvAlEE4WGl/+mT/nNyAaXqL33+jniYX6w/fNRqINmy68KzxbGLXLvY9ALU
	 rt8qIKHOwA8G6ceKdTchSNauNEfrVDkJbwyb6b0JINKEgfGt5769zuoUfSMUn+2sMv
	 BMR4tBCalwKnye0lO6oNujXb2RVzCCODWjZCIb0VF/bkQFUoVPqKUhT1mianiQ8DeS
	 k5S+z1okR0xpWV7HHNh1ROLNw5Oeceyjhd13mFIuUo8eM2+IR9KsZFUw1oN6WizV8J
	 /Z28yGAt90vhXm2R/mYPnXiczBPCFmEthtfzXi90NhpCxnrVUad/d/80IhZCFKiv69
	 CzA2+rFqj26Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A02CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004779358.3599.1104919081765596762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c49d2b72b5c1c75b0490b862eb83f20505afedafeb9ee06627e7ec9384c2806
Date: Thu, 09 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760047793
