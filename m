Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C30723CF12
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759476594; cv=none; b=akwJkFA4dxdYX2AhCcFVXUnbvIljkJHjPmNh8DU8GUh3sJWz4drlWZpX7qHoZ12/xQ69B92huHz2FG9Jkq64KPWjxWSae/HnZFrF6ZxGaDqupz2iTi9O7FFnVY2meHyIiNnjGKJtrb7rmjXKGmzZX4ZABtGWTv9aWy0xrofixIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759476594; c=relaxed/simple;
	bh=ys+p1M7tUziD5OQAnMGZF+2WLfkG4oe5rcCQWwykllo=;
	h=To:Subject:From:Message-Id:Date; b=DNG8VL/sKvL94o642VnuSptQol3xGHxR4VRIfwUyxu7MQZ+h5sAHOqzfyR3+D6sIvK7hHHLkfSqZhsMEQpB/L+foqH97kM9/l58GHwClgILAf1d6lQqgjNncDApWEt0ODyTDI3g39d2jiPYat/fYTFWmXlQa4SODjWdNmZxpNE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akq53zH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akq53zH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04E4C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759476593;
	bh=ys+p1M7tUziD5OQAnMGZF+2WLfkG4oe5rcCQWwykllo=;
	h=To:Subject:From:Date:From;
	b=akq53zH8GjSFTXQ1jiwN4BG+qNyZ1fdj4xnA1vkdB6P7LNeSWecBadBKq9wG3BiEl
	 l7t9Q9nAPO8vf6X5IdUNViTouISp9dmlmAVALlbZuaAF4jUXUpPUTs73igXi6ES01V
	 gpfxif3htnon4wHFqSp8jUkpPcidq5VudiwoW6F4/nBoGiXCZ36lv9YHwpTcFC8JRa
	 CF5J1qZxwz9XKjSn7iV1xdNkKZUCsX/1NGrQ5bRIRr3WU7Pwy2hd92e1NjWQSorNWn
	 +S8nJCE3cP+0L7+wb/l4hSpWwS1aoA5I7d9Bq4fK3+hTQEmADcNCNGkq2Erh6xCBDp
	 x+NEe3JKja/cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917BECAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947659357.17041.8093432360632573346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f760eaa79c28cb7b4e840a90f8680e477e69ff3cbee554689ff8e6f6f251bfcc
Date: Fri, 03 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759476593
