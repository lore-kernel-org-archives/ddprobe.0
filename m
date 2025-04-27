Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269D48BE7
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745782794; cv=none; b=NnpOygmEuiM1eadkjKCDVRF9F/CY1OzIjbwqxn3+k7hX25KyOlk1ZSJuqx0mqNroU/Talw7X4X7rmIWstPaNBc5tG91yEt3+IAXQxQv+XdIufw4fa/xdkSK1krY3LqtIVpOvpNoo+RS9OKYXpbujZVAQLVj4uPc8Ks0O5n3gd/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745782794; c=relaxed/simple;
	bh=dNxVBufLChW3hz3WYS//mjYAY43GffL0AspqY9eR5EI=;
	h=To:Subject:From:Message-Id:Date; b=aqEOQmMeE45DRN4d3JUqT/80ysNx6hiyyHm4BZgVbIx7K9y5ePWGYexHl/Yye4Jr9DEUNrsAgh/qGbcLAU+4M7Gb45/Jhgv5F0vl4k4bXT/NO5pz4rckChhEcEx1agAPDOmR6zmG4joWh+VhCYAfXmvztCZg3IJzeUshsNiuH0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSO1Vtad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSO1Vtad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC2FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745782793;
	bh=dNxVBufLChW3hz3WYS//mjYAY43GffL0AspqY9eR5EI=;
	h=To:Subject:From:Date:From;
	b=NSO1Vtad7iqyiB7qv7NQRBSpfZi6EBQi6/dHkU0LtAUSoDMXWzEPsbbkw32ICxz2o
	 LI5oaxNa0nC2wWUxLhetLGiAXAkmfYjHbySR5KioEI+OH9ojPfPxRvdP61/zP1Mrmy
	 l4eqSk/3F7R7Z8kwA48EBqpeUnPlJD3gJ6OXVEb2Y6wMXavHE0RjANbe7wDA/RAE/8
	 6/nN9ty/XGbKwnz0j/vF8k2Bmnul4urJjGesTmfEegcfVDtdRswFLEfwSxBuVfmR39
	 zBtoGQSKv9EJPzf/5yISJdtknNWq6qaAGVJbZxgqwRSHxDMieE4q/gOWelofXIHafS
	 lFCPUHrL7rgZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B5C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578279357.3206.9331671953896293789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157e1ffee3416e17af368f1cc04a89000430ab3190f813939fc6c19772fa18ee
Date: Sun, 27 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745782793
