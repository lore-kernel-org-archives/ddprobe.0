Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A6918DB14
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742678394; cv=none; b=i3cfi6wt1BP20Qx6TYmdyzxnJMKHWdxsceweshe920KWNim5vT8dBnpswFhpSgiQVYAsWOFLr2EKpYqOHuasYkm9JCwKef+shwm5Q+ktcWaS+UGSSKV2b541JNQNeXVFC5rqsvBSl51rpc0ue65jYa3KjNM2CVKf0Y7WGGqJDCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742678394; c=relaxed/simple;
	bh=6IYUGv+nUzq5bOfrJxXZjZERRmxWu3TYh5V+W04pqiM=;
	h=To:Subject:From:Message-Id:Date; b=dXBzYP1yyUzBYyZjiIMWwOtkJw1w1QgWJmAgoplGfsnc/bXJm2ZJ3B4ob1OWOdnkFwFsItbptgHm4frCwovE3hFsDJ3t5tYhOnRJyO8x2ASPvh2CxRn26kTeUxQSuO9ZgfvnDQKHveXg2QnwWVGkVxZh90PSzbnWc8wjMl538+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OttjGpU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OttjGpU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF43CC4CEEC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742678393;
	bh=6IYUGv+nUzq5bOfrJxXZjZERRmxWu3TYh5V+W04pqiM=;
	h=To:Subject:From:Date:From;
	b=OttjGpU4OpjueJAZOtUPIwfEGcjRrygw5rEVlMv1xHYuJQ5IYvA6mHUeRWKhGE5En
	 DS1DPGH53s5k5K3Lcq/7rja2YhNpG1mqjlAb57gWnBQ1fqimJ9DbOTXCcQhMRvqBDv
	 kJtN5DqCwEvapPm3szcLWMNa4hkZxmi6Y6/wuTc1OgHOFl4I8OeJr3jhp2UGDCtQiy
	 sXbgIuJt9+zRoJfyQb3RPKXk9qhmIqaqOvWGJfWKAwnPbD+vZUXBX1HFz1wiPPKMlZ
	 sVNN+UAqadjZSjS4PX6jZDGhA68zSQnHMBwZoc3bEt3BBJ0h8Dky25psuDUkZCorpn
	 nb/PZcooGifAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81C0C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267839366.13200.14389464717965553995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdbce7bab14c71b360ac3c47b88b9cd854848ef6eb9a62097d6adf4fb27be1a
Date: Sat, 22 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742678393
