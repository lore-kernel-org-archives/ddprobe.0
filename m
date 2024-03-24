Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8C428E7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711273097; cv=none; b=hGNzrsTRoAFBTwK6EZI99XDBp36VJg1a57AbJ2vCw11MYxc7D7nbn5g6KG0nka3MDdVgtvoDkmbYYqmD9pODbvp4iN8W8nj9zzEvwLiiF68J7b4s/71PixFDlMkYx4HgV9cZMnC9O/7S7ni1giR5FXdQrT6Vb9XZec3dsVgghlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711273097; c=relaxed/simple;
	bh=oAJ+6CiU2iHHirXNlZdIcXIIM1Wq/tR9JOslM1zDSUw=;
	h=To:Subject:From:Message-Id:Date; b=DjuKTwJN83Y8HV/S+hqhzhTmKMGBKc5fNZIL8XdOKTXTAtvCelZx4J9UAWlFSQQOhM8hLNemL+Ptga+i8Gzu0zQ7qj16uF3bWvO5OxdvUHJ3nVQa3uKpYjPEuS1+WxcbWymRJC4E6TD89ShT65mvW8CGm0g8oxioXmOcv1GKfQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRAsSWa0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRAsSWa0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 909B9C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711273096;
	bh=oAJ+6CiU2iHHirXNlZdIcXIIM1Wq/tR9JOslM1zDSUw=;
	h=To:Subject:From:Date:From;
	b=uRAsSWa0fRzGNp/n5zy3dyyjmbfpkD58xi+4kBuQ7wa7M++9ZtDIHzm5GbUDJt7+M
	 9FDMBEUkWvzT4fvmAMCu7XC7dBC7V54WDGz3Fr3RSNuHRAdvF19tGd+rfIrs797ndz
	 bHkSI0OE+BHYRwREeMqS6+12KgDYbMY0+1AOsGSko9JKtnEsYiP//qrpt2ra6+MODo
	 t92C+aI5u7krL22WIpYcIW5cwTXE2nb6V9QPD5dK5M7FjqBL0tVhRhrx9INZo+gtxp
	 xBhe8u521VM4+O5QLNtHTIFqNP00+ECDK+a35GY50ojfpWAZ9NvXG425Dj8tF9q01p
	 Ys8dRbpDkfV8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77321C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171127309646.23098.18044900972890760758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0fcb8793d7500bcec6703013ba554ebf31627a9f538db180f89a1dc65abf7f5
Date: Sun, 24 Mar 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711273096
