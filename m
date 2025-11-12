Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1936D1482F2
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762919394; cv=none; b=SzkXhvn+uA1wW8mxlPJZOW/ooSSI43dG2OLhgbIjsWYwD59M1PJxmwbOzRG/g/IJpEFWdOOC2WmFUI+o1vQj1N8X5TeUgpjS0RX3j6yWf/XrTuKAddd3mSekw9cYVdbGprmQG5xPJz1FFu523bz/gN8hzLitYH40cF6fYa2klhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762919394; c=relaxed/simple;
	bh=saO1EW30SB1JKMYriigtypIkf/hcULSaKGSewCQuuiY=;
	h=To:Subject:From:Message-Id:Date; b=gzYAk44An8OJW1222P0xLhmH4xHZWqBsFK32gtND8YX+tTntuN+bj9GB4UfRxL32MSd6QB1pUdbu55SzFE7yUbXRTcNMl3G6Q59fOQzS84iNCj7fq6RdqEQDM5pv9oE6t57Oo0qz7zmhBDbHoaKDuM0SYw8Dag4k746Do07UVZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU5tKQj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU5tKQj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B4C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762919393;
	bh=saO1EW30SB1JKMYriigtypIkf/hcULSaKGSewCQuuiY=;
	h=To:Subject:From:Date:From;
	b=bU5tKQj+YHxQTBolqkEzf1lMIIMP5LrfXQTQ6ZZGraeVcaJTLqzkzR5Ok0HnRydO2
	 jWDSy8DFdDhWBbYSmka0J4FvFhI+vc9fBJXdQTrHzzKubewmJWUlnpHsWlrlrota9o
	 +FPYKJ3sVpEdG42CP2STx+neb/elFB4NgV9QJjmjxK0nkhfbOcV0m+5JoWHLxGz66l
	 P7abCVZgX+WK6yvu+52J4KLEQgneYTRnHE5aP7teM2ZcCwSjyFzty6P/cun8qb3K6g
	 OZ7mPhgAHCUM+2pETKAjiOqhnQEoMaRQHh0ng9XXslTwLEoh7ZKa4FT7rMjvumEmBT
	 4xOmHfrBC705Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A70CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291939358.10192.1466574131079178508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6edcc2c9ce55f5a4b24bd7e3b960c31a9b918fabc022c61a51196f43fa65e87
Date: Wed, 12 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762919393
