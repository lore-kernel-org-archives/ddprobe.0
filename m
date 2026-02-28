Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B8C2652B0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772279694; cv=none; b=dp684zG5vgQnG7+VEAOXtNeRJV+9VqDUe1whqhZLIinFH1PNVeFdFIuRLXB5Uaz/QCHLx3EDNsc/j0tXC917yf+5x8aVFiSTLmApened5QtMWd+RnbCjz+dIbdYfORif8pEdhno8hRfN/RNj0yZTzTOSbx6EpbWDUIr197h7waM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772279694; c=relaxed/simple;
	bh=I+/hzcuKAZB0GN2B7yAwVEuwCkcypTZTjPkvPglhEPc=;
	h=To:Subject:From:Message-Id:Date; b=J3Wpz21Jd9zh8NyJXA5j1N0cdoObhCxaHMj+Lu5/m1uCJE2atu5UwyHbwWHmLcfEq6Pt4t2S72r/UrQV6Hk2kEucYUlM6CLG91IFjoJYc3hCxGwtqvlzVWAjmR1pUOxrw1IzxGgOswNBrNhq72zwY6mRN3vTi1pjf+gaGyzYqu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikluMUzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikluMUzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E0EC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772279693;
	bh=I+/hzcuKAZB0GN2B7yAwVEuwCkcypTZTjPkvPglhEPc=;
	h=To:Subject:From:Date:From;
	b=ikluMUzJLXamj3YPOeUxI8fUPB/LrRkj/mPHWQ6Vvi3kuB05BivzIe/7PIXvwFi1X
	 oYcv23ldoUw/J6fD7cZr7OWrnjAmhTxfbj6FoFZeMsQERrS9bNe24ubTeic7dYnLfL
	 Yt+51NvPCk4euIukS2IEpDGEq0tr/DtrnnpCsQt9EXUT+q4M7A9ZfLn+U1VdwSW1tp
	 0nz38jooKg8qsLkb9/j9WFwyqtEyavtZfI6ypPSgIyaG6x/1+81P60r9V6i0ZNmfkT
	 iXUZBUZop7p6mZNztcgvDDvxslBkIWrWTVGnSr92k61O5MMQb+stY1yAylmU1HA/y2
	 XeMUjMu7Oz9pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962FDFEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227969358.6261.2108679906141358211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1421ab5d91cabe9781254289a8aaa2d86546d2c7e7c096404a00c2060d2581
Date: Sat, 28 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772279693
