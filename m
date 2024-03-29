Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC4B10942
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 06:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711693698; cv=none; b=L9ON9tFPDgIMaKIMpqEDNi9Xu0Vd+nQLs4LINMSxAb+dU4vvme77xVjZs3myEyRs33fi69Yl1Pffl8EwRAP/uMczdz+9jMZ2OtoKeNEhylxajjUsfYxHWexM0p9JSjYYT8oWtEhKz4evI6o+d+GjNzS5v+2FMvh8u3WbIBL4bRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711693698; c=relaxed/simple;
	bh=CBy3N04AeKWrb2GjEKA7/k6KaJcEQHqPbMwIuhSyfrU=;
	h=To:Subject:From:Message-Id:Date; b=iWLL6cTl8zvbgurEZ6A3fuW24X6J3SmlM1zbHpUWkZmav/iJ0nt/VrQ7SK3En2sFLSfptBPZXK6Ic1L1zCdJA1RDglOpgDPKcSd+4NQ3W1mfq2Yu5UfAFJEkTM2/4f8VcSlGzdGvWTkc2UXd6pcbWkbIEKduep9TYlQRsI9H2FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qY7p8Y7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qY7p8Y7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8383FC433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711693697;
	bh=CBy3N04AeKWrb2GjEKA7/k6KaJcEQHqPbMwIuhSyfrU=;
	h=To:Subject:From:Date:From;
	b=qY7p8Y7NvYiNjKp31VAxU2IlXri9euypTtBDq9tm8JHBXiox70OPvWkUvxBRKfhOe
	 pV+dPMlopho53x7oKiMbqsookQ36GJQ/MNz1Bx7e890B7kyDNRAYueXq+s7LSbxf8D
	 7LmKSrmxCfQzcFj5WINCYPwlH3S8tm1MUwi9D7t/7oVMCxOOY1b9EQEmBullSdynXm
	 4V6+TqwdEBAUpxAxHnS+fDr/3wiTIbOMPGlIJGi63/D+cXA+gh5h4XAHjBwi+7ShmD
	 kldFJWWF6iwsRo9CMZ3Svs2cOkkVVwGv4Byy/lyU/EbTZKrrkAJZLApWbhgQRJHgkF
	 pQ4SJ7yj2YJvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70EA7CD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171169369645.23040.4886459748495924785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5813dfbf94b2ec11f35a096d7d3c7b6c38b3a6a0950f87b52fd299e1650e29ed
Date: Fri, 29 Mar 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711693696
