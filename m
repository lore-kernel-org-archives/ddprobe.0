Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71802309B2
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775527535; cv=none; b=XFbZKUvWUWBI2awmXe8OB9/oLjDDOC6/rSuct/fxGdPjNSE7N/UNy6jSHHfmG8uI8+7yOKFjCA81sDg+lrtcvOfH3iTfnaacHUq/QvEfwdUxvwqwoH2XvP23Jl8eLV7kPsC9ijgNGyTHbZQA4ApFskykT8FJhKyQrntMDFvbQrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775527535; c=relaxed/simple;
	bh=ZsgXLxY/ePDPpI7Erqo1NooLn1H4mP6mwnFqoA7u5Xs=;
	h=To:Subject:From:Message-Id:Date; b=MaRcXQyIj/e0zeFzXZsU4TuBJwxS/L6fZuYcFWiTuJvPhXW3ERfxqszH/EGAq5wcdIYj/aBe228S4QkUWT7rwRvX4lZHxI/8eCLhqsEv4rjngY1R0zBoyhAJthjFmFnXuKOT7QQJrL5NEVQwmBvXzhhvNbfKvPHVxrwYBrUVakQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I64+UedH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I64+UedH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C085AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775527534;
	bh=ZsgXLxY/ePDPpI7Erqo1NooLn1H4mP6mwnFqoA7u5Xs=;
	h=To:Subject:From:Date:From;
	b=I64+UedHNtMkxxQn/ZlR7kPyVjgZxKW5Y4Ft4vwBN5xUYKbWUEqbSPJgn4UcGQEgz
	 pE5icB1lwSGHUuj2s/X6zwPc26i97H0iS1r6FSTKhxM4MtHpUgX/4L9ECLpMklYE83
	 01UdypkfNLBQq1gAHx5Z/FdntnNBU9WquEUfI5a9Py5oyslGo/pDmzLgGNGmiqdPUR
	 gxZGzKpe+S5NSRf5tXXW/cu+ZMglIEkCTz0LgLtoxoGtgpsXXPf+tcM+Y9fUfmkG06
	 8TSlr9/V9p1cFPf3d0deLbpkDYWTe8P9nTdoyBXDR4S9NR6xTdzE6PTccwN3l209Vl
	 I3tGJLyDWNIEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8BFFB5173
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552753368.19772.12686221874754760415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded53ca11422dc37e37e7c96ada91fc2ae4a0d68c1da66546e719e91cbe5aaa0
Date: Tue, 07 Apr 2026 02:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775527533
