Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0213E32B993
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771326894; cv=none; b=g7gmDOIF5zhZgiGdOw5Tb0KEgFyyrQ49Qdt730Rx2I4Aan74NFMnZJDNgtkiIhZrt5MqLXdSr+DGsZTjrYWvrlzOaa9H77X1ydFeGEBuo+1nZZurqASAUM0RWZ5NxEuSs4K5nzclqoNtmkCZAu5skXasotTJ3ncegEdizZxZBQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771326894; c=relaxed/simple;
	bh=MT2T0aWetnJJK0A9Yki729AMHePEKBX4CE4u5OUbZ9I=;
	h=To:Subject:From:Message-Id:Date; b=LbBh1JI7hjT9ccODQWleHnlEYJDh2a+vdH8TxeDabuFQ0af2OBvqhSL8yWg1i53ZD7Py+uj9K3zb8v3v8vpf6Rb+fDA5pQHN34CU6PzDVw1fTXRGjiwYw8YhjkEK1cG7+kGz+5l0JX/VD4l5euUHI7ZfSF2K7V7RjNlRjk+quA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjDseOOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjDseOOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E12C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771326893;
	bh=MT2T0aWetnJJK0A9Yki729AMHePEKBX4CE4u5OUbZ9I=;
	h=To:Subject:From:Date:From;
	b=DjDseOOmqmY+xZ8plKn4Vx/WZhRk3PJ1gcHOiQy5vFpZZjjRZ5Ht2KAnTU79VcUmn
	 9w4pzrjc/9bXvTcyh8ZxOjvTOo/dXooK9tLdvRtweHHSOKRiToyHjbrdkRtl73NO73
	 BwVZOOlUixaCw/wBdw2cGO8x5lNmiE51UkIPPla75sHHRBvfWMAWF4+TRnu3CQ0iVb
	 9tK1zNG4BxUMcYof1m5p7wBwIeV1xcW/iLk8JZvD7s1ESoGIcpvdVWnYLWk8h1M15A
	 5QD//SK2o6uZmrUsHLIcXaXRTG2VuA9UF4ek6NKHhdNbApzpLQjop9LjJqc8BMeqLt
	 +7jvj4m5sV5lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AB8E6816B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132689359.6064.7686901234668919858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1c0ba09db3637a1f0f67590b6e080ac401ebf2f137d269474719b6f9033e65
Date: Tue, 17 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771326893
