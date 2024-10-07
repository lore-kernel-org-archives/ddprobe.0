Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDB718BC19
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728341754; cv=none; b=Es/sb9pO8Iun9Oby0FgZd66XGmCbI4EIdr7HVUl/EefvJU5jG3u4Qkha2oVG5DXCIG6lneAUUWRd9vTmSy5hZZSauu7O9t6c0odDtVyUU0cdtVUtKieaTJ+oMhY9XNbt/tK+X237tmg55LnFvo8pgaa5tWIGYyOKf0IlZeRsUx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728341754; c=relaxed/simple;
	bh=lmTLToD48juhvGnuFlP3cpAiN/+miAokmjjVaU8sSt8=;
	h=To:Subject:From:Message-Id:Date; b=piAu5vOUzNTBN7wEO4fBQafs2Q6QYyj9pJTjhIkT5hVK8HS0+8DQtYr/VRhX4V1ko8VQwX2XkSidbn7xynOvCfKk3jzTXXXOtK/+W948AwhQGmgQfHHPvF2LhvvwyGA4wKlj9giOOfVasaa0YTaQ0Bby5KBHOA8OVPs/dVe7lKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbUjd7L+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbUjd7L+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D42C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728341753;
	bh=lmTLToD48juhvGnuFlP3cpAiN/+miAokmjjVaU8sSt8=;
	h=To:Subject:From:Date:From;
	b=GbUjd7L+Ae2Hd5siZ27qPPr+rAP5WsxTXXOI/Xi5amb9LZfzcZB46sHYQJzx+mYXN
	 dNxtDYLKmq9WAhwXUzSqRudmrdozwIEJCcNkGYVFc3GnNp+VWCsB+pU0uIbOSR7SBT
	 ZJWj/Le8lBIEBMQXQANMh5pkpPT1ZzX7BLMMZHFA69xhQgplRSeYMA6CTcXWwDueol
	 GBQpckiZGfyv+baGsnKP3Rtd520XSczhRlX1xP+ImUSLamlwEcsJqpxDnqfeoic/Ey
	 Q+A5sOTjeXHs2r5BnZl1hTLUgXgt6INie7/7bE/r/VyIi207F3og++VnxHF4vutXfZ
	 tOzrhxMewCxQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91532CED247
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834175358.24469.7397131915402393213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d6821e5f3c8a2db4d653a3c7e318b1e679adfc715c1455d93b47954262a794
Date: Mon, 07 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728341753
