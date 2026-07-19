Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657D83859FD
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784458114; cv=none; b=Mkv/2sGWuaqvBhsXXRZaTWbWmmaJNWarQdimA65mTYin92CDiSJPB9sNInNzEJhmICcjY94+3qZ7xzOGOX1d5FnAZVeTymM/ysq2tYKZonA3YDo1bPsGh9FCYDesIm6tCPzX6p6aOXV8TeVseQlQ9L9E8rk0kVTKqkJIN3U8wmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784458114; c=relaxed/simple;
	bh=IMXDLhOD0lhVFkdP96g6dehk0kQULQy4b+tyVf8IQAo=;
	h=To:Subject:From:Message-Id:Date; b=i15zGf/DjbzIEFQRxyREnd1+wQ8OLpCpQ0xlthbJByttjH7pYLYOsPxxVAkRalUafSVkSWzKX2WWDsE5j4i3/nqyDycqGQmHD0RtFRNtILwlyVaw0cxkKSSJENz/eYErw9ntJddoVK5JggM6Xg0/seKHWqWEPV9NpbnPVayoGl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yl7ACTi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yl7ACTi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D132CC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784458113;
	bh=IMXDLhOD0lhVFkdP96g6dehk0kQULQy4b+tyVf8IQAo=;
	h=To:Subject:From:Date:From;
	b=Yl7ACTi06fp+TvCvyFgfy9QwrNo0pPP04n3SqinN3YhcG25SZAem3o2A8vCvrlwxD
	 4VdTnGOyaLciAp9XAZNauzIeEvb2mBWmK58dI+KXR/UWnqF9hvtn/orGe4pW/1TUWv
	 pSab1aZXtu+xaTM//tMztl6yXnoPuQEkf8zzhhkivJyGSBqFyjVLrVl4JHL1eSPP6a
	 4oQ1xFWyuou6O/svlecvI3sjH4JiM2+4t5+3ALAKHhcj1cwhDxgBBhtWessCQ+DQIL
	 aPKsXB/FP4p3ADU1R7p0M8NZUrigjBPq/OSE7LE/uj1S+v5GvMH2FlZpwFIJSTzF9T
	 /QNzFu33moFqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF01EC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445811368.14423.18210085956419261176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe0f3a9197766d96bf7a809d4102127bb08c27e66600ae5225e0b5956a3dd45
Date: Sun, 19 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784458113
