Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F4B753D9C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791990634; cv=none; b=B8pKKYTJnr0soTe52AnoUsDJQWnzTmeJsU7X2mtjpers8/b1pxW0eiSUvG0V7+tP02rkcrWvQfoZT+QgMVCat1MCrY6OkKKNDQu6dI68ECWRi3Bi8OE26DjJR7Hr0qInY49f5zIvhTf3O8XiKeG8L/awqgZsYCKAWNQZwj6lI0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791990634; c=relaxed/simple;
	bh=jpZzApYlLXfDHtTn2PBbMWEiX6ir9V6w8YNhuSbHNHI=;
	h=To:Subject:From:Message-Id:Date; b=mPopCzHeTxD7t+Dwsedm4zSVgq7n7ViegaNETrSf3NVD9OhkllY+SDjxywOug4cnHqOhQre0UA07nueWLlJb86ij36m13CBr4AP/Qwlt2NRipyZJ25zOK3Xfz3MX4Ue5xN7SYGkUHFPQyb91Q9LuUj00U2Kq3BrUMUGTuil36CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKUENb7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKUENb7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BBDC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791990633;
	bh=jpZzApYlLXfDHtTn2PBbMWEiX6ir9V6w8YNhuSbHNHI=;
	h=To:Subject:From:Date:From;
	b=cKUENb7jGRru/gQvP1eyeN/uHEyzQiIV+urDVbcmt8/Q3+VYmA+8vHZPhOkGiHd0G
	 n8ivt+o+jsmE0D6YKTQSWhDbA3PNj/BzuiFwW7cazeuFT8FPdxFuMYbVN7TK6LWAfq
	 cc0t82sJGMRlR/bj0lDxA/Uij/UYRG2qJKQNjRXmYpl2sFFlGmZAimXkOcZUPRuh79
	 HQlFk+ylt+kdVr8NGR+fkvpMlZzKZvyggnAFBCOnB+qyKQoTGjQVxpIytJ7dOwkua1
	 z1+gV9vm3DMqHsuT7+AANdNmRn7F19hGwygdhzuttBGD4n0JJQ/sE+i9RZBeK8iyhv
	 fB9CsG6cGm2wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BE5CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199063372.18717.5881740613104277991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d8d8773d6b60089d094c863fa9aa5abe998831d9c89b348953bf20d54b5ce0
Date: Wed, 14 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791990633
