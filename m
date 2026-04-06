Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D33D390CB0
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775515534; cv=none; b=LSi61PyaAA9BI+0FsVcH25vnJReTOWYFQoyYAIjEiZca1rDHyt0nBQrtz2SdLuJqXoR+FIuNFVTkMNNh9fc+43xbAvdJ0nWg12nRadT9jHKGtLia8swkncJ9iBuqc9oMj3sVeECP8TTqxHZfFItgROyHiqvvlEjVk5ovEeynosw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775515534; c=relaxed/simple;
	bh=BSw3uqJU6uyTDENScFInS5rJ8UMCT6WpwzIuURrhe+I=;
	h=To:Subject:From:Message-Id:Date; b=ts4THAMlBTBQC5T55O1Ly60zLPo2MjzzPHaj3Uzt4kg+2mqhHP06yGfnsuO4OAAEXT1JizmbGIb6VaKqeSWQ0Z3pEeH9UON0Ld+sdfmpYXrYpiqyJHKXd5kYO8VL8+a75jhVIPzrp+64j22L3IK2XHuYEpjcfObEVbwwCGtZ0Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb9kYrOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb9kYrOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBA6C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775515533;
	bh=BSw3uqJU6uyTDENScFInS5rJ8UMCT6WpwzIuURrhe+I=;
	h=To:Subject:From:Date:From;
	b=Gb9kYrOd6Kal+dtInKvYzL6suP9ZO1gfGZ+ImZDT+o5Osq4aWZmcKCUQgLgM+Dkh3
	 4qEO+YccT7p4F+lKrWc/cx9yLWbm0QW+eLZ9u3Yi3ZHlmfROGhJq9TyQ4QTYqyvJRq
	 JBKhcgNpCagL8Oo5PU6R3IudDLfX5Up0N2RNvniASDKJQLaTqeryA//lAJYE+ve5j0
	 StqZ12TH+VuGZiedjgnoqKv8J05thBFX2Z8jrpHa5ybO5algbNbBqiZxHAddMwrhVl
	 i3+SqUcMlzrOz5Vgidh00wZgxbMFn10T96DsjC/3vH0cTs9HKEbTilZD+/3bkQtRlt
	 sVzEXce48PbCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE55FB5173
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551553369.22953.9697150717549664955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694dc16ba54679fae6ff2fea2711298eb5fcf533455b482b71f96656e373c008
Date: Mon, 06 Apr 2026 22:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775515533
