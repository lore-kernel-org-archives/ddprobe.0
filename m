Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661CA2DC79F
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779474754; cv=none; b=QmWnTZqx+7WC87zO90lJNjugQIy+XVxPRvZ4tRwMwl5ZQUIoib6v4Ndn+JvgcQRNRpkMG+GNkGDnn8eeHKPJI3gVAoV3bs4+hbsqkX36dXi3X8ymy/9IIsEOlg2OHfraQAmkYplZKMnZMQEejUTxFgoUhTlurmt6uNWyMsumcOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779474754; c=relaxed/simple;
	bh=BbjPULPb+hwSLzW1lWHjKakAJyEZJPrk4hyoOO4QL8s=;
	h=To:Subject:From:Message-Id:Date; b=NjtqtMhp7tVtKfzHmxXL1d93X25QdQ5bWnH+7SQCguYpxbNM6yRWs5hvMxbknCxOVmpKirg4HbSQCZB7rjA10VU4FlkZ1AJqe2elPUdAwGZR8NWf+dILHy41oXuYwJlmzxpEwX3uqLgmqis6AzMnNV4Y6tkzt3mN41jkA5QlKVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2gqLyk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2gqLyk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6851C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779474753;
	bh=BbjPULPb+hwSLzW1lWHjKakAJyEZJPrk4hyoOO4QL8s=;
	h=To:Subject:From:Date:From;
	b=a2gqLyk72gIfC47md5dwn3jb3cw/M7H5EalTxBTqEOxZ//b1TjpRhHx9pIhJ052/H
	 pchDCoVj4WrdJcnmJ+Iwlm0ZgKQE0T4HGJ328hydMHG3lMAsRtuN0pcILkWs67KYXX
	 v6Js74lKqoNFs8ZfWUMD3ww+KykIkF6wlLRqKOk7Tkf59nRIwrKLJ3ThoYqehOuN/t
	 6XUHOuTvgFBb4cJOnw9C04gNEAtVqRPEUtlYd6sCrV3PknXNCW1tb8dopVVE1pAxyi
	 EXHGG55I1rB4I7UBcBcDZ8Wfu05mcluqLUSN/an+vDRf5aYJnLR74s3xYWwOnoOFOs
	 cMM9P5UE7PVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC37CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947475369.29407.14093989415121021148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158e5b30949e7599c612a884557628a2fe6c2bb825a8a54946cbb86e56596265
Date: Fri, 22 May 2026 18:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779474753
