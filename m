Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FB531B117
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769348634; cv=none; b=ma8ko31vqPJTXmQe/Z9nnhBJlp/1jaJAvTM9AsBQ4ICNIDT2ohGoedso5APtAHYmNhg+ryhBOyydrYtHrYYQNee+C6yzi5LJlooTzrnARGN3AjRTRXwNA9ybBqHRip99R9zHM1nONaaHrhITo9N/gZgfPRK0udE850Z5brvPujY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769348634; c=relaxed/simple;
	bh=VjDtARH/T1xnqCmrEuRn22wOGiJhHQ0rNbjFjkX7Gfg=;
	h=To:Subject:From:Message-Id:Date; b=Eli/IFxXWuW/2bWHmPMdVaV08llguEhbd/XRuUK+Wkjv6kDdxdw51qWDT6BsXHaEchHsTPxf4TB2VqVHQuvt5uhgUmGskCrRHMkDO7V5CpThKgtHyGCZM9m/ltb2HfAMk3P1nNxOAeyLqdDnqvX67UPemIWAc1Cug5arkyfFvWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHUXViEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHUXViEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6D1C19421
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769348633;
	bh=VjDtARH/T1xnqCmrEuRn22wOGiJhHQ0rNbjFjkX7Gfg=;
	h=To:Subject:From:Date:From;
	b=oHUXViEOt8Slr5/QdQRwE78ysVmwU8e9GgOsVD7D6OXPknHFgqdax49YZ2N+Wyl6D
	 IGRWS1/hs5xsi3MkSYpnY7YJPYzHDbDX/dvbo8GwdwAj9H9QV8nyc3cO7VSg8tcWVt
	 tbFVKPhytXId84N7AUyfjZV9zVWPjFg1aG9gJgqy6+vtGbW6GM6DmTRUDXgqzJZq6d
	 WM0QwVzc/41LTxJl+PwO2rC+qvMfzlBE5XORgcMLiuXaCs5w7D4T3/SIueSDtNVnzL
	 UvByLFQZjUXX9EcSuvMQ8xocPJBPJv/AZTbaySVCgSeWG1e9ouX9cIAQWlu+dCnThA
	 FqUb3FOeQVsng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A786EE63C8E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934863362.18849.3348436219927340470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab230553886f4d812e8d893b48e08a99b2d25e44ba9bf2000b71104f9dfffbd
Date: Sun, 25 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769348633
