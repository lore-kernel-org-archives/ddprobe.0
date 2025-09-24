Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D76D8C11
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758676794; cv=none; b=i5MHeDlXt6Q1tpUq+SAW3aL3SZ/Ji3fRwZm2ib03gi1EZ1+sGKbz67ffD2nu15NpqWnJOiwgRQP6qO7lLbNocZrvrvmTtDi5bnhJCRzHNWfzeYwRYjSLAVwFeTg+6zxcnA0hkRqwbsOwou3mjnzgHGt+6EfprbWJ20tDOJ812fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758676794; c=relaxed/simple;
	bh=Ot2vYtFD8gdbqztdJg6/9gH2M7TQUxTA6DaKkzoKR4c=;
	h=To:Subject:From:Message-Id:Date; b=qhcEKhoq8r/nsdAVmM1C/7w1kMlnmjd5yxRrtyN7ob00sYB/p7r57PFf/8HOijW9Zz/D5TqMV2fbfamVmrCR1opZMbaooHH3KxaqW0Sm1wyc54T1Ivo/jBrGDZxEmxZM3Xhv5pIB4um7xGPXWEJua9hek+X2PtzuAOZf3q9x2DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJSAh6lU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJSAh6lU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2A0C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758676793;
	bh=Ot2vYtFD8gdbqztdJg6/9gH2M7TQUxTA6DaKkzoKR4c=;
	h=To:Subject:From:Date:From;
	b=tJSAh6lU5ZQEqm0JVyq/YfcSg2pH7EE5ruZAOqHit76I3/5dN/INbrZar5G4QJZ/j
	 oSYhVIoWu195WDTefk/HtZgdyxOGp+eSwSCjG3wRLycRY+IdD3XyKNgz4d+tPGAyqk
	 W29bG7VAgDAU6njEECjnf1y5klsbv9ELCkNt7m60qf0p4fxw9SFXvVKJpck1ECFDPV
	 wRxm15H+/d4eJ8gHHm2lwwcrE6l69oaqe5+PW8hc3sAWDWrjExV9zWUyCfEDc4wdbN
	 JeqWtdtFv2sY+oO9QeXDKdtbP4w0WrQDV7FsyzhQlkWINfYEhGZ+qaNeZG6mAhL9Zj
	 thTX7iNTzD2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D3CAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867679358.11973.15571423193492113612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8979013b8efe2b26cbcd5045f344665c6c4932d850914b32b441bf4cc35f584c
Date: Wed, 24 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758676793
