Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BD12DECC2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791044434; cv=none; b=Yr4zc7C+Ya1/dQLPG1LX8tfOua/0FrT3fC0TdgacdfDYh240BRVxkqwW11stZzLx/U6pLsieJ4vDfO1Z+WDAr7UX6u9wSaYKF/j0gTU+JMbymXmSL7/vgBoILLpfAdX5XUo4RzWt4w1HZjJ/JevMmm9+HLNVuAJzLHU/SwJPYUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791044434; c=relaxed/simple;
	bh=Kmi82O0JAlUx0UJ/ItVdHu/sRG0KB90HlUlGbFA2Ytk=;
	h=To:Subject:From:Message-Id:Date; b=sp+JbewpnHGC0tONxJBAIugKfKKubs95lP79pq8aJM5ZrVEkgSAOFGxCw6j79OotJP/XRWr8FWrFVnTmkrR9B/FkHO8z2KvdJa8zqPqLZLREdhiBPPvq6sCyi46BPN5axgiAAYHxCpnzRzCKP94uQQhxdR/uOxyc+jS8z1j7STc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyMLXIWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyMLXIWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDCCC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791044433;
	bh=Kmi82O0JAlUx0UJ/ItVdHu/sRG0KB90HlUlGbFA2Ytk=;
	h=To:Subject:From:Date:From;
	b=VyMLXIWDzBoatGbNzukj0uc6CtAOIjdwSJpX6Fj30C3l5VcG3lHjLN3+tq5CrRzS9
	 iM0OiP9qCcT1o14EVusyCoy+xfo79aQbv0p5f94AkVnpVUPBleXS+Aq67hFbAj8APq
	 TiyhOw2KrvHVCYMEM5pS0ihX4MCFiDp3oCYuqVuCD3bXSE6md9ekmn8W7ET6TyUIt4
	 WgeDVJ7RLmJfIj0ewZ/v/9EZ/uee16nQufg9rjTtoa+wh8Pzue1rFvoSdsn8tMLiXv
	 okhJS3f1W4lhyJ72AdvZDMXQq4/nA66YbqvsTl7C/IqrL5iM6FlOEVU9r/0uIj8bO0
	 WZFZSVpizPLdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC092CA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104443369.1636.16557575259707189873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf0b593a9163761bb0834a8c133e3ead32ea1b4c09cd6a390f716943b3957b1
Date: Sat, 03 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791044433
