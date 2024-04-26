Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5185E282EA
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714123343; cv=none; b=hn90Jn3CzB70VziYLdFgKIeeqvoXyKFvRqNhhq1Q9fxroZCEuTneBXmhxg+l6xpJN/uymN5DmI/un1+bxyT7Nd8k4W5TNZxCo3kcmgSD79WqOW3mQ26Fbn/rLFMw8jC12FwiK5WX7ZK2PODfkbnO7uFXB/z09WJnyYsF57Gbr6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714123343; c=relaxed/simple;
	bh=oIRQrGe0i0U/yrCmQaSJtU597wwIfqaG0TFFea+w3cI=;
	h=To:Subject:From:Message-Id:Date; b=mRY8AZsAGj8GlDMnD9maD3iaaq1/K1/PkJ5iqCTsP+t7wBro6lE/J61GBx6hhf1sWahFvKebAFM4ZoC5ZT9eCFK0zUS2sLf+8BA8HlRlbEw5HJZOIAcypMz4CNq8st5Rd9OI3A8wV0kSYTGPn0ijSZsvlatGiDrgqDhoIUPjbHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPMH1EvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPMH1EvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1FD8C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714123342;
	bh=oIRQrGe0i0U/yrCmQaSJtU597wwIfqaG0TFFea+w3cI=;
	h=To:Subject:From:Date:From;
	b=fPMH1EvIhg8gPwcXWlkFCe+S5KATsEbaIbsCV1/GVjRS1+XjQOgOYI8UfEcwPeXW9
	 /XokJ/4Cc+M7PckBk42phpZq34V8zBzMgCjqbn59HaGYa12j1tt2kgzBhotL/6dli/
	 1xrlKYbaYUPYnSmfJaIoJG3bsaFkBaSPI/A/NGCmocTdaqP04bzZZghnXgtElemZj4
	 FmAOsj3xz2i0n+uBZ5PYaNLdTnIrKR7/O96CGSeqvLwy3ugropErvEayLLU245nNwT
	 mM3RZz7R+dYo8bZDUyReiWuNx3jQCR8FfWrzMMms9ObKySYylDuTfBDkpac5gOoRw+
	 CIarF5rrIbRKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8422C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412334280.26248.12567900825093790475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f034ccd380ab548104f7ca848acaaac0948de512a9347b71dbea38477860ff4c
Date: Fri, 26 Apr 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714123342
