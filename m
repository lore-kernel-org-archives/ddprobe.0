Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACCD2D592C
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790122834; cv=none; b=GdF2JMWfub901p4KOy9phhTtPeVxgki84XW9KWc97IlkBUyyiqzI4+hYGICbm7bnEnZWP5XEkDbxK82mDWfYt2Fw03skuT3tU3DUsos6xZOWe8oa6aQ3NF7afpT5QAlCQZ8AxczoDRviWDYacvGAduR25ge8UjDIxJMBqX9utoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790122834; c=relaxed/simple;
	bh=kuwsl5DUpBLKKWlIG2LaO2tUGNpjxXNDYO4bMAgZLFk=;
	h=To:Subject:From:Message-Id:Date; b=pzH1ERITJEi2BkpLx89UatpSkfYzc7ETkhVtXem/dNXK/3V41CgtWZaPW0MbP9p2Sr4NBLB4K7CCYc9epy1T/dpYbR+dQKwusUmQ1nZtrTrOujyK4xu1vvtJ0RkN3DX5yZKJuWEL4VHUcifzHYzPBYr2n3R8Zc03TDjewf+70s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSX7Nf0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSX7Nf0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8CFC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790122833;
	bh=kuwsl5DUpBLKKWlIG2LaO2tUGNpjxXNDYO4bMAgZLFk=;
	h=To:Subject:From:Date:From;
	b=OSX7Nf0GcuVP4bMLDoNiZsBBCXoB1P35tGEejfn6ZbaPOVMHwwwIZcZ0hpZfz0S5L
	 YN4By+XDmd/7PEkgk6UUxB+/Vsd9F5gn3AcsuQnEO/Iidb6N+yF/BNCXWh7YB7pX+1
	 SnKhb72liEodAns4c7Pp/gnC21FPmaoOY/9FzrMaNfsLGIjyegj+cTFw/WPo65QPQ6
	 66JQ4DAwulQjsOGK5U79Xdc0F4CzLde2zj9W82clANB8l2k+vW3YNplOZP/KrIAEhq
	 zSfYsLJ4btd/2xrVOs6mPcpJQKzUnYuB+Yt7VxfIOpARLKVsM0907XvAu2Q30JiLRH
	 X5L2CRmxufZcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B69C982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012283370.21760.7769046715677354626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0697f8b60440815e8ef183df74ee12bd4084419f4bfed9067134a1568da539
Date: Wed, 23 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790122833
