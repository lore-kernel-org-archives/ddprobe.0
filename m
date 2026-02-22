Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD1C35B62F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771796094; cv=none; b=HQ1HbaKIote6Xa2kG+YHE6+JSMcQrmEdYm/PqroUtiBvcbL6IIOssTK6l4pyaCd9xS0nc0wh81Oxv2zipn2TGWYgOAwG7wLVH38I4cg2uzc28bMvcMx01y6iIOhP6+UqjWfwcTlQxrqGoqqfpnSc+sWQ5k5kDrP1L6wSM3Z4iIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771796094; c=relaxed/simple;
	bh=ssSaCotNBDOkl5vHEkz8jn4FXPoRnyvbHQcooAGu1RU=;
	h=To:Subject:From:Message-Id:Date; b=WgX3gvxs0apRbzAaiGRET2npB4h7rQbWlk+HWu565L72C4b0Zh48a0cx4fyLcFEBcGvc5SkkmE2lc0Vuazolp1c/ycvjsYoeHLva9bnV0XH1oPHwMx9T+XH0o3cvc8FUXDY7H5XqlzRwBDG9IyRryy3RF/XoV/ArAZUD1leMsrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVb8kECO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVb8kECO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A678BC19423
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771796093;
	bh=ssSaCotNBDOkl5vHEkz8jn4FXPoRnyvbHQcooAGu1RU=;
	h=To:Subject:From:Date:From;
	b=fVb8kECOxMAhF7KpskBsZcvXZ8qgcc4n0QMh5K97PmBfgTZsChXR7ZaWJ9N6UYDcr
	 MSEW0Ql0r1PWmsDswKR/7Ik/JjbGM1ovFJ/J+UWp7KTBuc9zCr1nyHokM9wISAB/Qg
	 b1qnlrr1Xxd/jFtRmvroleXezHApcGzz8Z+kz7QcCCAzN04+y4fGbpYupYVEQfQXxM
	 99R14Ml04mIkFUpIX33uMl6BJz2qz9xUdTzv3Dx6MX3W0frnjz/3NZiKBYcEtJNbEO
	 wNlPwJkwmcjXd95Cdq7ftOJjn6J07uM2oJoJkSZxbxzXNjD7vlSA5Pbw64pmjioc/A
	 mS+tw2rMt65iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9046BC636BF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179609358.5192.16121921313525179664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0012aa4745ea9f4dda9409fbe9cdeea41fc7e65f9b0748941c5eb5ac39f28834
Date: Sun, 22 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771796093
