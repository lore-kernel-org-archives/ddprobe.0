Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2245322068D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773570294; cv=none; b=UD/wnVnpf4xAnITtQBk4TDY8YEeQl/uPMgNMJZS+weIkwAkALNOW8slJzip9TqHntNh1RsyH1NSSIXuoX137d1bdKiA1C1LB53oRR//4lkF6GFdRKBE2fvT500f/neozv4UYS0lqHkQaNNaaLdwaxWeC/1dsMYiVPGuUe2oJYlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773570294; c=relaxed/simple;
	bh=rNF2mr5IhzEQrsEcecaoGqY0TyNpfQJ+ipiP+udNmt4=;
	h=To:Subject:From:Message-Id:Date; b=E6Nsq3DJKdv8Uin5C4/iwy0BYdr6sXzVu/AVwKJCxV+3vN7JozEf7OGVUEkzh2gYhMvxjufb0OtEUdN4sCucmT3fAN35GBeBSciduG5xaDKRV9eMnlBSWPFV9m0Adm7SSpqV16e/wbzfy7OXVtxDoCinpfXrXym48i7JUYFcKWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCAhgrKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCAhgrKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FD2C19424
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773570293;
	bh=rNF2mr5IhzEQrsEcecaoGqY0TyNpfQJ+ipiP+udNmt4=;
	h=To:Subject:From:Date:From;
	b=dCAhgrKhNEUXE6TqbgAAkl4CSfseurmQ1as+uaSsXMzu3FK8MuXcjaYUTMfFAtOhw
	 cIYQCeKp/AExwHXOlPdydY9Q0JQUo77QEBFs5KRtvGjdpHzOviOLbOy9shOJTFkxCN
	 ui0EP4Eshef/4JQLo/s7rpmuM0/sMkZP1yW5/scMTjJsjunQy4D+WitoB2iByWsH3t
	 s8nONrcK92VOdXWhvzJ7j81316vBi3B0xJTlQWLAlfhMnVf4wVJdYaqeuAN0D2BoWe
	 2pTOcRtDzxDjzA6nrEQwTWwN2NjY++SzybA3bHOxZ9Di4Brhz+lLC/r0nnWwlw3e+z
	 9oVV7JUarWl+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF7D58B18
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357029357.559.11830690052951575568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111e7a570fe027940cde7906d0bd086743ecc3cf6de0496bdf779c25e9251d00
Date: Sun, 15 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773570293
