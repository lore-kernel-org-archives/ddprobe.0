Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450A643E9E0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781026534; cv=none; b=cu9XDs5HQzn0X4BacQMSKnatmjsSGIon5zuidXjkJoQjzVOBoyNyvWzc6PpsnqadPKQud/19+pCKWnzrI+MDJwmgorWkXvE+RDCpwvUP3yPqneDxFo2hghnTUpUlc+s3JVnlaa6pmq7xdBokIMQpXm+h2A3VDVEwBNoq8V47uhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781026534; c=relaxed/simple;
	bh=ndji6o631dvFNesrprTk7DpbTHy/SjSUTW0Zd5s2c9A=;
	h=To:Subject:From:Message-Id:Date; b=DTBTyuSLRZ5zAIUKCmE/cQeTWUXBmt4sFjNwRr7jxV9iRBbuLcMWhjWG0JnwsyEcCMe/3890t9Vo/01P6JNkPcjYXQ4TUtkzwDYKRxiEmsLhYK3E8zze+TAQa+whJ9B+5IO8K8QZ/lZXsyppDfqTDZaj1pQBXGdmPnxZvF/l0Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJ8GRKOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJ8GRKOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A42C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781026533;
	bh=ndji6o631dvFNesrprTk7DpbTHy/SjSUTW0Zd5s2c9A=;
	h=To:Subject:From:Date:From;
	b=ZJ8GRKOGmCNiNkWfd8RFv0w3XCzdrrHCfs3666HLPW+R4dcHhuBEgFXJVRMWlZi6H
	 5SnQhIeWfizPtSwWrxfkqtEYToJedZy0CYnCvpHvTnRe7x0PuR9wyrqFEOTDZd/DGO
	 QUiZoVLNf4OnHqUHRLpHWvyTTfHfOqaMcrPLdNjnfIXISViUjTnEq/qozaC9pX8le6
	 ayG5W+CRUBccoXR16gU6IkNBgxLDaTNAj/UT6t3PXVIvMsTD54YFDqVmNPOJXy+Fk5
	 i1mW4K3F7S2UtMOvKxxFjVH97YQG+j6o4iux/90LS8zp49MUpE3CHRJE2EEtctuy6e
	 51ikwsuYXQXMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B08CD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 17:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102653373.17057.14511660723573535772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb374113b4663218b599df3a01f3e43ce1f43c1b6a9c1b60fbd591755a9e2bdf
Date: Tue, 09 Jun 2026 17:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781026533
