Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E84A38C2D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789725034; cv=none; b=ruhsdGgO+8qKBTXF+QfGk9jT2bxbj6ZiJ6Uelq3d7hYYaTsChSvRLIzFLvemIyI0n7LDuBknEHssPyPi/xqAO6wBwW/B8p7hPRVwXb+BQm6R8TzI0aMqqXcxUwAndZqYd+Kf8OqsD3HpW0EtrzO09+iKhSrQ1m2FGuv4pIAx0UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789725034; c=relaxed/simple;
	bh=fximfngjBRFO4jmZ+zHIiJ8kKBTqgKzp50AX8UwUjuw=;
	h=To:Subject:From:Message-Id:Date; b=MBN9jmklFqfr06FJ1b6o0gEi6KsehXj52W6jq6TMuB1VZp9XAwz7fqFFdkIB072x1xIs+rn9OORiaOdXWgBrjpqIRqg6GFyqtRMQzJZJ415sGYjeGaieyjDg3UfgWD/DLBMjZ7Iwsjymh/XafWPQudN2WVgBdZyk9wKcMKmxvV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJ28a2cN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJ28a2cN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD93C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789725033;
	bh=fximfngjBRFO4jmZ+zHIiJ8kKBTqgKzp50AX8UwUjuw=;
	h=To:Subject:From:Date:From;
	b=HJ28a2cNVac4jxtSrjqv4ICXSs1CkqHTjbJI0esixf1NY+cuXPSNoKEvXBWRAqKhp
	 nYjanE+Vh6G3HliHqD4tJMzrbFQV0+drovHFyyleOLFXoKgnAhYERC9sgdPkXgxosB
	 zGXf2uBtoU2+F9+NpbRJvbApRkdWQnXgPte8FmXksZJMf+ETcITZHED5floELBJjbZ
	 1LougpgxdNMGuXRvIkcIPCkHQftF62lqB1RmrgrsgC6tl9CbO4eNOgb9gWd/9PgpEH
	 MtYNglgNmRObido96OcNolidaPtYzDbkIR6c3tUykyAWpDjrrXRjvuDX1Rpz/t1TxM
	 4LSE4qwk3ExpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82F0C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972503374.9216.10900302712641966389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae7472b01826e3052266baffc8a33dc44d639892a6b2d8c8d55a65a2382e686
Date: Fri, 18 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789725033
