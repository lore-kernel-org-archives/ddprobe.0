Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9BB2F49E9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761001794; cv=none; b=HfJXL/Ckg+gSuayCwaU/ZyeG3iuXjFZAA3QUgY4tJhLReMYAqZ2WACEvlKr+fdpge0LR3S7buVuaWQZEfjn6OnnD5X/mYBApNMEpAEjhgYuba3W49aefc1fFDUv0yzDLJYZZ9z7zQcJ/GGWDP+sou3PrtK699L6CPtzErf/1O9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761001794; c=relaxed/simple;
	bh=5Yek2jaM2bAtg6P/hYzXYh6UD3EY9WOpOJyCc0DNs3c=;
	h=To:Subject:From:Message-Id:Date; b=MVbomCNwoRBZIZEAUDYGdf90zUdJzrd74bNkMrQO0plBZwELn89yLYABESPb/VUb5T7Wwqadr7iamLfQbXLYpPkvlE5iG3AR9Nvy+7IVNcaJMKtYtA1O0j4htke5NwzJtQkLS14ym61djesI11aXCiva72XdyvFORmkzhdkmLDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XF8xV+dC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XF8xV+dC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4024C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761001793;
	bh=5Yek2jaM2bAtg6P/hYzXYh6UD3EY9WOpOJyCc0DNs3c=;
	h=To:Subject:From:Date:From;
	b=XF8xV+dCrAKIXekeyqlj0yrLSMuJ+Cq8SzVKC/icmwg2lLuiFAyYtfhHgm4vj8h96
	 oqLfvQBtIb2iZIsdvluHBOwYLwhcaSBhWw+hmegkeIjcBpgJ+PWbZRLEZbMB9tXueE
	 JNkFnn+IJMO9KoIrYJCgh6hmBHyhf7HtjLMSZHPa/f4AMYXvdvDYw7A32QWuDvBiSv
	 qL3dh7vow2b4MlVmmVNthInWeRyp1cE0IOdmGz3VLW8ztTtEEnEfrGedjQRlWRw/JJ
	 w6E8T0Ib8yOAodXE+cc4TA31cHMGElvvjOKZF6g1i5kFRNgs97G8EnA2Fq1ZWW6lrR
	 Yz/HxanLIPSDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B03CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100179358.32637.10927219436843361674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b8eec147c545cf815adc1c290fb108d32b0deedddfa43ab5e6a317f5fdf505
Date: Mon, 20 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761001793
