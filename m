Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2BF13C914
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759867794; cv=none; b=I9y3qEBOoiX7/lo1PeoO8RVBXXVuI2B4113Au/Qzz7FpNhD1xQQY5Gi9JdYsN0Nm+HqvM8MO2O3cIBm5MNO/QIoN+eZtzh1wiI+mK8WcXVYPmBWtcjBd6/htiTReWtVOxr8LnRu7KUokDI5ldsa/+mcJoMU0XIK1ABmXXMUu5wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759867794; c=relaxed/simple;
	bh=YD/sY+LI4IWemM6fJjxVXVj6zkn5y7fMRlqZUrMkikE=;
	h=To:Subject:From:Message-Id:Date; b=GWg+cXuAEjCaBWNqyqY+rR7fnqZ7+EiN+0R2O6JhRVCvmNQvJCCzu2281u+VLIVcwzVzm1WTn+DOI9fjwI0DWYuKMiwOxmivP9T8YSUu1DuKU9vHJCm8EGolRzsAs3b3aiKuqLj6a/Za2w34IP2EKq20d98Y4SQHKTIZjFgp2ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2gfvwaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2gfvwaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A903EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759867793;
	bh=YD/sY+LI4IWemM6fJjxVXVj6zkn5y7fMRlqZUrMkikE=;
	h=To:Subject:From:Date:From;
	b=C2gfvwaFQBkHj0DRuVtxZq/5gXa+NyntWgJBPPOUCyIcAzyinBs3P434931YnNVZu
	 V3vT6yjkg2NLRZNFPA5YlUmlr2B+RB8pLONeRr7VRuZ34RLzxpfhsBE+rfoIGGmGbr
	 E8XHIWOi6m2PfrBo37aRpiQgap4u0W8wNDdMFRF/X6EyZIeD+obvGvRkRD7dL38dR8
	 lKF0Dw8oSePYJ2muVEJnVRsbJCx78Y4cG4ME/9dZJsmPwK2XnShaQB60jkWWVHRajQ
	 aafviSJG0X2A/9gTZHNndx3L07kURLSVRriefrFPGZ78OiNKORkiCInOBwLneCFrK1
	 3W4DL++2Nqiww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A70CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986779358.16597.6156618771671201074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cda7b0ae40fae666e6e3af3752d621984a4de19e37057137b69a702d62aba21
Date: Tue, 07 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759867793
