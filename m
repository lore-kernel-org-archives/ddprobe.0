Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DA71DA61D
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733474154; cv=none; b=S91dHVZMiGRLlcdilffFWhwQSIgcbreFa8+k4DhSaqwjy8KH9ITHfNQSEMqyrJBdq9kxjhvVIDRDIMRx6xPoFu2/72l/1m06CgHm0ITq8EX+WIbIaPU2VGJKNWdQU6ow7gm419n/KFE92MF7nfVdsnHonVYQcTzBAW/J/e9Z8Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733474154; c=relaxed/simple;
	bh=vN4ewX5dyRrUoNNFfgCyyElMU0cefV5c32TRmlZas+Q=;
	h=To:Subject:From:Message-Id:Date; b=UAalnVqKNLpRhmRCMXBDA9BmBp3NEoKc49PwJvkYHlm8/5lSD4TfXyImEGUriaZF4O3kfAVRtwe+V9O5LhttV6XnFPyq7MIt73jeYh/0X9jNBl2TNnLDBlus6Lq7tttS7CJFlyZX7ooNgB2WDWYPaBVSjVjO9CI4SobP3Lug728=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXN7KVb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXN7KVb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6FFC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733474153;
	bh=vN4ewX5dyRrUoNNFfgCyyElMU0cefV5c32TRmlZas+Q=;
	h=To:Subject:From:Date:From;
	b=BXN7KVb05l6mPqcwXF8e0qkVOYLdB1HgUGTFhG3QzweX5BjDgQwDlRBTM9GnydOjw
	 nsH/WJCgi4T3zwcNf4eVJrEDboFRNmuhO+SpnBLG6lK/4Ag7uBaZ1+oHW0TO9StrPf
	 2Ov6LdRGyAfehQ0D+XuXSOD7Bapx98OpuIC6daZ9FjqODy+SW5mGsUYS2m0b3AgRZD
	 sxYfXTGT98W5spbqwQt5KAFgL1tDFIgOKMbooHbF3HLAnkedsI1ocfGoPzKMrsoTAX
	 513/4+W++H/V3N8IxNWtudPF4ShpVd067jDkkBWWTiI2ceYfvLsZuNPSmui/OblAIG
	 T8QkxoGyS7KsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98175E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347415361.5828.6342228815750828787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c701f0b19265a494f69911c89ce31babf4f4eb9ab8f830ce2ed7eb23d00cc72
Date: Fri, 06 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733474153
