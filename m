Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301CB218584
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755984594; cv=none; b=Agpe1EecVNaZ7DsuQkRNbqQZr4OSLcKA75yU2O8ZEBUqpcMgz3BuA6D2+tEmJcvqgKEo22jiiILdsH05i/6BGKbXW+VIr8aTzLs+QbiKB3aGXZD4YAgNpfp0qPqyHmeshXAlhDEkOmSuRuzXs2C5pO5xYTVyp+ZgViAo0Qha/lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755984594; c=relaxed/simple;
	bh=hXoROZ3eXqOtdslrkByPQfb3PDWxyarLmHFvONJpvoI=;
	h=To:Subject:From:Message-Id:Date; b=ppeYh0d+6Z6uqdU+9geV/zVWGD6K5+ja/z9EJaat16qAyCOGN6ZJMLcCSR512Kl8rM2HUu6IMT52yLp0WP2MllI77aNfLhcedD+++WRLxyzatCAC8fC/2seZGFRkfZAvTmv41eTx9MpHxtWIXETcwTiIfzE7MFebLkcfA0lZ7Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYryq7Nn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYryq7Nn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B28C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755984593;
	bh=hXoROZ3eXqOtdslrkByPQfb3PDWxyarLmHFvONJpvoI=;
	h=To:Subject:From:Date:From;
	b=dYryq7Nn41fTDA+UB/af5giujl06pgaotSPJRszpCvjU3rikOKKaBSGVab7OkBQfI
	 9g0BO/q23dJD59QNtAQBoIH5Vy3ysuVh2mjPe3k9K7COWsN4zLU5nZgd1/wGETn+F0
	 c67c9LFepjdKRJPY3tXgQSm0xk2yYIAPgacwVlRYSPkAaJwC0UYFontEXDjTLGNV8b
	 uun4VWCoAxFKIg8JTmDE3umbJ7kheeaoLipTMusNV3pnZ3bDdqVBVHjjaSj+JngzDr
	 1ed/QGg96FTpqUUEXCmty7rICMn29klbMLiOeApsQ4VSV/fZkj7V4k1DJHqqh84Xy/
	 JVUxtHtNAI8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC9CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598459357.30494.6601294740665969207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d585a4025d9a6077fe1e2bb0ddc8b24639336c96e7a809355a16333c3259561e
Date: Sat, 23 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755984593
