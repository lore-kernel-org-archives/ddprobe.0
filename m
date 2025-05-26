Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9B71DFE12
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748247594; cv=none; b=EZwZzyrJp3Av6+mSzO8cmfT/Q4/Njc8OpZDLeySvTtBQTQ0E3LinI/0lMx9440heanW6rB4BmC51s8UdLpzEnLB7d+srQpIEXLYE8qcmvbQ3xF7Vd6//2gv04dq+w6IPEgiwTwFU11PyOSK7dkTbvB+UvOHkMFuR0eb6ndq7TwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748247594; c=relaxed/simple;
	bh=5LE0PJEMkIQoQdh/ODH62Bdt2dkeYD4/gw7Hyb0t6fY=;
	h=To:Subject:From:Message-Id:Date; b=g2/Sr1nbVMJl7JmLZ5JTsuSNfKdOIQasSNHpXNz7a5LUDBsuExken4SVJMBthNCxAArul9w2+/evWEd7ICDlrMIYdzrNaq7JT6GCsnmlJcL2nE8vyae7DH/xCz3tC9W/0EnxADRmcrLKcQnXKzBEkDIjdssGtF/anmghst9KiKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ianP3v28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ianP3v28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01B0C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748247593;
	bh=5LE0PJEMkIQoQdh/ODH62Bdt2dkeYD4/gw7Hyb0t6fY=;
	h=To:Subject:From:Date:From;
	b=ianP3v28lb0W2lSyUSmsPERhJcphWi5XL/uT5jv1vXCW9tC9oEkxh5dGHjA6/yPJ/
	 BKQpFi5uMKCwSiQLIYjVBE9h0d3BntXMvDWfakkecqkCZE/pezTBby2r8oSVzqCMHe
	 JhAnQ+bXO1jsPSVO0Bh0TDlir2Jhh769TbKdKoUSi846/Df6seyr3VnAVtz8KAZLOT
	 wJ33UJ8Xd6j8/RvNavX+VWXFq3oT5ScXyLgDe4BNxItNf0sYCOK2n2I8hELoxvaLad
	 O0ZqU9tmxlnk1Cj6w3AdUn5Z2T6BltmIMTjiejgtJ6bY8GRkwbBSdA4A635L2Tn0kO
	 gSCCy9MKr3i6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90108C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824759358.32168.16380306684065336719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ddc092c7ddbaecdf8930858daafd1d51140e52274f2feb56d1f50fe574b169
Date: Mon, 26 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748247593
