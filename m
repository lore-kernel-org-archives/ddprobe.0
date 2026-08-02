Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E0F322A
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785669634; cv=none; b=FpRMwr1l5XMF1RWK8XlB5+DuLXCccL6JJCu+ieVP724+Wv27AHHXMx/Om4ne1GDJnHzL+OHGrycUcNmaXhEJvAl09w4CQ5gWbJc3SM8I8P6tA+4tJqNxEPg+QCi4SWaEKeC7vRz84E2TPVjUGWq5cOiK3FjrBqg72iaNIxatGAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785669634; c=relaxed/simple;
	bh=vYNz8Ykg+rD4kCF2B92ZdR04ExE3RhwnQsRWJXKNhTc=;
	h=To:Subject:From:Message-Id:Date; b=c4vJwrEZy7sCXTJzmVNiCkF/2riG0UxpqLEYxy12fHZwfyi7pwRA34PouV+zAlBncWw3KXF3HD34m0yqzDvlKhheTRrqnDa2OS0JqLXdxSudZr6lMA7nE27lQApWQre9rs9yXntgFFWXevUEpvRVmsqkEZSy9Z/OP8GYKTQSntY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSGxHRUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSGxHRUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD4AC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785669633;
	bh=vYNz8Ykg+rD4kCF2B92ZdR04ExE3RhwnQsRWJXKNhTc=;
	h=To:Subject:From:Date:From;
	b=lSGxHRUqt0UVmFzdYcgO7hj90bImkA91HqugiRPz44wgy9M7bE7pXY9/UDKiwwv0/
	 LEds7/z7bfNoTThqaJD06PvBwpAzyQz5ryBNkhfRcuwQ1jW/A1h4pgdyUGVpfPB9LB
	 Ej6a0sDQu/L95uhPTkc9jrsIOcqXjllrkGYsxQNQi3/4jPN11kjcnJbhnRH/1CHuU3
	 SxNy4zx3ytyJsCqIlHIDcOgZFT1e9RBNQqsHhQDBo8LHNx3t0HJD8LlcLXsJLPl1mJ
	 ypyLu3YZgYMfzojdR/jiKkIyXwFaF0ZSNMou5Mw5f1YKg01hJkXjH+Xoe8NAscRoq/
	 8P7gZsaieLXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84A4C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566963368.11461.7607984816390884372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd70dca8192bc777a3e5ca02301e20b89217d9c286cf8c093a5adc39ac4ed5e7
Date: Sun, 02 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785669633
