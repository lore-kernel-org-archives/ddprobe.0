Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E32810F0
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786312834; cv=none; b=r4VboFszjiPHPsFTBmoHThF1USPiQRqFJ2bOTkkUABOBFnX2w+ji2I6XegltiMLPljzA92CxRqwIPhV74zzPY3kZfiKXgy+0VyFS6AROkMSpiMkze/vEJMEQwA//G5ADBtr27wWsvp1BG8xGOQ/yWtWJ9EC6U2SZDMMCVPw9j+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786312834; c=relaxed/simple;
	bh=GmzwEbkgzKBY0fwcpw1J1o3ls5lRwxTPqNL3s/oUgmQ=;
	h=To:Subject:From:Message-Id:Date; b=j4PS4n1RGepjXbmhLyKpapplaf7UGpa7Wi5ZWd3ASfkK4drTXrKsPiVjfXwPOEg/h81JMJu2RqxHsEgCEnPv6ytOVT98L/RHj5IkfM9tgWrn9C+F7EEeVyawYgmQrshJgylPlBwFsHFu4vyvivk5bA+sBTC8DLOsgjvMikrhuPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3dydJnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3dydJnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1C6C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786312833;
	bh=GmzwEbkgzKBY0fwcpw1J1o3ls5lRwxTPqNL3s/oUgmQ=;
	h=To:Subject:From:Date:From;
	b=q3dydJnppHlb3shHrDlOQsi5rPqWDong0+HIMimJ+IUeU0uWGYOrk9aOF1hUm3Gxf
	 c6mIwuV+8+Oy7jromBKw5MZPRa9z/HRpk+sDLADVRp3xMjPp843ymhItif2Xg7glTb
	 VrE7fQn+TC1WYD+qovSn6Ct6iQc71sZ10gMOUyYYyz5EQFqpfY+ZDFtOwmMXRo26MA
	 SdEH3e/i+PXQyBVWwMj04B2H9/LdEy1irhL0bVzGkjlD/6z2enKIRZ1cjX8/sVbNl7
	 gFa9qGELcGabfHe6HUeHb9di7BFf713v1c5tBcZmE3OrCTeTSP/xSONdX/MCfkkleR
	 jqRe30fYuETgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8688C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631283370.17665.5056089226702638181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b714cc8e337b30406708b73fab042f7fe5e82d72e1b8bf29ca1c45eb09220d
Date: Sun, 09 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786312833
