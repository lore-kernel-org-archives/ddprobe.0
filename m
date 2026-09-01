Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3321B47DF8B
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788279034; cv=none; b=ShvzVYYc5qfdeZ2+5tlZqk30HaoHl3nj1I29UTvYjL3cyjLzEZIW2glKNgXMSsWI+ZhPRJGAOBD6/2MhumtjypUXaOd+Lo2IhrMu1zmB8ejZax3ZrxbSilaoFea3G8N3wiLMrbN5FRnFEevWwVzNnrmplfP9Yt6Zh0Zc4GC4a4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788279034; c=relaxed/simple;
	bh=iio7cPLpQVt144aeoxz9UYkcfoXxGjuN9I+0EJR+e1s=;
	h=To:Subject:From:Message-Id:Date; b=O+r0Hvp64anUBnMMsnKL+9ibmHu1mxLr29EZ2/Ir1uc8/cwV+pghpiF2QOY+lpXptakhcBVuRrDldZ7co0LkUiTztrBqVUOFEvYHNMn53uLriSQwS69EOb5nXxTe8RXGkQ3attcs+0/YD0CH/5/2XScC3fiXTj/aOQgV9zm/KD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8vlHtjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8vlHtjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA20C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788279033;
	bh=iio7cPLpQVt144aeoxz9UYkcfoXxGjuN9I+0EJR+e1s=;
	h=To:Subject:From:Date:From;
	b=d8vlHtjclTRFr9XNi4+YSgaSE9Z8v4kiu4oroYcnRECQOm6LoTYZUwX6g+0bHWPuJ
	 8fGUcvHWTn8BZQkTzHnRJ2hS8WbDz3l3fsIxoPNV7bi8MrCKQurjBgLpdsRNTWFl5z
	 Xa9XWk6JVVz0O3PgSEMHecqy4EORtr2Ju6saksI0Pto3zLCza3FTrDxa8LmoR5kMN6
	 cEhDmWagZ64EQEPEB8b6I9uHC9m2bO/cUUGG8Rj2gsXXA8ZHaSRCHoa+gNgG6DN1FV
	 m2vmKj0H3tMp0VQbzNTO50sWRen/k9odHMUEPIjoZrPVxObX22+/MwaUZj8AkNfzdo
	 WhLrINDrijDiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF6EC624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827903369.13760.18276014112609968844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876342957217be7122b6b7f84b86292259266814773bc1ccfec00eb3c000465e
Date: Tue, 01 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788279033
