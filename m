Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4967619ABC6
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778961634; cv=none; b=HAkT4qUScTeH1oH+TM/Yc2lf89k9zRV/Hob7ssbOfcrLHd2QScDlw+YHep551mS4Iu1jAIhtsz25YWW7iMSJTscN+Cs8yCPFU0t7xrlLXT1kdw8NOT/sJauNkwJ2qYHY3oGNL3FHQcy7HNsonlXmjRuVzkyA1M2erk/m0Uy/BRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778961634; c=relaxed/simple;
	bh=bcG06ZmxAa+O3BdcDyE04/iwPEDdZuwRswhLr+HqIxc=;
	h=To:Subject:From:Message-Id:Date; b=sqhFjTSLe/bvEcMnJEq8WbcmVL97fY1weev8Bp3yp7B38RB6ZN7p64CeiDswzbn5iEGvFA7PP+zj2ZecVvY8uRnz3j9CB12Flh9KhDCb4XxlWdusefNnlmR3BSFkyuymkI0FVf2EX5jCCzQuElbj9xNUcZQ+LCWQ5z6SyxLQjbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfN3cU7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfN3cU7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E2EC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778961633;
	bh=bcG06ZmxAa+O3BdcDyE04/iwPEDdZuwRswhLr+HqIxc=;
	h=To:Subject:From:Date:From;
	b=kfN3cU7jVi+ss8qNRDBFzip8yUr7s7EmwibNrGs0hii/NfafDCvkUaRGcy6wDVvt9
	 505jQiUXR62u4Jakum5DgIiVplbJRysM+qkmBXoWFUqPg3Y0oqAimIdTdIdsXVCgZz
	 GAiiuLCcXi0C9bZnTGvlIWvQK+LjtZi4oNM/Zy55l4cjLHPB7kZ1RgzNezKQ8NSa/9
	 AX4JbJXzDL81gQAxKdyYrITpVJ5XWUS87jY5oTNUrtLl4/JyXd5jHx6NLCIuEoWKFE
	 75GNNbrmKOrWSqMWnxqGnzSXIEb2RPm7U8mdw+/IW9goIHaO5cFeavdsKxYutgRe6m
	 Krlt8RnPqN22g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E6FCD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896163369.30411.413451154374106213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2a96b2e57241a1d7b2cb55b3555dc93c175e2ff5fa65ecd191c7e489e031d9
Date: Sat, 16 May 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778961633
