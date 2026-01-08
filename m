Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BBF48AE36
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767867834; cv=none; b=rbfiK57fMewLNd/Rz88bOtnpNyEZt3qBvXQGcXjHlQZENSol0txQokkr/wajvYpkyZcrcqH+b4WHp8Nk/NkQZYo8z0P/rg4aGPtIRdiJ2hIdxqh2xilhk7hZykC59QscjuLjAQB7rWHp+5bI6aaA/DKo6iWLEl5JpN8OjSHSlSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767867834; c=relaxed/simple;
	bh=TE7FoKxeSlgRjk71JdqMle3jfFFAsSGMwA/lwKdXtXY=;
	h=To:Subject:From:Message-Id:Date; b=rsAJ+TMwNYLnZba4fBtAghxCpa4btgLyijALheWaNZD1v+3LkAM+E6NNyYU4HYBflXhLF8SgNF1uPq2mZFsOwfO9qqBY7d/dT3KhA1mYiwG4dE0TvOORfeghipY/FfAX6sZr6yNPzcdZg6g6lYiCqdInJyLMctQ7gwK8JWJGidc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=funP+1IP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="funP+1IP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D7CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767867833;
	bh=TE7FoKxeSlgRjk71JdqMle3jfFFAsSGMwA/lwKdXtXY=;
	h=To:Subject:From:Date:From;
	b=funP+1IPtlbJ/JMw9FHO39ai+4cZbDrB7nd6WsU1h0CG9y9sf9pPkVPbJ0dAPE8o2
	 LDPt0CKXvdUDWnMj7gI1UmDzpFdcApL/XeLikyjuFQ4SC5frJ1xrwhxkHigEaG/+SP
	 zGeml9YjjNDWg6tr9RWkMcCw/UNLS2Q8073QpyVylw8esvPmNhoRuQggI402aDriO1
	 FuGgM4SMFGRDssQyeJunaARHocN/p9AQpw5xDfVcbpgGCDMZLLC5oSLIAQ/UogoWKt
	 D9ff2jQkhZVWJ7q2XB01I0QNC0JtqKEyscE36O6Rcz2tWdL7G9IuFBLqYoYcnqOxZO
	 Qh/YxHo+DbAEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9270FCF6C15
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786783358.18638.11953463152846779659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a496fd4ec2f678be6abbd32670949ad031275fc0fecf1ab5911a5d5f1e6391d2
Date: Thu, 08 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767867833
