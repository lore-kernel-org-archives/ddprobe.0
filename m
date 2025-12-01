Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F86727C842
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764570774; cv=none; b=ukY+YLhDu+2GqpaetgWzS9OEMgi2i/qrvwlLs9chJ3mSANZWBxjQktYmNgkwHdlW8LpWueV264L6/t0iHbwqYZiMKmMi/3vsDFzsvB56GlG9EpNsIVh02fgHaYDGHEbXkmxtXfc+TimjVxLqWNeR9sKgItqEKF+43AqUKUJYEWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764570774; c=relaxed/simple;
	bh=yCTCFnw7xOzQh7iKSe9bvJVlCZJ4yZk7QFrQGndsUVI=;
	h=To:Subject:From:Message-Id:Date; b=XHAOwhMCpIgCSXPqZFoQaJNkdVUE9OnvsxSWGlQZIVbBtG/vKPuC8zhrTLtdLm9oABIqeLoioWxhBHD+QWkFtdtWWJhGfn6+v7ofPPKwGeX4E3lc6zWFYmYAeouEyZk+4LyqpF3lIUAMq/Ate2p5VVvyLx7y5ZNirpVqXD8H/1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBL8RzUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBL8RzUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A503DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764570773;
	bh=yCTCFnw7xOzQh7iKSe9bvJVlCZJ4yZk7QFrQGndsUVI=;
	h=To:Subject:From:Date:From;
	b=pBL8RzUUCJoVVEIykbs5HbY3JJkwbGMv2LAfWyrPpbEzzofrlzJYeH5kHjeW/cZXl
	 x8F8q0XavRS1FGFTxty7+3Y53CcJSAHqaq0pO0TVf0d6QjKXGP9Vt+7VG+V3bOLfYN
	 35b5jwRjrdqpJmlIWyxZvO8UcCozR0u5lBpydUaR+yFl1Px4hhYoAGfF6leNWdWLRS
	 8iZYfb5cjP6D4YmxqKlgbrEdWcvVm7BCikdIBMEqUapCAXvIFsnu5W6wH94sCY8ZDx
	 zL9wOFfGNZG3StM6zHAuT6Rmm4TxC+kXgN+JbsLq9NxGXnzboUNXo4QAZ2wTfG7xPu
	 ol+uLxTIlYaZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930FFD116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457077359.28530.16742173236479182911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415c5cb289eee7705ad40b692eaec82299a54a6e72c22303b2d9b90ce2a6c943
Date: Mon, 01 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764570773
