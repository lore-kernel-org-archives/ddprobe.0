Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420551862
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782519514; cv=none; b=sQGCiqS/1IbEckoICWXXUlMjbdukEZHWoPWwsIZHjQM0d0PPNGdXxSCENwFtkIyeKgOd8k7Q5KejQf911AhaXMTX5UWeSSHNw6LFw3WM7THpsHWHd0MsdCYC/pRSec8GdWR4upN4WmutIvniiNvkM72Wb8xTbx+PKWKggwGq11k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782519514; c=relaxed/simple;
	bh=FDJ8bsrvivSBUAMXUFvq8OA9CT+t2dRVxdGPO+1W6CU=;
	h=To:Subject:From:Message-Id:Date; b=taf5fxqiOyhIQ52H1nIEPoAAtvsEG+LJijXLnfnSbRu+TxioNVE3pLQVKQKFBqEFyZFo0SCVvpIG8yfsbFBD0vftlxParwoT7cm0Yrydzkljv4hy9U2m8WqFGeM6ss2SIyEuHsSG6wSDtt4UJHbfmdpKh8buhc6A1AjzqDxMg2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okxIu7Dv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okxIu7Dv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C23C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782519513;
	bh=FDJ8bsrvivSBUAMXUFvq8OA9CT+t2dRVxdGPO+1W6CU=;
	h=To:Subject:From:Date:From;
	b=okxIu7Dvs3c/YwZPrg6C92WXJYqR00oOn/IztZQHze+qk/2vJ44d9UCBbe8v9YmDo
	 8yHA3KlYdUoWoBDHAnNkEI/ab+aIMhCotepA9QtpmlHt+lAs9rJxXzARMiLM4dRepC
	 FMb7odP50SXtRlT9O3oMzdsIZ6YdOLYQ8wUs6GsKPTktuSQHO2lOK8inKOvacldz6q
	 9XGC7EXA8koqOdMTiZ6gHgMwoQsPUW4+WE/d60zXFzYo1lHSwMYgNHWg7OqbjdPzni
	 k8I+9RsNhEv60Bd6Pu2lfoseko6/8onnU2CsIiNrHNz/cEr4BdAZYrJ+2iBuEIDwQH
	 /nEjSUBerwXZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A930BC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251951368.9346.4386396803145805521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64dedf57a8a5db6c71c595776c978bc94e61d2b3b1d411faf5985f06e431f6f
Date: Sat, 27 Jun 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782519513
