Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35262FFFA5
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774800894; cv=none; b=Dw+RZMO0xRYAS+QmWSIcWxhmAL3LRrLeRZNF2mdZzIa/vnsVuxx/S6z3NKxtJdhVGwxy27YKVpbciDxYUJSHfeSIodPowKSGwUD87j+titlKeNx1RJDNEYE/1oNq8ExFhZY6qzXfncLkLEH56hIRegneaTx5276HN4SQOASAsmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774800894; c=relaxed/simple;
	bh=ioa/f7mzSUYsohlt61BwjFpOZ4ZAOxIGxpf/WwbEj6M=;
	h=To:Subject:From:Message-Id:Date; b=bFdM3XRr7ya4QLW+OOB8aBWxlLAfB0WmSPxUhKI6i/s1r18Sm4qXScNSnQlhX9S7giaqrcm1SvsJoPmjyBstnMZ7VLJ2JpNazFIAiWiEcH8FoDY03luCgiahJVoOLBneauhhl97iLc+M0HrvUWnp4JlRT4Qj639oBkww4fIj4H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8p26nCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8p26nCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D8CC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774800893;
	bh=ioa/f7mzSUYsohlt61BwjFpOZ4ZAOxIGxpf/WwbEj6M=;
	h=To:Subject:From:Date:From;
	b=s8p26nCPJeORt9qtPCmq1tTQft7UlyNj9w+JbN42uJfQGDiu6WlvoR1DIB2mvXnzH
	 t8HBIXmY0G+bjrXLPf26aWVbDfKQSO8OQV7Tw9/r+yqFaHs1T2gQPPX+N4ebJgrLJB
	 gfCUmGjuZHNGYn/58mnDl7MozgutBuX0DyeveXrgqZ2Dzt4AFuO+aEzRNukOSd2kJq
	 7WMBCWbTIINwrC9EdYXIOKP33OK++2NgeD0IS3CpeYcfj+UfYLxeGKIgTE+AaJOTcO
	 H4pB6ppxgK3RyjNU59IIzSDn/t85bfwcCGMJmFyx2+hTJCoNjpa0iyGzoW5EAG36Br
	 FcPAq4nonnNFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D29F3D605
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480089358.13819.3408790383057926680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f928e9225914967b54b47ab564514f19dccc9f127eca27f3c1d73cb08ff377
Date: Sun, 29 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774800893
