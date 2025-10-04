Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1153C1EB19B
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759583994; cv=none; b=bFde9p4v1iyjjLA/Cqz3lFqUTQDkEnNcys+3K9c9dkoKuZz75BKh/g9XLzEfiQoglcw2y9JI3JnLfNe8bAC8W2LAvbmEEpMMCkXP/ZrpJs+5QHuXxKCHRYHRf/sP+hpqqqZKgGTC2soNXqE8kKJYzO5RJ1EMUY3+yZF7J/SlffQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759583994; c=relaxed/simple;
	bh=aYJkxNQin/MSwnQ7qXTVBKWvAlAyVahLMHbfYaFNCdo=;
	h=To:Subject:From:Message-Id:Date; b=rNC5XL2Id999l6I2OiQmP6q4jbcEAtJtzeKanVgtJEPkkGaNFtZ0JfwL/uaaTY2tD47ElKeQQp3hRu8JqFWJiD2p96vlYqCvVUxQdD09h3tLEtnx1u42cfrlUNal0VHLspnwymBoBPArWOhNB2RROSWQqtB5vabbl4DTfd9RQoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uThtqDcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uThtqDcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42A4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759583993;
	bh=aYJkxNQin/MSwnQ7qXTVBKWvAlAyVahLMHbfYaFNCdo=;
	h=To:Subject:From:Date:From;
	b=uThtqDcj9qwCH1Rpn5HZ1CDDW17XVs6bP/u22fTTjSVQ0Yg5XoaGP4cXDk3dcIFjR
	 Sc4YOjNZf0qK4y8A5BSTtBmpv9W+CuxW1zrxrYZJOBlOkxqYTZ0D6PwQ5Et/TSudyX
	 F5ujp3RbJp/jExjslfJulauZK3Qkw5L/XSRnJqyZMXbwlBYbxXcuH42pwNRcXsFq1v
	 vLzzkh0h855/PWmhezNil3kjGD6XZ3+JI2LbQY/s5QahWcNzSMWqeJvUm/CGQWdOTd
	 gTcxhCbcx6xWOgIIJYgalRtgYPwt3fMX6pYBdG8BnABDGHULkprPVEgvfPez1vfY9d
	 oKX1hHTPcw7yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931FCCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958399358.30099.14115888240536906117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88e3ba04e5057b0aa5c790d85fbdf57f8f5807676dcabac798f5ee64b423540
Date: Sat, 04 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759583993
