Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397153DA5A0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781268394; cv=none; b=V2ruYn43gu/dR6k4FYOrS0S3B0I9mJj19cebN3tCTw18OJnwpUHKzHoksmzjjNj6o4Y4jLED1X+x9wJNSShn0JHSlrEsdY5OyVl4xTvpJTUtsQFvdcw3GovBWhnhtyXXrcBpwtzsRxlRhijZjwKshrHu90fZUZOnBx7AeNeRtN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781268394; c=relaxed/simple;
	bh=05BmgPyE0eiaF4bgvX24AL6O5mcCwKxBhxdeVJNByeA=;
	h=To:Subject:From:Message-Id:Date; b=Dj7gjaCNRduLXlD6E/GpdHrZuI3qHY9hdQ7T6RWZfzG1o1K3fq2IibqEa39Tiuz5gL1USx3K4Lyppx6h4hs1c6uA6JXqcAYAUz4fU+A/c62y7poAYDS8/yrrDhw8J8Qz2640lmApevadN8JJWF5nPndbptTDD3T1YK2kjpVJG98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryCnZl5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryCnZl5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7ABBC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781268393;
	bh=05BmgPyE0eiaF4bgvX24AL6O5mcCwKxBhxdeVJNByeA=;
	h=To:Subject:From:Date:From;
	b=ryCnZl5tJrp+mg7IF2HnGNUtKMJk4wt32tOuVq9RHFIrwFnwp9eo/5DhTww58TvJS
	 quXOw2xZN/NtALt06YQXj5xH8UornjH/34DI/KP+FjvdAYnGcGu7DkG6al3ZWc6G68
	 DecDaTavUnDeNTASwcKoSsW8hcxORklfa2O/VmTxmOiJ8WiAQBmoWIfaPAiIiVUcVy
	 l8J1M4j1hm/2wTAF9iy82ebO7nYBduTUcsF/M+ZYb+6HGKw4J/u2DU+k2bIr2LJPFy
	 H+Xvhtz71hHk8QA+NS59XdnqrVZ5ftHnSfQ2b3tCjxYyx6QCMbDlg9xIrrJuDtNEms
	 FO0V0R96hVLmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D5CCD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126839368.8433.14649834520055694389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e4ce62ab66c818cfb9dce19c960ea828b8ea13bb49eb7f0b92aa56fe04c94d
Date: Fri, 12 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781268393
