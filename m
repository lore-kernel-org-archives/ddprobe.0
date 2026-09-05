Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F227453A44
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788597634; cv=none; b=hEPd6w658+bY9DBtvzXAal5zCwfIKFC2/6cU9ywnSuOJcAeyk1HTM6G7rTLO6dyWLbk/LRHnHJgGtEwrkfXWNGm5BWG8SgWfyJhks2IpnPHtCR9ZuF6hVy3P8vCyWtvKKBddzAnl99LEmIIVl95NmurewRYE2BOVYPnPnTW9c9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788597634; c=relaxed/simple;
	bh=odWMgSjXdqrv4Qhg8aveE8lBXLPfplFsW5+8U8qrEFU=;
	h=To:Subject:From:Message-Id:Date; b=cDn/9K5GXTRpXZJS/utUplSFHzTiTYOjWrS+wQpaSywBTFqUhBx71Ts11SwmxKk03AKyD3Xx6jv5EYYUdSpoV398iGIVm0Rf076mPiimBZNk98LRMsBzK1p0OA5AZUOnfT7qE+YOE/7d87l2Bkb53dCj1xSAkOnosCZ4Gb/Cb/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ordUuFLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ordUuFLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1489C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788597633;
	bh=odWMgSjXdqrv4Qhg8aveE8lBXLPfplFsW5+8U8qrEFU=;
	h=To:Subject:From:Date:From;
	b=ordUuFLmIlsVEEEhylGaqwtWl929rjtzel37o3/gMfX87ZgcAEnIC4HI63CBcjXU1
	 8wsRPH5Plcw0OjxsksCFE84iDidlsvv5U7r5IqcF5KqEQuBUktFOjXNYv048D5tMom
	 j8xSIKn17NaHG7efgNKZjGmUKOXVR7/sjMNEdjf3qIej/C8pK5QPOC6VjAYIJsuust
	 532bz+Rbi5wRMheMJkpVCP352cfIEfhCetXs0eMMWaJTCXZOyLOhoPIuV55SpMthkx
	 haNt2i1wT+UgY0l9EPoYSn77+e4qEqzvA5muh5xTkruQBtnZ/ylW50XL/s5Wrer77Y
	 mwnOR0rGHhnlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0A0C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859763370.1960.15233833171081490519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c3f96541a31c3019710345f8b6fb2b7e2bf24a9aade8cdd681a97907c04008
Date: Sat, 05 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788597633
