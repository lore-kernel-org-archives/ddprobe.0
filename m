Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3141A680B
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789711234; cv=none; b=qa5pITlq5TdLTeq/cL/WyqOOlvskQASgdQuHLlDbDhl0L7BY/P7A4QQScl9W48rz0SnvjSwrL3xuWYrTyY9MEHesVD0Aj6H0AluR/4cAgMC9uMWX4b5z9DZUkTadAFFetkz6SXKOduIdSZmmmhTkCniu/4fZRvEBzxV83Z42pfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789711234; c=relaxed/simple;
	bh=n7Q7awzHz03Vf+iQz6q9xvLn/X4EoUbXq0qxyBEMdbI=;
	h=To:Subject:From:Message-Id:Date; b=U/UCdx015ub6XWOPJ54sDdkC8kzbNSW3QFid2ZWTjQA+nxWJ408M7Ky7Wnf/umnkrDQGcRN7GeX8JjEB3h5CwOVfBt58fz2DK5oOLHC9sbp36d/fjB6EifA5G55DKqaFe4mDd/Nc7RUPmffNRw+Nn0jyt7jPp0Kf9QHdwjMAZHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojLgud1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojLgud1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB8DC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789711233;
	bh=n7Q7awzHz03Vf+iQz6q9xvLn/X4EoUbXq0qxyBEMdbI=;
	h=To:Subject:From:Date:From;
	b=ojLgud1ZGqJFTG/Xx6Y7upWGsyra6UoODepiejSudkvkfswL855tnK6zkUFu6bwsg
	 0XQTYpWU5WUtg7Z42+fygyJfqtiqrgTJ5WB8xFzwc74KgcmcZBzwzFLIX5/vnISRQk
	 ROHc4BMuUZV/7mQPuFnLDnOkCBzGPMEmD8mLk+uhewmmUt5N3uHjtduhrrh+1hDNX+
	 AqtOq+SneQ+ud5O8YI/DkIpGwFN4pvcLwVKDhwDq2wIJ+qRF285pEp5u/8A/tAdSmI
	 9KJ3ub3eBF5gwPfP1IomYNymdmJ60N4bmzIoEKTeiR3Cb5bt50aHwBlCnbF4Ga53TF
	 Gz0j/iRYbYoBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A929CC982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971123368.11661.13146532696002557090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3c9673623d4752af31131708dfd5eb853319417a1651e58fb55a2679f97899
Date: Fri, 18 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789711233
