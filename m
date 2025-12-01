Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE178488
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764573174; cv=none; b=A72wqQsBjUNTFYNx7zIFiIHeNzEMjbxtokELL/L4TTksON71Y+zds5MYU+z4AGxMxeBK3gDW1pFv0iAqhnTbfvTLIOlx/ArRe0FFtVq6f4JWplBv6wjcnsxxsDIKJ+Fa4NUdEICPTUeZtzXQTf7GOKu+5Xc9t7X57ma4hw4/lek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764573174; c=relaxed/simple;
	bh=Yid51VinQMjz9vRXbOAhqQ2D4wM2kHHo6oJILnuawGA=;
	h=To:Subject:From:Message-Id:Date; b=ltvxHKv6JG6i8L3HSljjC/RW5r1ziuVxZbPanCNxeZzIoxqOF6xsFTZLekfx8zHExqo6FZm0qsWau0or9CdqMi235l+5iaeEnjrAJDf0KuG+tz0YkKO6+fS3+jpsmnqUKKg//zYThNz+MuP15LzZzLKu6kTysCbWkr/gjBzGxTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/zKu7UY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/zKu7UY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A288DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764573173;
	bh=Yid51VinQMjz9vRXbOAhqQ2D4wM2kHHo6oJILnuawGA=;
	h=To:Subject:From:Date:From;
	b=U/zKu7UYQZRSn6x5dWAWIgImKo3C++Fv4NqGIo/eB8fbuW16eOF4oAUK1dqO/XwiV
	 ojWHd2FR6LLmnHJctJS8fheFxTre1cHYX2qCCeo8/Ijl/+KCX96eC8YDodK7SH9hVN
	 uo4CGhABTlqYrRzALK9BEufr7spiIATjsTmVACVE+m5wMIsG9qRXQcChLuQxfw3/bR
	 q4cm0CE//wpZ1xSoAHSsgZDcMMuauACnTUtfJt6fQ40FjfIjarxQVAx2ln4xsrL/ba
	 dRdYz08a3HTxXxQ6/9CvFAhjTglBYetBDdU0WdpyqLfTL+9l0zpp2AkkZbGr8xyf6W
	 CAu9+Jnixhqtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90693D116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457317358.10662.7930205997227307057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0b18cbe4ea81c2a0866753ec43ab694b9ecd10c8cd96d48961266eb2826b1b
Date: Mon, 01 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764573173
