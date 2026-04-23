Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63CF391E73
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776971854; cv=none; b=ZbSFgxgst701WzamYueSxQ+rcSOzz6o/lfEgXEE1k3ylT3Mfrn5HpxiXb3GtIfMxuS1PKVLq5pr+ElN0+HnCA++9Sk1/7WBfsWzgToYY6n2YN8k2pTgndi5AyxF0d/s1kP/GsXWw71I9PtKtJ8N31NACRHYVMefie4Hw0MElTK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776971854; c=relaxed/simple;
	bh=/xJ+UDXatXeexw+D7ZwaOO2SYohUVKVWcoM2ZfV2HjU=;
	h=To:Subject:From:Message-Id:Date; b=oflNZAcJjRhluGhU2CDeGFYqMmbBHgFqtH3IdrJUjjn4UZ4hrDmbJ6tgNrcDfvLDhyCvpUNmgIXdTjXOuGV5qz73KOXJ35XEZZpSRSKM3iAE8y/js+d/Wr2HjMPMu6CLFX+MMXykIeYHLMdncxb8fkwf6q5KvOd6rAnR8Eh2m8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hefgLB+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hefgLB+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A01C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776971853;
	bh=/xJ+UDXatXeexw+D7ZwaOO2SYohUVKVWcoM2ZfV2HjU=;
	h=To:Subject:From:Date:From;
	b=hefgLB+VBilVDqCF4OFHjkh+eeZ3a1QShmn+n3WTQn7ap7Elso2R63RhEzvtL5jV2
	 IbXvQ9YENDzUowHX7VklYJ/S9L55bvx3ZGgeo4XAp5+9kRsQSES7dssapFSfnb4lD7
	 GGQOXT5HsE9QP71jbUkPrpilXpIYX99+DA1qC4DuRvDgl8lgAah4FYOt+d6wOkiwwJ
	 x+JoZTDWtSZOowtrz/65qFeLcz284tqpcatpY066oE7YjLgbq5eZ3x/jWyam4M90kA
	 BixH6woiqDItkU5suRY8lQPamI6BOTzh8V/8dF8HBW99GgF4+VmzSYwVSXsbhvBp1s
	 NFRncn+gsmXqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD21FDEE3F
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697185368.3061.15975269200237349104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3185933c2303ea340380cb3e334e9809e1938030bc6cfd2dc327e92d331b57c6
Date: Thu, 23 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776971853
