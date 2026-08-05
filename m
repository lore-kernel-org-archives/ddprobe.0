Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED6030B529
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785953434; cv=none; b=PwL3HLNl6Si3baVu7Ivh4Q35+JfchmqNg61A9PzPkFsdPHiPVbSJS5v8nfwRWQUlTqG0bq55JnxiAD5JNso4RMvG3gPyi/Tsy/CfK5dvxy3AoJwEwUxc1uuX0UKkUKFc+T29XDpupeiN8ol7GvOnIniBQqoCOJdbv/nszzDtaj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785953434; c=relaxed/simple;
	bh=7ELX+XTIRj9bLRtjBwRJ3XHhARWi2Nc2PRqn9lt+nBc=;
	h=To:Subject:From:Message-Id:Date; b=fRWbNSrFdKekStXPfY2Z1mRC4u7bfrvZab8i+2cFN9CkTkyBrf3pU/umpzlh/0NZ3yW9ueRe0ni7ZahEDHmlJwVwVQ5V32NG85MlnP0DRt9gjMQRa7oc0UwfeDiBKy3LiVthXp8d/NuQD1dE1TQepCw7dnpFuRXPDBkXPPjJ8cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGUNlbO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGUNlbO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD971C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785953433;
	bh=7ELX+XTIRj9bLRtjBwRJ3XHhARWi2Nc2PRqn9lt+nBc=;
	h=To:Subject:From:Date:From;
	b=hGUNlbO0cwJUEbaicaKo2uNj7fUXL8EIH2uZ+eaxHllEqlViLaMD/+p9QcGE1ypNO
	 7PNGuQqPHUHi4UI6QHsJ9FSIikVwEynXT5uZ40oM1oN+NphT2gpeQR7tfB7ZL6272R
	 QCJz52B8zdcbAXAJWDepu8AlN7itaF6gcAk1PPbrGkdL60NNRYj2ms+qqtLqpCybOD
	 /A9pNQ6jICSNzEmBgK1rRpap9klvVNO/5B66kRcMI5G5JCRM4MfIQ/LRY2ATHSgaYt
	 gt5hsd5p78D6PIJSOMLCTCP6oGQ/wbChCf8vX/PmvsL84dFxaz1pQH8Vghw7AHrWgM
	 VD06hr8jqZu6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B863FC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595343370.28807.552995520682117524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8afc50e416262f2de456d34ace4e6164413d5d31649943a7d2787cacc8a4f7ea
Date: Wed, 05 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785953433
