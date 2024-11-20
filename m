Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D66515B551
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732089354; cv=none; b=qsfk+UUDMJzTrvzy/de1uAvX4jADmhCZOV2im3kH90VZ7Pc2fuN7YOyRUH6kem32/jj4aV3AA6M0JrsXuyPrYLHDA6Z2dqZIBKzgeG0NR1/EpAAUX8XP5qyL4HQVkQm8JSwFLRm4coh2L8MlGxoBic9w2UifRUzeO8DHX1mmLd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732089354; c=relaxed/simple;
	bh=sN/jpgrMzHeAWZxeQSN5H05IA7kO1dbQZ65AW8B7VOI=;
	h=To:Subject:From:Message-Id:Date; b=jFeBVnwQI80F0wpCRD9U15wVKUnEKbRRKa0dnJ0cdTpzzZT0yDBFNeel0QO0mO2kIVfvfqbjvBZ2yPszlHrWQq8L8gEyLtBcvvvkHCM7V5oddHytFiXK1bUgEmgG74H5UTY5sKMBuhSidvav++aKcRxXD45yyqKabe7NLC5tN1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/Twu1kY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/Twu1kY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26BEC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732089353;
	bh=sN/jpgrMzHeAWZxeQSN5H05IA7kO1dbQZ65AW8B7VOI=;
	h=To:Subject:From:Date:From;
	b=r/Twu1kY+l6gQMTQ09sswfPLq9MGJ1X8IRWJTnFWEDrISmsMY7CzwO5W2kbQK45kk
	 aW8J43RbKoutVHWEiQYn1+DT8Y8a7DSwJJzbGBWyaPSbmrA81euYnn57+AHWKZDsyM
	 C1iClJ5eMEUU5piAKBMqxNITR/7R8enQUTa7+IX5br5PFwt2extB5ihleM3XkrWIDv
	 tCF0dEVPI/bQzsI8OmLp++bnvDKYkRk8qfkukQ9cGgyNjAXgj1bA1NqRe/tXIM7OIy
	 jyV0ZYOy2+8pOD63Jn+4r41fPIdDrj+Yke/e5Iz5MsiC05+rmur5OS6Cov2SSQcgNd
	 MEl2UKH+KhSRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921A2D6E2CD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173208935359.23817.10120722260390965682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b702eac0884013bb903065da4a768263af9326cd1077f828228c5a742f5ebe2d
Date: Wed, 20 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732089353
