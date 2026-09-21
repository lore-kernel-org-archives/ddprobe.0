Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4364D4892
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790013034; cv=none; b=teCQQLBsYLT6nzfhT2qH5Pa3I8dLif2qicyWT+v+1yynwtPNUOHxlg7nZC7vur4lh/rQMTZeCqa8ADsAhxQQOHOkjBJRQBljIs2xjuhLHmiXJjjI09LxOXc+vrgbLbZigfwSP41UuZjwRNP7KMXa2HoHd4aXw/6yzH17ESF7hvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790013034; c=relaxed/simple;
	bh=MTmwKRxyzWDnmNr8mj7+Xl/tq/OCIKBfesL8xuipwJA=;
	h=To:Subject:From:Message-Id:Date; b=ZUsV6IUZlXOwSDvYnquJmRMZa0FeS9yfKLFWp3lq65qrpa+BDLTPtbR5IKQZ0uYLb6SumcPwPX9QjjMB9Q6Br/SQaQYfw1aXr6UlUa2In2AkX8VJZvxJ9Mn326GhsvtOh5GafEB22RPCymqFdi3q0v+7eCBunigEBuKhacZkyQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNZ4VPPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNZ4VPPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0480C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790013033;
	bh=MTmwKRxyzWDnmNr8mj7+Xl/tq/OCIKBfesL8xuipwJA=;
	h=To:Subject:From:Date:From;
	b=jNZ4VPPXPKinjdlXq5k8jkihVMZqFZ1iqq4gMK+zt+9k8BWXtVvQOy17ZzN9HOKPZ
	 WiFbmlFunvgttjzLBs5hnyA39VsVJA4nvET0fTVnK4kGg6GGkU9TQWhKiiOOs57HPV
	 1oB+jIaeiX8hCAJiAWiwy7gnQFP3BCfdhcRsWIsc4nZOKfZy4tHKpUH/0v+x7q6lHu
	 2VkPFycOJ2xR1flq2JM5xdBvtFpCdga+MAXjKHDev4vcjK2y0xKJRMRfZH+xm6T+Qo
	 CXcHe5kN9NEpQwmaKrHTKE+ycbBiUB8i8aKlfqHyGhwkmFvTVfLuI/r8cOjTWaYMbr
	 xcczqBl78gVvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A0AC982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001303374.7649.943727682865494451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba82aea60d82a53717c9c4ceefdae45362c98dfc3dd36396bcbde18e7a5d414
Date: Mon, 21 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790013033
