Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321A026E71B
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751375394; cv=none; b=TYIkjnoqIDhe9rQyuUdyd1cWw2jw5ApthUQj4TVCFCk+s4we+rF1470ljkIf5IVq8wjH9QAyey5yrVpH6NHrNdWpQ9MQvpMCEl0eQVk8Q0uTCz75g3wWgtygoGWsmA2J72wkB0vF5V14YwCjj6fUdU8MV48h2laNNZ3byWYFXy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751375394; c=relaxed/simple;
	bh=Lj8Q52SXFQteKiqpKCi5pZ/lVJOytj130BapUOzOTqE=;
	h=To:Subject:From:Message-Id:Date; b=McG+/aESjXWLHR6CAyxe0DP6vA81ZhtH/H3bnAdghPiUJr/J+CsQW3GgRb318sp+of149vEbtdUPdtXQpWr3VT0j5Cs4R6fS/dSO4cWc7gzs7iMVPMP0XeJS/jCazUrxviyzcd68gM3HdnKJWs4f5rmAtNCqfgIT2jYCQp6D2pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmHhHHW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmHhHHW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA39C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751375393;
	bh=Lj8Q52SXFQteKiqpKCi5pZ/lVJOytj130BapUOzOTqE=;
	h=To:Subject:From:Date:From;
	b=mmHhHHW4CbedZHUOw7hIdyGus/dCg2qp0+Hv0dHSTVvc+eoGM+yJ3SQZhNkn41jmK
	 Y6UV0CWGIr6vb54NxkvLWt62alTtNdldfQmZEDXytotYg8HUBaMm2+Z3Z0NT+2wb0y
	 fUc4y0eYL3KBzV1FP8dOmP005dTxIxKidFz9wtqdlO0cqY4n9SbzHExsOUi8Nqjizx
	 fwChk8YfTyVOYs0J+MMNn3rMXIfD6Rr+6z0x+7CgUDTUk3CQdmfo6nr+hVlodOLLg+
	 a/WCd2I+LSooHM/WcDYizWV+eIz9yLTZvSDWapXeUHGjlmkIzp0tgLYwwIRZxVivUp
	 UtclNg00B7j0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E5C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137539358.21389.12705817327027764676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ffe0c3c847001b3f7aba5fa3988ced232efc6b1769db67c9541cc948fdc65ae
Date: Tue, 01 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751375393
