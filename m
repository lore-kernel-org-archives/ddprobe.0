Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2182928FD
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728804354; cv=none; b=qU3M4YR48THzhj6QgWtUlJnIF8xF6v4YgOpB29+2wVCmq5G5DjBPKqPbY+DA29QcwXZ39PNz8wjR3ARQOrYY02fGPkOchI/ywHfn9LsBQAThmLjABza20rIlC5TgfuAFQI4velcPwh5bukxqgo1a3J9QlkUw87FOSG2xlQ0sydw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728804354; c=relaxed/simple;
	bh=NhoBJWTEmQiY11i0xQN48+mRl0gi+eQFaHxXdQDLj5E=;
	h=To:Subject:From:Message-Id:Date; b=fRhrwRzKSbAWOc+EQR5ECvXxG8OiHcK5nQFqLUCpkksQIWBd6bpf/T0nqaYFASo/E1W0wnmJLg9Y0YSiB78XkmwHUGvf1K+9kmUmBQ4kt8Tssq4CBUfa/hNUosfWgZqsRsbc9ejUdgLSzu8yx4j7IeXdKZifdxHVwj2/L43xh2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMkAvY4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMkAvY4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF310C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728804353;
	bh=NhoBJWTEmQiY11i0xQN48+mRl0gi+eQFaHxXdQDLj5E=;
	h=To:Subject:From:Date:From;
	b=FMkAvY4AjOUkOnPKSVsrUVkbPUcQXijzw7CKCsARbhkk4ze4tm2vTYk7hcYhmPktt
	 ch64vT5lmK0QVqYYa4y191nuf+Rj0FMobmPMMzkSSOtEEnOJ+UGG9Eet9fJHlkRH37
	 r2MRiscm7/KpPZd9UTwYl9oDodHymCzNJZNLzyL1JUz+MbLY9zDGqKEjhIKWaxnjhk
	 dB6E0tc197FoOMq26PudQn9VrKHk7/3svV170xMMjOWOdOTeh31ElWScFndNqpmhpc
	 OyzVaX9F2zv5JxVNzpGRKX4SLtSgIEkwHtCEwuel6hBEcz01oEoy2Rq4pDkw7MFumn
	 xFSw1Oz0BwAZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97211CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880435361.14071.8738205082129363807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939d135c8c8dec2b748719b268c9207eef5b6e559cc5bc72dc9abc8fb4ac6723
Date: Sun, 13 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728804353
