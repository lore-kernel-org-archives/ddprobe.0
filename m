Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481444A29
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739406536; cv=none; b=gJnHLluc0aHgGwoqnhd72+YRVffCWiuiQO2o8e1rIGHb2xEonQ8cZ2yNq2wwp1frmMjMtRFEDuvX6rl4kUlHWp1CROF51G79L0NFKkssvnUngBsrmIz0hlQmyhBKYc8klWLDgOAWuBnx3qsX+bhyODF5M/OJkPkdjqJIbJNz18o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739406536; c=relaxed/simple;
	bh=mcRJjeOeI6iCJK9b6roE7+ZbjdGesknAxg98kAUhKqI=;
	h=To:Subject:From:Message-Id:Date; b=rfnZliWKJT6tgLbNBsHeP57Qtp9+RaOvFRj6zRpOLgBDVSz2WaJyW9DyOVqASZzvEGcWQgyiqwhKWia5hKPepc7ZtRa27355/dhYEvrPRetOz4qwg9DPejEJmHBnixJ234gSPp56vtJHuklSQixaMU4y0TxRSYUjwk+6URtJeCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKNaeNm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKNaeNm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52E6C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739406533;
	bh=mcRJjeOeI6iCJK9b6roE7+ZbjdGesknAxg98kAUhKqI=;
	h=To:Subject:From:Date:From;
	b=iKNaeNm1//rZRV9gP6ua/3qp724A9gHSd0MObepUSKvvEAQhDxZWx5dBPg8idqUX6
	 0iiowZjMmUMVLRmZeeYxFRjmnNV118LUpX/lwFM+FfBEB3koK4VZHo1MsrPkq7brcg
	 01lLVxA6szJqPNaw2/mmX2Nx/piVTQpgaL8GpGPf6QK8iEIBvie6dEkwZ4kd8rXAJa
	 s5aCrgIOrwRQ7HgNh1Ctp0PExDpAJPtp5fympw3mTrnW71VzxgC95hlLPL7qpyTW6l
	 jNm3FYK1tKm85XdEBO0QanLKWcViVgMu1/kTlH/IPjBvxbiAr8HD65/o8uHq6Txgue
	 xWg+WHLPQf+lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34FCC02198
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173940653364.5053.13466497601786999328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdf1aa0efa16e9bf05c2034e7ea0cd3defc127c146a82b380293f3e341ea260
Date: Thu, 13 Feb 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739406533
