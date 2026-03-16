Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2AF734B19A
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773642294; cv=none; b=E2lzKoY8WKN6VQht2VFJBYczzhKSC2XQYZ6J5CfEqo622NfRGAfBymbTLn0lkoESFZisj+DZV/F9fG6ngda3hUwMbzbYcNV+8r+4kDZkImNjzB1zfsEZi/wJm5hTomhBdCouK7Rat+8lhwSFt6xsEiW2NoBVmFkzjMApoNG6vUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773642294; c=relaxed/simple;
	bh=QyI8IcXPoghMLFW5n0uCmZdLuRtiiKZ6Uk96EQfJ3GQ=;
	h=To:Subject:From:Message-Id:Date; b=uUP87xbXZ/Y+vm0kDtzQl69P/V7Axu0y46nMdAoYJlCwoHZy8tvx3pn2n2hFhzWspl2DxBTzq6KSMiZ4VuWkCsrkN1+n2GRPsTaMlxUBpHP9sqpnTb6TAc+grTau8TakXu30rGDno1LjBjpCpl8KaajmqGemfwL/5d1cCa86N+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfkIJojQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfkIJojQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1574C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773642293;
	bh=QyI8IcXPoghMLFW5n0uCmZdLuRtiiKZ6Uk96EQfJ3GQ=;
	h=To:Subject:From:Date:From;
	b=TfkIJojQ0T8S3zZiLLvWWboCWTEZLrqz932ag/wuqAx46U/ZcYzk7dLuLbJFJ9o/l
	 z96ctxs0Sf9c/ZINVHFyTEwMyBQyoxN5lqSnLAKAJBXFr4YlZuBGOQIBGr7Eo+2fKJ
	 EaSTa3/uLQHts5GcT+AwBD/WPDv2Bbb5wGQDdsnACW4DPp4chgETb/wLrQIUyrUdK2
	 BiQUKqUfUcswZwDdVx4v4sbxk3SFVBfUqXgLFUgBn2UmnlsYs7Mz6yzzsPRyZD6zdy
	 9OGgTKHO1D15IoO9W+6sIsna1/jk9Oymn6fqgFSQG2H4cziLs+ZJjdhzvcaz41SVZe
	 xVUYS1C+2306A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9021FF3028C
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364229358.2083.7188040977671478378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af7f51f535d9321290412087961e7a116b013b22dec5cf5fe5bd7f9a4d0c838
Date: Mon, 16 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773642293
