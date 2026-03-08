Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102581531C1
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772945094; cv=none; b=B8FA00HzIfjW7Fq7rs2xLy8EZlJ6EUaqZSzYgEvbmfSVdTaXjDtXNCA+zkJ4S7nXzjtVHft2vPWtFo6qUgDf2jgocz2jU/wjMvLS5svvTt5px6+Li7ay1LvLwSENPwv/yOQYAMammhc4PShkF3igKU5DDRtAmcqSf+DhZsA6X4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772945094; c=relaxed/simple;
	bh=+ELw0nrVTyJjuA8P52FqIGpZZI6JV8sxG93gPXrrguU=;
	h=To:Subject:From:Message-Id:Date; b=KkmRI84JyJulXG5rw64iCEBsIMbCT/0lDMQcINrxf/KfwN3ol1HlQihI7mL0uDx7rdNcMB7PdEZfWEB60MAUaOfgdvrHVeGodKQA3vDqHXWpw9fdudbZv5Y7hIWeE+bbCFuDSjbxkbsrfRrWkNBrfQaIWAj4qMQ0VNr0ckzRas0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhkfYYbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhkfYYbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF9C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772945093;
	bh=+ELw0nrVTyJjuA8P52FqIGpZZI6JV8sxG93gPXrrguU=;
	h=To:Subject:From:Date:From;
	b=ZhkfYYbwmddctq3l4CqfhQaUeN34WM9UVgyTW+/WA5m4Y/zGulH5PE5RyTmkh05ma
	 cnSp/BHMj+gEEJFqZJoB9cbCsCY2KLMDNQsdIFLzA95CDPAjS6GvJOSaXYzL/9wIeG
	 29okUDgGW0tpXHDrO9ohYev6M3zbI8XKkJGJd3k9OirbjC+DKoSNCktH3M28fUAy0g
	 ZnRp688uphFY9XT3v/cFzsG1GMM+Rozn/YCs3kAjxa18it4mHFt9bX+a+FzgDFtx0o
	 CtAfpOghDTPQqu9+P4yTqaLywrK649gPk5xV66MEgPz55XL0RVt0I0dPOJuO4P1wvq
	 IWSteg/l0Po5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A6EF5512F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294509357.30927.5837427858477194369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af8dd184402ebe8f63e26eb93ce810bb9c76594189dab2cf4c654e3741e9673
Date: Sun, 08 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772945093
