Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F70B67A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728710154; cv=none; b=gruiTv7VA9vg3FCbyufblt6N24a/TGEhxqgngsBWdtYuTReFKG1BHJ0hRlCVDBQaciGjnReqhZv4N+VNw3BvKw3gS+wQj8iZvp2qJDZ8ZWcfLrgQQnD27Xyru7z126pw+hTyoCbDGSIBjgFoi8BDeZQtiIJRv29mGIDMlRChuwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728710154; c=relaxed/simple;
	bh=+YLLU+MaPF1M8szLYX5a8B9GKNTYIqFoUJpD70crIwU=;
	h=To:Subject:From:Message-Id:Date; b=IB5NtKdy+5JUmut8Xrmiejrc3m0ULkqULXzldI2QQ2dX9Dk5d1pJxwm2x85kkMB4K59oXHtvpXaa/wHUjQasMEQnObHbmRQowLDx0ysd3eF1FOI5nzfI8YwgyOxN6l44nluWF08/kdvZg9K3TL1oVtniK4hXf7jcyxFjLi/92S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3zbTUyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3zbTUyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B51C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728710153;
	bh=+YLLU+MaPF1M8szLYX5a8B9GKNTYIqFoUJpD70crIwU=;
	h=To:Subject:From:Date:From;
	b=d3zbTUyDVbo5GEwgW5XN8ff/92D40DkkDIRlvOw5w3F5SpThMp8NWQw/uHPYrBWRZ
	 MRCx6KXyocmKeRqAy2EO1rFLYRf2rIMOtvqFE7hAg7Lwk+DmAyc1zJd9Dd6vc+g1VK
	 R5eOXcDOM+e0hpb7/XQxPt2asyukvvZ8wrJp46sylEgVsCY8Xjp8YNaiBFx+8rod9I
	 oVmXgPGSzzJhYcMl7t/t/J34CJTSq+sh8/hPSBZQVbXtfgcW6lbspAeYt0WalpbRT2
	 UxpRLoG0huMV/tXGOq3fL0pxc08d15jXOfyZ2m9Bldy8BYfW084MKovPIBVLZC2M6v
	 GNF1eRm9TIelw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B167D1A435
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871015360.545.13543682514452484247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365f2d053a3c7a4f79729b048b60cdfd1c63b7114464aaa6aa2fe012ec424d91
Date: Sat, 12 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728710153
