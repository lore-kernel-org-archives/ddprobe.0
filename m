Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FDC23A6
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731456954; cv=none; b=D5bUsaYp/9gJW+tNyCdKjVmF/zr3Co2aLN8NpQxFA36vk9+MXkwYNViH+bVj8AFliAQlKqs0/tfaLrbcVmTAH2Q1Q9Dlmmpw0LHBQHrNRRpASgPejhNpeS0ArfCjhB85oNCsLindGYIy4a788J3Zewxq/gsfC2JoBS2g6IZJKVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731456954; c=relaxed/simple;
	bh=Zdou48oba4jQQ5yYszrSSKXq3KbMD9xHx7s24r1AsIo=;
	h=To:Subject:From:Message-Id:Date; b=NrKtPnuviF+8iEwua0JEWsmcgHIKJtBgvbnKFsj5XuzMegWgXkhO6zZd+CmAPtuzrST/HvhmSlNxm8u7YZzCMZz/FQivy0RdHdh1DE1oISaL/dMmUDrmYsy2VhqIXYSIf/lixgTkDgd0eMNcKINJ3IkZGYiuKB3huLUqXT5jMjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0hulFta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0hulFta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC563C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731456953;
	bh=Zdou48oba4jQQ5yYszrSSKXq3KbMD9xHx7s24r1AsIo=;
	h=To:Subject:From:Date:From;
	b=l0hulFtaxggWxQqkktO1327tRQwrulME8wFl242TDctdPR6a0GTSV0UcLBVHnbsl0
	 8CyACRDfUnofz/cYv8A7ejBj/3vRuB+Cgo9TSS8Ypj4rAYIgtqMiPdFpKnYTnzwYrg
	 k7TIdDj82+qlaBrGm/ewIqabB/y15VkBfyGloe1OPRQRkgcMYgATck+Xd9zGzoEbvm
	 fCciA+3Hs0lTLboxhGPmGrZQhX3hKLWmCArO3y011iTqplicrA5gnXOL5ZgXaxK16B
	 F98g/ySWTP21ILU/qGp27HzlAFSK2hnk4Uv337qPRbnZ7XhHSljGpeGDbqTL4AWEse
	 VN6UU6UjVXz6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0817D597B7
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173145695364.25575.1438504299660888695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4176bfe318aa0ed537b02b22f99dd5ba9c10d4326845b295dbe5a317cee3faf
Date: Wed, 13 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731456953
