Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1C93112DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762798194; cv=none; b=BNsoTDOKbV7xVuP3sQ4gPbOv7wSdhswJX3AOdAtIIqzAEXnjhcBgEUGseATMKCMy5qJWLByx9G6TH3emV0s/AjFF8c4i1slDSfDYbqI1vI+WfKTvfgUOsOS3ISHcaBDWB/O5GXRwYngpmlfyub7x4XbEJ3lWu+fYO6cKSB0WcIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762798194; c=relaxed/simple;
	bh=XcunJmj4cdTu0ZyEDDJA2nsfTEr3TC46JPbyq/md81w=;
	h=To:Subject:From:Message-Id:Date; b=eDfnqwKT3rtfoqtxKlOHYtMyUfoBfPs1igyjEsdODpkC4z5VopNflFOecIcgl1HYZ5dVldkTRGgJRxkVGBISpcNCjiLzYNaDrnl4rzWZgMmZ3Yvy0cS4QBhOqx++fPVWi2JVOll1/FaRk0My/sIitZ/BQaUQ0Wcvwj3w8jjQPpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSL3hvSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSL3hvSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A742FC116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762798193;
	bh=XcunJmj4cdTu0ZyEDDJA2nsfTEr3TC46JPbyq/md81w=;
	h=To:Subject:From:Date:From;
	b=SSL3hvSYMQRt27Ai3Na6Ao/UnQS/8zsmt4SVwkGx20cfr9sbmrVQil3C7Y5lryDFL
	 bTnqxCA4gnUSosxOFFa6LhUkPGb4ONZV0TPuiKFOn28wC53TJpu7XuZ5h/dP5MZ0Fi
	 K+IWsiXE85t5P17JP9JAAMecSKSGpvalPLbCrlmhsQ3I76uyADDPNclNovbgRq3Huf
	 fCypWWrf8DAisXRHoIsdo04YDL7ceXGva/whFnVc3XOg4T4owECtbKaCunYIsen5Cj
	 Q+rTNmFAt4PwIWZPO0Dq+hQXyK8oXp/5nA0tZuxMi4hv1vsKhgRWPj6dWmz0p9ydSh
	 g6EY/c2K3nbNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99678CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279819362.28745.15201808360109582494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad76d1ef86385be4698338d2dfb4a9234ecbeb2999fbbe3a16cae58eda7deed
Date: Mon, 10 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762798193
