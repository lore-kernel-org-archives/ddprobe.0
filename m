Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3D317D889
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719350003; cv=none; b=Rk/j9snjbGYvyhsv5bTRcFhCPDjCplgxtdrcmGak5p32T5rxP0yvVw3MZ4XcW/AWvlgJ5M22ehmQH+xhSaiumfqluyPOhojiAYmvjawnf4m0f1mWMXvtarcSSuCewCE2uhe5IdzOd/lWUyYmyvbAod7tOBAL+UL/bAP5rqk/8H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719350003; c=relaxed/simple;
	bh=uU6wlQmtF1aC1vnjs3j6Zi5h8HPcfc2RYuLsAOAegUY=;
	h=To:Subject:From:Message-Id:Date; b=Nppo28+T3Du8noCr4tzQoafkg+9EdzrWV/e8R+tACwNXwENZmHw4sDKUggYseU9NQ31l12b2A8KNyFQ1uCgITzGo/qOlSlQdOadKOZ0fOVKUQBtUPgyG/Ggh0rQf8sfivv49HkzODoi0a6MIjKvenDLeizCkNFslT4femw8IerA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BU1zwkRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BU1zwkRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D244FC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719350002;
	bh=uU6wlQmtF1aC1vnjs3j6Zi5h8HPcfc2RYuLsAOAegUY=;
	h=To:Subject:From:Date:From;
	b=BU1zwkRIO1DWKfoXKQqaGsGrWC9VBR4sPBknQBLUXirlZaKb5yF5aOPwyEgU6E0Zz
	 0uwPtmq6GPRwsV11wETxdZ/I9lJz1N1/4odomZnOmVY+KqJNvlKe69/MusZPacohPa
	 NkdFTgZCFTV3lqsaQu1Z5LqR6THZGhoIvKKzDmQOO6odyYYeegLKfYe+oGv84c/Yts
	 EdQBcZE/fhPelBSbHUyRncIHU0ZFNxnTwUQDVZKftHgmpfd4jVdPW4nYtbocNwm3lW
	 V3x/BAEvVlfx+7pjGwYZQOfpJQZqF80p7pvFmXFuo9jpm3ZoljqMxX0l1FVmfKUmBi
	 AvVFMwXyQo6Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C7DC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935000278.23590.6259036367748233725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a8fdbae3087977140f8c4d7ac4c7beae4a629e3a84c7b295bb7a9d21de4403
Date: Tue, 25 Jun 2024 21:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719350002
