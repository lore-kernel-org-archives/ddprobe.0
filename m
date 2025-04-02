Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C611DA5F
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743601194; cv=none; b=tZwO6kVHTFddeBqFhRkx6+QGCfkffMr+pkeoMpIFnqGWYhm7DzRmjyTnsnIC6YlHmTk8eupZwsU4G6oVk8eQUTsU7r/0ghjk6e9s5GCJ0eDaNcOm0YJp8ETPAvteJ4pMKMJSmKfyOz5CUmjesL8m9ZVBUXc/AjSQohUogueZP9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743601194; c=relaxed/simple;
	bh=J0WLVUcl9j6z7MGS0hwPPBfdRTrQFosNMMTgl7/zNAQ=;
	h=To:Subject:From:Message-Id:Date; b=oEICIGMsxqUKwGxe1CuZkn1fuNaMIYV9qY2kxYaC1Mrarz2tAyJ88zepC4+v14d8lVAiiAIGEBrxcyh/scw9s6UJC390jSnl3mEBnHSbj2nWr6KmG6XjzgxO4yMib0o6CJY6q6GJZlu1qTVgT60SeC6GTd8sTTLj3kgGqSlOqHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E527BSpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E527BSpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE069C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743601193;
	bh=J0WLVUcl9j6z7MGS0hwPPBfdRTrQFosNMMTgl7/zNAQ=;
	h=To:Subject:From:Date:From;
	b=E527BSpEHGdQQjLYbMMEIZ/qrrDAVB1Czx19FjDwsb0XpjxhsAYE7kj8IXD/xxntk
	 ZRC1tG34XouraklfP/1JxE14e+0b75QAusyHAqWL0FxwwY07th1QL7e47O2mJpNajr
	 J1Q17qjSghAVU7QE3ho9dPfbaRbh25gJfJiAFrrTdNvBxboDpeOc7rYhtTD2tXnm/1
	 JDbru9S1Vdu73xV8c3XbxIkmJGVuI5g6CTsK3NyhKHsFiID0zJe2SeUXiKzFpfiOwk
	 8TE9nJNC2JfZSN/cJ8swvH5PYIBWChxnYC3YBMv3lbGUEK1+p1X/AvDYn1T9GO1phP
	 NV6WM2FCpMtdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991F7C36017
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360119361.21657.2617361173553920008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7a2c541302170ff632f25b52992aee651c6fb839a55a276fa407830b844e5d
Date: Wed, 02 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743601193
