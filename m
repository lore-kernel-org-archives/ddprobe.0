Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA48D223DD6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774590894; cv=none; b=VLLk3/QTCzPUgUi1tFycQtp/6s/Vm3m/kjqySkl22GWlFAck07VcV6hLKjmmXej3LEy3jX5+5K9lESvUFEZyPdeYv7vNlwKJRv+UbzOv8rBmGK6J99dhe/UXojK6gQSGmucF8EY8zcM0SmfD65XaK1e6UqaojCnWnZ2zoHFIxUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774590894; c=relaxed/simple;
	bh=TfaJfgYo3gVRw9xU0268hNRf91vkG5uLUlBu4s7aJyo=;
	h=To:Subject:From:Message-Id:Date; b=L91URnqPezl1CYNjEc+BPTXp6Hmdnjsc5xrxgct2iEK0hl1seMukFSw4yoLL67ZkRK2Ope5yQO/dlqaCHUkEZ1LJZ28lR3sgkV0HnSYI5SrbIJ59yLAbz2u8LFToLQQa66k/RdRo8H2Q88EjWHCrnLM7HbtZr04tUCNfIR2LxCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ub5SoZMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ub5SoZMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB26AC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774590893;
	bh=TfaJfgYo3gVRw9xU0268hNRf91vkG5uLUlBu4s7aJyo=;
	h=To:Subject:From:Date:From;
	b=Ub5SoZMi4upLzDw8Ft2OZdD79O9So0ztgls82XwBBmvE+cjxUHPfgeg4ytCDI//7Z
	 J5kKWJrsm068PH/OQrq12XmVXxOB46MifHeUbqD27Z04n5QwH8HWsa+yWlftBBl2w+
	 JN3iaWZL8dvUNECgtmgyRNMvMvUKCtamofpV8oFpGgWkqL6+cU99BySdtj22hEw9PF
	 rC6aaX/VXs/XJaiL6YgfvMo8cvSwc3MGFG59vZHJ4l5+/D+sHXp6CopWp/5Y5emwx9
	 Z5Y1QbDVmbDsbetDZ8fW2MDw54UIjRw6DjrhKujwRuund8EMScetJI3JAKkH1vzTi3
	 FaGNyAA+lIJGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9766510BA42D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459089358.6213.6706598526922448371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524511146f19243f54be3f10cc96297096fb958990ffdeca3c2abec5c07d2df6
Date: Fri, 27 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774590893
