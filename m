Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594CD1714CF
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733336154; cv=none; b=uPLUUXiAQsjmwaMrcEbs/5X7XwcRjSekx89Vc+Zxo39XcnejLDPmi8myg1e1gyoMGYZ/1Acbnmx2txaovbNQeEuvljnnK2nf2F06mkKat1xHrRrihBPVaJXxPaq43KhBR3z9A9/xenfOWVtsCd84cij8EHcjgzTQtEXSIBhpLww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733336154; c=relaxed/simple;
	bh=5CQAgInzYlsdRGatA60DPHkEdc9u9eN4DCKk0J69/y0=;
	h=To:Subject:From:Message-Id:Date; b=uZOaDNYq9TKZ5wp/8R5UdB8EMBHBdaQDcr4yQuuvauyw5wi4WZqHfiTI1ASVMinMsnRthzo8DWlzjTHU3lGcKfKDnvFHrxGxEcs5B9Tpx71csBhdk7yLwDuoDhhb+PhWxgFVJ2+3N9Z/5kgq1W27klqZmZO6mTS0RmirrGATBjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSEGEslv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSEGEslv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF24FC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733336153;
	bh=5CQAgInzYlsdRGatA60DPHkEdc9u9eN4DCKk0J69/y0=;
	h=To:Subject:From:Date:From;
	b=nSEGEslvZ2hm76d4K1NxvYPSymURHGw8RFgREjQ02eWfu2NY7nCV3JtNvuOEMl4co
	 Fs2uCdY2dhQ0MG/fB6Y6qtsBXDKQWtttQgrwGOhA0iwBecbPNgeiJ8iKMjp9dG/fPW
	 QQVMOir+acNXmQe50VLQdBgwZ6az/1BVDdwc9q4K6rqOKBK7bi3ajPgEsugtTXIpFO
	 9LlRNxk4RiItfGUdg8S3TFlWd07uW7lPPVFMv79bL3LvtbdyEqfWs6W8+NCwJiEcow
	 iuYWm8b6kzcvhzFRF1qK3fJtE7MmVazE3+ywGKebvoOcMhEBl51N/SacNQqqLXgbEW
	 bh3GLertsCg3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78DAE7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173333615367.9604.4281764044811208579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e97a578601c641a089c5ef4bfcd6ac6aa096b9f0cebf70709a58c7d1d0d1483
Date: Wed, 04 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733336153
