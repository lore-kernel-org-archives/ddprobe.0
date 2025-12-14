Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2302A21C160
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765736574; cv=none; b=Y9XPGZhMk3dBzPeB1zhBJ5KTd/R/hlpiqVr3jyFA39gIhCUFE4253LTKSovE5Z5ry075X2lHaRmMB8DcX69bS3GosFlM69N6NnKNGulRZ1zYrgeq2B67Tqi6jKcawwz/UaEn58kw+50gUbfzng904hmDb6dAn5CkKHS5bYUrI3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765736574; c=relaxed/simple;
	bh=kAYMDkUNCC9t5Rsq6/S8OdgVc9+pCdC6hdPn1eLaWGc=;
	h=To:Subject:From:Message-Id:Date; b=qGAOkRAvsIyPpi/IBShnCe3xb/Uz2uTgYdBt81Y0I2DfpmIb1p6l8fFSaDbldr3GTfdEzIkoE72sr+lD37JLCc/EvH2YK4xIZ2lPUsNA1mb3aSV4K/2nBcFAyLl6pDifs0UNy5MlIUWSslB3zOonTm9tPFa0WlY3dAntscqF0JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t24oINnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t24oINnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3ADC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765736573;
	bh=kAYMDkUNCC9t5Rsq6/S8OdgVc9+pCdC6hdPn1eLaWGc=;
	h=To:Subject:From:Date:From;
	b=t24oINnOGbcMdNrVxcHObrdomLAktFdulkH8qhghypyCBn0z1bcX3kE2xCEwFFt8M
	 6dSVcJFWKuP+Rlr2N2UD6nXu0ziiJU6pqGm8xaB8OJSTt3VTX3xNcbGcTYNZ+KsAjG
	 5bs1i2vA7ylsXK/HTK42b/uRROKJCLB5ZNTMc5x0jI4dLm4YDG9w0BbwmXBAR+tDga
	 1tuLhDJHeQNHuLm/ZqcV1pmm+MvZJM7QjcoI6dfwguigyeYgU1w4nFIglGfg2qhhl7
	 OWGthR6ZSk8+cepnG0WXIMtkKDnc2pj/w/QoUnpzGWdVJsdVIS6lwAb4Ecld6A5zYq
	 ZXXvTJawKQezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9456DD5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573657359.18353.14571857299643867961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba72bf23d93f314555d986b1af40bbb6278694bee930b969ef6fb1b877edef9
Date: Sun, 14 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765736573
