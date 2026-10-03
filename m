Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FC71C695
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791060034; cv=none; b=aMe96HP2pQDvhre90A50uuDf3lKxa+DA31/Km/heJVVwq5bNufIJD5Xn/Ckg83u6KnUSaHmM6Plwoc/zR4XX5CxTf+ZQjVWN/5YcH2E3cMofZr6H/rJA3InS92jup7ks7vh+UUv41Ra2KZi8Ha9naDGJF+0we3hogp7yfI3FpOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791060034; c=relaxed/simple;
	bh=zvJlZ3q1+CWbQv7MJS1pdIbK+qd1KEY6eJ+i/Og2drQ=;
	h=To:Subject:From:Message-Id:Date; b=psZEu7tyl598Bn+PVv2xeNQnYyJgTpaIqFu/ZdnLGzOFOHLz1xutQqQw72Lxuw+Fc9/F7EpWENCqoGSy0+/q548P2Q27jIpPy7lEjd6gbRIwsVAB6hSnn6wbjccqvHG95m9pi9+/LJzdfW3oxryt2YfRbbYfDrZ0PQWE7v2XQc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiwSSb3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiwSSb3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BBCC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791060033;
	bh=zvJlZ3q1+CWbQv7MJS1pdIbK+qd1KEY6eJ+i/Og2drQ=;
	h=To:Subject:From:Date:From;
	b=YiwSSb3K/yTmDZPWqoSjQvgKfli0OqwO3HPyNCK5IZ1ha+MOlKlxL/Nii8AHMv8/S
	 JmOMwR4LjhOYalecyFI4sGn9jV90/ydBHUoTZKgH9G3E8v7KP+nJgXtZ3IPHAWnG4m
	 tFlWzAy3Nt/nDABIS2ZNZ1zebyNzlfiHZGoEjENJlIxm8+BMD6z3ZKuFYYhK1zFSf7
	 3SDeDX7j9oxAvZrtsFHvI/AKF0275/uHPB2NxWwpBazX5V5/9ocdMU5ceIZhaQ15hm
	 MuiIKbSR+fau3WsWdwtxxQYoEgzPICSvixlm+XLTdM/TBDKhLWkdGvzrdUlDUUCX9j
	 6Hf0qJ8Gm3WKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B9BCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106003371.20491.1194134671664939055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003d459a28a6b41ff6fd4a8667d45418ad33d3f7e838dc0b894b3ff9b3d7a41e
Date: Sat, 03 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791060033
