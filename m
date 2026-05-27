Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C57122CBE6
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779843154; cv=none; b=lOcInXe35ka5PnqpL4aP1LfdXfjIZY3msCGpjcC0T9MfUrjCgEOqupEQFVgAGP4YdbEoA8ccr44nrnoXPjbiZuljozkZfs+H9MkVQAqjidYGG6l/ANbI3y7o+Q66bwQwBmskD7K0nYh7MdZxIF4yic5yN6nOnGZeyzAbQKuOmHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779843154; c=relaxed/simple;
	bh=PxriBLUzFIwu0jcgKXRhjLsHjGs7KUGoY0C6apL2hBw=;
	h=To:Subject:From:Message-Id:Date; b=DIQubxV4br4zbN2YXFWFOz0NjGgTlzQU/jmPxqMK/pqvFN4caBKmjH6G0fCPeQTu+1Kc0nWBB+3zUXrQU3rIMfkMV3QJJiGVPmjQSclWms6O34L+VPlFreLCdGRJFi8F8Uu5cJBBrcrziN+9oT7UcUHG7ua2sxp507kDIIiq1HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mI7D3Q1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mI7D3Q1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CFEC2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779843153;
	bh=PxriBLUzFIwu0jcgKXRhjLsHjGs7KUGoY0C6apL2hBw=;
	h=To:Subject:From:Date:From;
	b=mI7D3Q1hI7FmW/0A7b6ieQd61gSIEqawQmBk2XiQ4pvFLHvzuUAuF8ZfT8r1l+XZQ
	 rzyYBBjqn8uHNaHGKhgQNJQcSvTxrubMiKRdB9blYviIjYLUPvWQSMn/aoimseBQK8
	 C+Tqx6D3gEIeeHZ1crZEpIQYLF41i89+eI29LnYDGMIMK3+25+6HJgOe3FVHPk9PJr
	 rdZqHvcgPBvMncSQ8Z3f3EGTwnVM00CZ+zBLywwH7G9lVr7YUUwVyhJTTY1WweVUcM
	 xMGikopTFGQf6dUdle5TDkjTJXr+9Sq03zIieU945ShXuuc45D+i/WAe5KJJd/H74C
	 DgKpOzYxA3RrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE5BCD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984315369.10053.5936719740392541556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b6d86948f70cb3f14ef3fed49c26b9b56a13f8de59c62350df408af2636c425
Date: Wed, 27 May 2026 00:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779843153
