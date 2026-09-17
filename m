Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B944E3235
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789660236; cv=none; b=QnztXg0wqf37JtQsLYZuHHzZipANoxb9Lk8bXei5e/zt6EFRpAbsqnmSPGayMyUjJtok2FJhyFBa2oS9HhW25E32Z4js6s981syzwB+X4TZPvxDy5zJomTGBWhjdHDmDakBUWaXxPzqGkAMK3dBIrR3FWKbudIqRuU8nvY+TigI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789660236; c=relaxed/simple;
	bh=YnHIrgCwRcmbS02Lxb8YmvLQXYM4lDPOCM2yIJZw8vI=;
	h=To:Subject:From:Message-Id:Date; b=AXXpYlc+cuTcJCO18l9JG9Xf6LkizV2FdDlhjxeDE8Rgvc4PsJKQ+rjstSJfLNLwwpCWWl14YHtqlNY6Mr8lyseCOprz1oV5yT9rx9CHRk2QeAq6c7bD5v+qnmDcBECxB9JV6WNebAeFWXKyXJdLizKxDwcNEThpyku1MQJHpus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6P59X0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6P59X0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C3FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789660233;
	bh=YnHIrgCwRcmbS02Lxb8YmvLQXYM4lDPOCM2yIJZw8vI=;
	h=To:Subject:From:Date:From;
	b=l6P59X0/jHfdgNsyZT6k7CqLRFebn6gOzV4ykxGBvzf7Mfr2vR42zQBh1rpl8NPW5
	 +LeIlfon4tew5Gf5uaKyivWv3yJ0//NVO+UNoNdsVxL5W+NVxp6FgGdzMvKZ+K+QDy
	 eddswNF0fimGHW1oCQcFlQw5VRZqSMJy3pNl9E9AfgFaDHMzQHnVgEmqqQ4fu1Bw/M
	 tyMbtVam8BA94q8Q4gMOFMOAjF6GnZxgxEXvVGT8oHnYuCJHL6/3Pw7WMPIkc7T4+e
	 EwyP1GBf0fcxlN4TQBqfeoxS2ZxobiiN9aWEQBT0eccvwBnSmswLaXDIYkojYTBeRf
	 NOyuz0uWlpHSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2959C982D9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966023372.29165.1368902319538471706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c56184e9bf4fe1c93baf5b3cbf9b21367693c5108d2c0f61cad1900e64b2be0
Date: Thu, 17 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789660233
