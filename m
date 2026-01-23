Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC71272E7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769189634; cv=none; b=eoc2GtD45ebyen0NJUUHbpYqSe3R7O1IuDqZG7vbC5kj8Fo/otdi4FKTVtwh9j3lscXZY57k2ePnDoI8SH3Uwn0yRWmqQO3VMDCoFS5OkUsfwHNhin20FRs5Nl5jahryMpA0z4VmIBTXn4xHQkDSwg2J4sQe9tWoSyX2E39zQn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769189634; c=relaxed/simple;
	bh=o9G95Jijj/zSJYwQRS3IqdKgZkhzQoDb/dSdO+UqhH0=;
	h=To:Subject:From:Message-Id:Date; b=PFVSjl99mPcEN1MTq7E/G16WdJ28ZUSqUZj59utH2lgEoE0KtxIUzOgyqvE1kImhkfbgG/wRblk3pMgO6ahDNz6sNXovhY73QDyMMLYRaXI+gfleQVBG8874bdaxLp3v/Cp1egzirTjXshHCuTFXC9hQALdgv/9rBk8b6rYkwm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qy6B4dP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qy6B4dP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB629C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769189633;
	bh=o9G95Jijj/zSJYwQRS3IqdKgZkhzQoDb/dSdO+UqhH0=;
	h=To:Subject:From:Date:From;
	b=qy6B4dP2jKUz2UQHaPcsnoys5bRoLscQlTOQ39Lw1uWDgY5xEX7oEWmnMUKXa1WkC
	 DfIZU4BWY4QgXDCH85CW5mdQqerL3HrQdZhbU/QIs4pY3CFz0zFTOh0VJiv+zs+foB
	 tN8GeunQefhLf+fUV7qjjo9GpOUcgB2TAiQL2LiUC0UEqul0KdZAkSQbzpsrUE0nXv
	 FnQ+sxakePG5rXjQjzXxlZ4Gf54XyqdI5y+HpLh1zqXoX67n19WL/VnONjt67IfEsR
	 LgsU+IzG1VC4drnhB3bPzJ7uhFMi80QM39YE9aaQSy+B/WnlmnXFoYqJjjiTa++5UL
	 aKBtW5mT2aVtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99056D77891
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918963359.25761.3798440020770393658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f0995cfd4103fbb2d2b3129585e795d70adc9890ecce9b310f6022434f0832
Date: Fri, 23 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769189633
