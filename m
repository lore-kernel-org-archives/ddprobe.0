Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14747224B14
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763104194; cv=none; b=OjymnWcrI7gxQ5rqIjbussunOFGUeVbkR7LBPyu3xc9jv/olU6LRBszXKAfQn6K4sObQZYKq6e2hLjqE3PIOLW/rbSzxex9qu8ovmKe1YRIekTGIfXJ80linNwFHy8Gyk+fTZmSN9RW3b//M2IQzUCBx7tos2mAsrkmTxSPd2dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763104194; c=relaxed/simple;
	bh=qyZhYR4gnT7KaF2JUykrJlSt0RSxDFl65qSKqOejOkg=;
	h=To:Subject:From:Message-Id:Date; b=LdrTQoL6+lOXZI+GVnUEY2U5MFmqnFoYnD1hMLj3jMComA8iDFklC8Qm5LCkw3E1kpPXUtOjmRd0nERN+lgcOKB8vO903uTE8YPMOG4i84IFfzYaMNT2yWmz9xcrtv8bvv1UULH/lVnck55AAbDQjcYOFiA9zORyKYsYcLvWLAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjO55xmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjO55xmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D27BC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763104193;
	bh=qyZhYR4gnT7KaF2JUykrJlSt0RSxDFl65qSKqOejOkg=;
	h=To:Subject:From:Date:From;
	b=QjO55xmQ6RjLTLsz1kVw5erk7pJJjsZGoJtkzUo2OmX7XCNvNqlUdtZN2kkhv89dN
	 DrrrG5F6pnzIjzZ+MHOQZy4/ptKVEJN728qcTFLfzFz9Ik4w765uGjh0WtpmKf6lsr
	 Hqlk16yBNR5tPI2IxN6kFN2UNAVL6LdTpwrT5t353YerwWKwoirrByheMhAhBw7Igr
	 lAV01YMzSWwDsZQCAPUhBiO3WtPI1MQ++ZldZJ/aDpInNSQvncImbiYqLsHKw7Gb1/
	 GsFJb6kyMNr1mNepuZn/nogwzqFG04WTdcjJgNueFaioEskRwb+Za4qnAAH+ey3Dk8
	 2xu4hqlCkuV/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2FCDE019
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310419358.12261.16885886430133495545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f273430725279b3699f151de0cc2949ab5c9a2f1c826815a6a88030b75021db1
Date: Fri, 14 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763104193
