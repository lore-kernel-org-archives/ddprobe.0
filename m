Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1F513C67E
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730546754; cv=none; b=qVX4hSWpU22mDpD8WFxf6Muu6yAwp2amgN7qSK6AHxH/RUG39sz54WCwb4P6iseomfYvGGrJrAyr2sFpBjjrMBY2ywD8hqpQLMxWjACdUs5xCy8BtY7sSvRiZnnA6C7ZD70OO7iGLYBeePjbb1gCv//dZPFMmPv9l/hTQ/eRmIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730546754; c=relaxed/simple;
	bh=p8Hhsdh3b3qrm6v2HamsDHQBFF+3ix8+Ky63wYg58cQ=;
	h=To:Subject:From:Message-Id:Date; b=NCsdxjeJVP2/BUPnrar/tVaPVfBqhCP3+n5Z/Q0TD55cgVlRuGpsSPAsD10z8m3ASNRCEnSh+YjFQaPxwQrqUejTlNc+KFh0u2qX9FtwfNvsfbUY+jxpFi/HKFo2yk93SY3l5EeYB3/A5ZSzhOAXg13V7JCkUvfxdjH5AII1OY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJrF0TA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJrF0TA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4AAC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730546753;
	bh=p8Hhsdh3b3qrm6v2HamsDHQBFF+3ix8+Ky63wYg58cQ=;
	h=To:Subject:From:Date:From;
	b=gJrF0TA61brvvF5UuMViOUpLlqe2fVKYy22qqXABHWACvcbwEaTuzijIDlfKhJg7s
	 XaMno+Q+LDPm63iTI2kzPqE1599uels1ox558kiKYqi+6uIV0Royhx6hFnY5b426a9
	 WzYvA27Zqk+2lfLKg1vOBTT2EnZf8G2iCotyxqnsDxlnC8P2FTuW+RJRD3d6LFnFuj
	 MvWCL8h4JkdHvHBDSwgrGCm7I4AZRsc4OoUySNqYUHU47E+8QvxiEq+uwUMhERh8IV
	 gagvx8pKk/XM1D8vLLhanD5KpfGA8TKN/YeNxaOSGBk2NYQBl1Ny1AMT6zxFFI2Q3U
	 tsq8MItlHz2OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974FAE677F5
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173054675361.6808.1208771383019915894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29dc812f3f34fa800cbb9e92bd7a69a6b264920a3f51f30d02ebf233920b94b1
Date: Sat, 02 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730546753
