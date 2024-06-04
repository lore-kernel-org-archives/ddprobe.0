Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3760A1428E5
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717490123; cv=none; b=jj68PtLz6gt4EzQmWfFh6iyvZM2cL7dZI+gJKHEiX19f+NT+FiXsqU3AahQR70bCkL8wNmjzS1AYq/84MPjT8HAtOIIMVE57QgtHdrL5QIJ9nkwVH2d4Eo4/7iTo9GfCHXxrBVPEuuMVPUr5YW/L60hp/MJv9Vjkd82BSGh3idc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717490123; c=relaxed/simple;
	bh=qkl8kD0osCEVZEn9ZRfcA7Rvy00kikSLK6NfyBIVS2I=;
	h=To:Subject:From:Message-Id:Date; b=SOIHMC7BbIdY5khUOnjSjJxBYtu9/msdY4k8lPmEgL1ZYRcJaw5KEziAWVaKx+bhzPJcYcBqE6rLq+ypsfTkanrkOIFTuvEDxlxKP7/pUkvyRkhhn7B1Y0ZS655HQ/O38mHlyBd3YKIjgQBD5O7+E6mVPfxDXNvEIywy7B+xGCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aonw/s/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aonw/s/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B6AC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717490122;
	bh=qkl8kD0osCEVZEn9ZRfcA7Rvy00kikSLK6NfyBIVS2I=;
	h=To:Subject:From:Date:From;
	b=Aonw/s/PRXgZDs/OaSap/S/DkYZeQeR71c4PeQzJfzb7Pe+6MXyzRT3w/gSetAXpf
	 6y7Vga8W+nBVCiwttqvfexcn+Be9OwqtNJfyPUoWHA5UWOrJX2Eg4EDfnku6n2Gm+W
	 MVkr79RyvztntUHCqIf/kRyjyFI4sOV+q4dX/3CwLFJ7TbPHB6q2Q7Vh7YWsXYNUjx
	 2BQWWpWlsVErZOYPDjTEyXZ9X8JbfvXFftSA4f2CWrefYnApwUL1EIV/hoLT39gHl5
	 3RrgKkIACVhIKxxaXM1aDdw6PTv7+VUhGRWEmEYGGLU+9oWkgKgECzgKJCLsM6lucN
	 ACZu9+kmdcZJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC9FC25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749012277.29266.10717357412624046769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9614e12e9c57e0c4be9128d37d2c639b531b5ef711b593ae5fc474a54bbc796
Date: Tue, 04 Jun 2024 08:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717490122
