Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A62317A2F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761954594; cv=none; b=uc+1ePy3j9V1CTYTOw/CEGpWF5bc6de7NxmNaNeFoICWRY0O9OEkrUECcOPW8HYASVZPSEWMvkG95y4xel4+0WT/BKztxEp+35TWOBYb+3VnashVFDOt3tFHWt7yWbr2pFZ1yk+NP9qji6/4Z3+3sBN5vj6/Mepd3kowFFA79k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761954594; c=relaxed/simple;
	bh=BxT93O02ldEBjuB5XDeHEQGsCo4Wh3BtlS3f46BYSi4=;
	h=To:Subject:From:Message-Id:Date; b=AdqsuSrnipaq3juo1+8bH7b3KlbZ+G6WGeAuqQtdCKfqYcMbq928nH+uSF7mErTzWY5SRJtQyG7yQKI1jTqGXkzQ27+ilvRo0eLHIn4xU2Z63uaiLbq+hUC7pbTL6OclVw7E/u1ko6CS7Ut7227B8Izc7JsHxpF1pxapww5EQ0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llgMUoM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llgMUoM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CA0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761954593;
	bh=BxT93O02ldEBjuB5XDeHEQGsCo4Wh3BtlS3f46BYSi4=;
	h=To:Subject:From:Date:From;
	b=llgMUoM1LMqR8PXPXqOGv9+lgXiLvHBpkX4SbqYGt0k3GWP1Fd6Ep9hVl7f66Lw4Y
	 eWa+uNRVjQogZq4bUluc7AA1PEJcW5DlErq8gJUgd+gQuIanlJrVG72CeBAuZb7T7h
	 8Cc77Y59h8Q0M+4kmnw1Ki/w+lqE0geWYvdg4cEToAhEvA1ranLGOEdd4/3AxEgNxP
	 xJxkU9GqEwjkab66eEQCJatenyLYOPkdYv0TlnAja6QkN7R4r5sValPXxMch68FVYC
	 H00gZSbW+2ChOlvkfhezJBVFqYt/9M7jahNqkZwvj+ykxrNV+wrNNnEDTDyt+Mgr0T
	 Yw8O4f1dC9y9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950ECCCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195459357.32305.478091809178520837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a072a27aee31e9ed8be46e33b73f455432eea154279ee1e69e122169e6d393d0
Date: Fri, 31 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761954593
