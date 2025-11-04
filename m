Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF82522FDFF
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762292393; cv=none; b=TCtf/r+cfNZnpkZ9SWrNRv2EZsDXNHRU0uZhrkisvmCMgzuQ+5Qu3HgNvCyQyMUhzYT+czTCkfLMRJ6iiCwHJoBnuQXbeRKJJZY32yUZfJpzRPYg4RSTeM1t8irjTqdmenp1xyK1LEBgSxR/0oFoA739u0BimKWQq5vWoy/suJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762292393; c=relaxed/simple;
	bh=a++yktm2J3capISX7E384Of0SiOybPb9GEBBtIvbuZ4=;
	h=To:Subject:From:Message-Id:Date; b=Akg2zSCOc0EzfCtJUdhexV6DeiOX9wsFXeE9wBMfeAUaEm3swAKKEZd4FD1xDSMobhhJbXXZU2AL4mlIUTz9mnQgivbJ/oZ0olPdZU/1R3L0j4yV0XVZ7yvl+jrVOLKuMhf0gqJuUN1fZ68b5oRr/mqGtIrCGRRQZNTYEMJ/A/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zr9l1VjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zr9l1VjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A426FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762292393;
	bh=a++yktm2J3capISX7E384Of0SiOybPb9GEBBtIvbuZ4=;
	h=To:Subject:From:Date:From;
	b=Zr9l1VjVKp69w2Cb+LmNNRWA6jxpBb9W1wABSTg+7qfziLYyqWwzQUjil+auPtqTu
	 /kjRaaq8V3FeulSMVV3CBlLt/8kzU50a+sLj12tgIOcmrxmQXQNi1RunCZyXLTTpZ3
	 a+J92ycQpPNJcSWeG2QwhXriMo8cFDwzRp/X/H/EnHeKdYHzExqNipQwtUNus6fnxK
	 oRRpbmatEU0edOTYB8DkLRBo/dX0ePqyPyQvISDxaYE4QrAD5NcwaBkPgchaps+Z+M
	 ubrqV5fl3MdR8ktYCdOzvckWnGkHUFclE3mzheWhn9vCHvmeSVfJ+VIpHnbon5GgXm
	 LclQM5rmNvWQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97042CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229239358.27748.3481676302218568118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f309dc7a61926adf08694f09531eeafc248d5ee1265b1c55f31a6c928d20ca
Date: Tue, 04 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762292393
