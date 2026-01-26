Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198C1E55C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430234; cv=none; b=tKQr9fOjfDPPCBEFonPJNxgPPErqqiBPGTYHy0Z1d73iAZuVMIyHU3SLuW0yXhQBv3lCPEzqDZbvEwYOPIm0k/+V7csLAi6/OBd7Jyf54NPaFN8F7274sJBNUkrMco/kx/WVDHSBr7JWi3ZDwanOpKVAmOJgxGmACU9UtrRpb1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430234; c=relaxed/simple;
	bh=cyp17ddQVzTllhpJCzQ/bfVl15EDl8kP1njQE8HFoks=;
	h=To:Subject:From:Message-Id:Date; b=JYKktHsJi7IjNbA+6d3DS//bBJZBmp6VQGErKaBWznAgxHlBpDnrt3GL1fXynRv9jl+whIljbq14xZsjd0ImLod2UDWHbNGoXSk07pKBUJiWfFJUIU+b9128a+AoN1iwh8xr3E/bO9sxQa0Aw3A5Ofx1oNXlZwNxzepxrTvfO7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVsjRqJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVsjRqJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9605C19422
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769430233;
	bh=cyp17ddQVzTllhpJCzQ/bfVl15EDl8kP1njQE8HFoks=;
	h=To:Subject:From:Date:From;
	b=TVsjRqJIZeQ/nF4Xc9w7i1lhr/6XiR25b62zSGIv8ztUpL+cTaF6vIgHhtMFFIjvC
	 kBujgjwz3FB7OM86JnxbIINqrETUnsZvDsQnfLlP2+lDbXWfuYIKA3I/D48SogPEFm
	 pK+0ysMm3JY4LwcxU31MPoOBWdEpa4o2H4Bj2xNxq+waW2TpUjvNwVbZWXvOkBfaFc
	 lEDheghz0tam/8Wa+obdFGysuL850IL9vO07Jy8V/Put123uK0jewl3Wxdewi39JpU
	 69Tm6eW9M5y3kKVDBAt1HfGW9OSogjCjWRTzxDJbg27//Lv0WiTYuZ6JOVnjpRWq8k
	 TIYQ2zLyK9JHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F3CF65E7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943023357.3857.8776601165179178848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8bf531c389d8f4a5873b39533ce28dc53b375d3d16bd411e9e90419428b141
Date: Mon, 26 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769430233
