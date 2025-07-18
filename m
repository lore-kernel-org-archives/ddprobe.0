Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AC12DCBE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752848994; cv=none; b=K/mYBk9nZ9JT3IB6XW6ggjPulr8lapzfAL/DjlDxWzrjqIS4xa8oqj0+DM6FaiUSsKDLaYCgN1z+/t0xJzcPQaEtVfEDlWwUP/fUSlCmQIjeZEI8hwJrBGSD5yEG1kRHQOVG1Laq3CXtdZsB2rUWmJeQAnVShGWpNMs50E2gOMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752848994; c=relaxed/simple;
	bh=R62dAjOa5Vh68Zu5QV4/uKcN+R8H/UgMDVZ4e3BdT6Y=;
	h=To:Subject:From:Message-Id:Date; b=ZJlnGsEElETcN3ijIKhvYLW4WSEasmFHHL0qqOBi9akerfHz6XscZnJsUp3ioQ574T3Izl9XV6nBJ8YK+a97AVbnOm+4xmsFvcgKD3oB/OUoHbcSzJp3YCHIkQXSNco9OYQO6P9LS+inakiYbTjV+ZGqeThdYWue7xO9/ug8sDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMFYwDWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMFYwDWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99E5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752848993;
	bh=R62dAjOa5Vh68Zu5QV4/uKcN+R8H/UgMDVZ4e3BdT6Y=;
	h=To:Subject:From:Date:From;
	b=EMFYwDWx8CZX+riEfUP+iAkO7003bqxSYrtL0FYFYf93eNWM9hYf1L3nw+MMsMSB1
	 nCmZl2Od1bBgU0VfwEpRF/QBkeyrkOZVi734w10/EANMTFijifFutwMBdYWvJrn2Gd
	 JqdQzdEfyCPOQwdQ+cT43pTKJDMz3MH7FD8RA8j3RvuOqJDizjcSWmzmg3Ldy/Zlo+
	 0bwiRnBbDYPsts/SNJdAn9VzHzsuxUF7Vw/7N29d0EQNIJxsMFiR5wk67oIptOyKKP
	 XigU9GEqQsM/j2wAfcjHyt8CU2EEGPYjb7JtMlokGOYTpN+++lDAXt1tUkc+klU3tu
	 RuvKtMSDpjQfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960B7C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284899358.20386.8724468835170361953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8871f952ff1e7b6c3fdf278f063f32711e3eb9fdd9b422143ee08a23e50275
Date: Fri, 18 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752848993
