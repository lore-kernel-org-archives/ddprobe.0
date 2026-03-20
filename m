Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1193F2DEA74
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773999294; cv=none; b=aunNcX1c832EBrRTEEehSxFeHljNvRqwDqiLfynpaDSWf2i1L8Zb+bYZw8yRz/w66MUn1kXwPgKOeg/lsiXhhsdyvLOJpGQk7bZTaEDxedy1YQIq6zDm2pFIdeJ/xLDK6PLPWrPfbYRt6FCybwqV1kUbm8Pd6ldBWk16ro/CgSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773999294; c=relaxed/simple;
	bh=uSZa6F/xUGYRcxrlXFcAXqqQqaDImLRQwwTRHkwziAc=;
	h=To:Subject:From:Message-Id:Date; b=n3aeqIP55IhHws//AAfiySPFDaAc9JVr+1l1fS+EgCQoKC26fKhkyYJEklMIhIwmJzjoVaQm8LMU1JmAJdoKz73Zuxgqdw/xdYMkLoOjzijp7ZtF8KRDyYP9YBYW1Ro7dtzu+AzxhuwZyP0+6slyXiEW1FZ+TBuzbyuiNd9cZww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+xGMuJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+xGMuJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC3EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773999293;
	bh=uSZa6F/xUGYRcxrlXFcAXqqQqaDImLRQwwTRHkwziAc=;
	h=To:Subject:From:Date:From;
	b=K+xGMuJUW4zxRKNbZlPKt0eDE9ldU5c9mdSmY8b0pQuq/we0ko50YAtyzkRDvKibq
	 1KxCW6FZLL2kcehNTm3I8Oj5sV0uGJSvF+XeemPZbfG9OFC2P+J7hEHiqxLX7S5z7C
	 KO4CWkg1/d6WeYGic/npZyj6QuqTfYheR0KE7SRafaAEcspBAk10FgygnEQEvnzpli
	 ikgp06DFkrZ6aozOh7hanateTGNmJXcQ8OojrRPDOZCOvcrwvCvJ6vpL94Vo2kXxmt
	 XXHrjSKnvmE1x6cz66HiYUtrjl3QY1a2YV5Lv7Dop6tdbUKiq8dl6OQq8NPcDEQUGI
	 byjh8ip0T65rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59B109193D
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399929357.9999.177173936674427312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693c18ed6b524570cb38e106fb51d8f2bdf5f4afedc52b4fc5beb8f50fd6ba77
Date: Fri, 20 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773999293
