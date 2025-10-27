Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DB918C02E
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761529794; cv=none; b=tEDtrR5LS7LtBPS/HxLc1lrsrToFQbN8ahZ+qPaFYn3t9RckW3zfuzbn6KKLXD8XWuAS3FHGRoQcBkY9iJBd45Q1z8jmbtCoFy8Hg/q/+5opVJDopr1pzbT+qXxxIO06tQsQ47KVHhhGu72SLJLCEXtNHnul5o2uJ6c7kl3YpZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761529794; c=relaxed/simple;
	bh=JIfPJwuJr41cKqpyveUpl4G+0PmV8/uCnqyxQeifSxA=;
	h=To:Subject:From:Message-Id:Date; b=CHNERnWCcTfwNWR3UAALKjYlql7I5h5qjDaBISmiAtkHuL4S6pyyICM+1/dSlJ+05v6a00QIpilM1ZqK8XpMXHx/SXXORkBLMifKuxY3NJpzizfz1wzjUCJP9tfsMr+tdB6FHhtEe131PO6yVkzRq35UgWIndmV9INGSXoFvN8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIO3e9UZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIO3e9UZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EAC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761529793;
	bh=JIfPJwuJr41cKqpyveUpl4G+0PmV8/uCnqyxQeifSxA=;
	h=To:Subject:From:Date:From;
	b=MIO3e9UZe/Tgfj3DCfjB8fupdx96pQdvP4uxLH8tv3g2++eUa0bDcH2KW1TZnoIdE
	 8B4g3w0N17x8zY5MJPbMU/Fdo86mFqS+u3uzsLEeDht0x5HEe8sI2FIgl9vZIR3StS
	 QtYl9aEPHv9xvNAq23sbHO3uXymOwRS5PVlmcixI169kJ5UddQ40KKnSTqohWdR0Hp
	 XrlGjyOJBjlOLCyQNOBo6sb42rnPQ5L8pyVzbfo7qjPgvw4MqfuD33X38RJTM3qbbs
	 mPp9h8D4tYGaoZr3nifY/zQZNCuHPVYo+1ZoKWXTmuwa9V5uw/9WAJPcZlaZhUte6n
	 eKTAKo/DYxZcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B9CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152979357.1277.15057034147978569694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0374b87ff39a113f44898c665d4a5f4afdc3466501ca2b92db7d6807c54071
Date: Mon, 27 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761529793
