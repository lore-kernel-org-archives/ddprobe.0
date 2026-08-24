Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43321382381
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787599234; cv=none; b=uETYMKIjm5GIg6KS9cCvMGSboJM9Ff9y0U5JLeXDypJ6ZL9IqsxpJK50ZGCNzq/m9Nl5UAtpznG/+MQwGxJo/0upF+Vtrloehhw5aGpmN3UDO/B6Mc5CuYt/taOc2ejw45U1kuvqzIMnmThY8myPnuSnNUK0zwvf3jtAGaMTWXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787599234; c=relaxed/simple;
	bh=wlC9sfIpYCdorD0ZOZFpnMtLjBqVQUIlbS+Iu33gUlo=;
	h=To:Subject:From:Message-Id:Date; b=ftgcoj6PqCxP0FTK9lGdE2mw3r34jWXNWthxvKO/2Y1aCyXLXeMeUZUZqwiXTrhjOGE2RllMAxqCXP+ss5h6l8CN+ryaU6bDCOU0MxRNnWFfbOqBfwZSm7P2MWfEiin67OsQ5RKWDaUjLzfteHGyc5g7pP2lheQZQ3y2bm5SHZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csGKXDEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csGKXDEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D073FC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787599233;
	bh=wlC9sfIpYCdorD0ZOZFpnMtLjBqVQUIlbS+Iu33gUlo=;
	h=To:Subject:From:Date:From;
	b=csGKXDEax6zRFnrx7x7MHwkMdi9wfzxw+0PLBhQxyphDOQd5b1uLneK6XWuWr9x20
	 pGg5ZucBYurPTWKOlhcT4aOJmrKyyA6m49eSJDvYYrXPi32a65tFWLyKBg0//XV56y
	 +jXZHPB2cjgawn1LDHlPOgM3ypQHj21nqQ/9cr1bFDSLROAZKCUOUCILGc3iSNfFZi
	 XNXLm3wI8bkkzeAepoqGh8eHCniD67DFtq9nnYLmTFMVBICCSoyv8ZLLzbiDZLZKjy
	 IaCjmQYCzuEN4uMaXtgwKAinLCJQL7DonjbFutxpwhCEh6EnfvH+g+qIoAG47nGa8A
	 V2idtH3lq1cKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9D8C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759923370.32192.8303642601620219847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb8e0dbb0ba39c7fa0cd319d18ed9fcd47ac59f14aa5d7198698548a7112a4f
Date: Mon, 24 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787599233
