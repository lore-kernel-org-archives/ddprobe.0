Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED77337B8C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769433234; cv=none; b=Vf+EAZzr4bZ7AK5kOGfoT4oVOdDyWYOqAD2KmPiCKH/+B3ke+rDwRtcwK4M4Ew+sX33zmAJGjsh/QoUfHT9nfQP9gIWw0zUqBlRpFstCGSd7aYvLsY4vu+IRUMxgoP+cDb85OOL2RRZSf9tn6eGk3nuwT0iQ5zDcBi6cu9x0cNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769433234; c=relaxed/simple;
	bh=ZDt9oe6yH4RuH0go/sXU9URP1McJ978yvW4Jp6B/nZc=;
	h=To:Subject:From:Message-Id:Date; b=IYpb24hIfRRLHEjuMAaQFzprcjG4lfnvNnnl+MiswMSEYkfKPCUPMSo6WbtT5HXki5NlE6bKfBFy3twRHYqtpc7qaNZwRYXoGktD4dEpj+pkrj4RjfQkqz7jUeDr/qRd8+ghn1iMrq3kd0i/w6Jo2KEIuSJFBINQekDFExNRwEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFrgR0F9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFrgR0F9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D56C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769433233;
	bh=ZDt9oe6yH4RuH0go/sXU9URP1McJ978yvW4Jp6B/nZc=;
	h=To:Subject:From:Date:From;
	b=cFrgR0F9hmHij1iw5IUfjyUcj1UGtnYjdtejv0i6+DQJt01jZIBKSOXERPSiZRsRy
	 uUEMVqD8cVHmg1cnILP/npumwQ0ckWWOfGjBWLcaXx4te28t4sFlMnwAxAZ7jJeC9I
	 0lYhlojUkHsoKBUDIhDF3IXnnVYAONrpeD9IBQlqTmOlMIFYHVSK7/Ps0VrIPsXZZs
	 AqHydZ/0dToptPcocsZ6AHFZ+mcwOudC92WNy2+rryWuLImzmlcuK8wOhSrLO7UJTx
	 B4A0qq5LcTdC+KqDH031OVZ6+lBaGnk84TjjliwjATKhbT9H1UiDIu4GKCEU0sQq+M
	 t+NL8vY9M96kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310FD13C00
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943323358.10762.15814816693353895249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3943ff0c47f2e7be17c9a0bfa1e5bec064d42eb02e9e185985a05c32ac139d50
Date: Mon, 26 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769433233
