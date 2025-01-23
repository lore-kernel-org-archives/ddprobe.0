Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44ACA1537D4
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737623754; cv=none; b=H8mqL4rgvMVe1AVs7bI2KVAq++gOmALwrbsIjhyG+CbAwEzxqTRID4FPsI9YpFz5HqC3gy46qkp+QMba0kBi7r1jIh8R4P8DdGkiC1kGNce4AnUy33ZTVO3YFC5kfsyqUAWe4cFDe46VUzrLeeydiGSRv1ZfFTNyjNhusBbPMrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737623754; c=relaxed/simple;
	bh=vvogO4oYx8qZDtA/7phu7KLphVwyl5j+uIhYjdfGu6g=;
	h=To:Subject:From:Message-Id:Date; b=kdIg0PP+xEKStPzdDGHjB84enFVk6EWgJOaJmg1I6KWv7OzSQkAmb/vgvUEiE5+QtDkjmQA+gNY+6Kq3UuT2xZaTj7ptsFwEftrP1KPPjqOlgkP49eK9qDkkEjyZdxV2+rDhoLJaJoply0jmdONofEk8YpsnBgJMglpZB7l5nP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqA2c2+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqA2c2+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C2CC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737623753;
	bh=vvogO4oYx8qZDtA/7phu7KLphVwyl5j+uIhYjdfGu6g=;
	h=To:Subject:From:Date:From;
	b=uqA2c2+EpwUJAvOGwf9cDP69NQ2NkADvjsXXBqolF/N6nefCcODwsw+PQcO8MoqCF
	 rVO4viou2oCGRFthYvSf+wUMUb6+ykjPQScfGBhPFYVHt5AhfHTtAMdXYKPIjoP1Cq
	 5WzDiy3A3qArlbDTgQqRtD+eZPQlpgCs14hh70pp47vOO0TiJggp7yxYRBI8A38bjS
	 RSbj9MmQAzo26x+8EMaTmmzwAmG8oa6osSuCHJxU5YPo4fRUqpov2fqfdaWPgRHUKh
	 fB51EfpTF1tPjerFQU5gcDQXDEXoiGEaSnXVe8iT96cKr7kZDI6apwTPK9UClU3JkQ
	 bUnDjfyfzA1QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A51C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173762375359.22309.7553227274628853489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6ede4cba680e97526b5e33f7399fa040df0bdcf62e3612bc05578cca66a769
Date: Thu, 23 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737623753
