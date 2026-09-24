Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9242931DC
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790268634; cv=none; b=k7f0rXNStEKvS7hLkr/wa3iwbqY4Z+ijovfC7EISb9ZcSpdCMBperjmI2uXHJmtQAXV1PYFNqpqKD0Ln9ob1QzKghYVk+Zt87P5cbDULg7SHMkeCrEBleIojSVKBIBNd+BYTyzLDx0cc87/4/f/rVnOtgVfcrGVaUpHqdUDlJmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790268634; c=relaxed/simple;
	bh=ldA87EdM7t9u1ToNRb0KkJbhLIpLC2D7/LQ8jCR2mAk=;
	h=To:Subject:From:Message-Id:Date; b=hEnMtFSV3NpHtLrHnHIXolJhb0kLx8y47sz1fIS+yoEI5BCKHINyU386vLLmAb7Ob/dJLt5fQj6AWaPXHn5Vp8r4F5bibeqAXShRk5yTlHxpRr+mRBKL4ias2NmjgI5uhdiHwxjbzreJ2lap6gt5NQ0YBzuRgD66m9Rwf02OE9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soltxkN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soltxkN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD44C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790268633;
	bh=ldA87EdM7t9u1ToNRb0KkJbhLIpLC2D7/LQ8jCR2mAk=;
	h=To:Subject:From:Date:From;
	b=soltxkN0WAvMftxi51hRlCMVfQvaCyH0XaSkAXDsaFVBrRk/y/d3rn6+SD+uQTJA6
	 UVZoAbO0nUQNnORAbwptJW0O0WYJ24kpo+kEYzSdqioKePwK15Wblm22Bd9lg9wCPd
	 Z36T+jSgGdCztc0VkMzlZTvvuqIMhk67MalhtaJP4wzs73aYa5dlcsBZjxjvnIllE2
	 4j9ikoLYoS9TBOmAt6jyPATx92OdGKE+tm/p1tWtpTaxZCvTI0LAdsWt17y20PptLq
	 Ww+VURC6rU/FhNRlbbzD/juabz7kRdOxgVVyMLivyYsNP+HI8QWk+PN8q01RKL3xLd
	 Alom96lZx0GcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA41AC98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026863375.31450.5354339751075309741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b29b495830a041727cc7bb3102467c0ba8c660bfa33636c235b9a0d2abc1646
Date: Thu, 24 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790268633
