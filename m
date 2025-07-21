Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0CF28D8FD
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753094394; cv=none; b=iIPkz7wKhRL96fNgnE4ARN716oOfOsucSTPvfem6qDzZZ6fwaQ2KyUaf78r5bzGlXqoypwCMYAleUL8fN1lI5QETA4FuAc7LfEwCWuTMlUFZ0oMraQkxvnFStwUwBhvwmPsTDKnffKaFyNyYD1WnLrTG65Bvn905CXoqasdCxts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753094394; c=relaxed/simple;
	bh=9vIPUEZWAsiRazs9A4xERVSB0ukMu7rKwgzQY3sUpAw=;
	h=To:Subject:From:Message-Id:Date; b=rPcKMhiihOJK3uROVHz7F6oCH3+20F37w0Fe1tHja5+E4PdHi4NoH4SRMCVm6M9DBmF18hiXuSuSH4+nk7dlB0BHECmv8cza+f4SSSNsZ+1lB3wLaJE8+vyown/uNWXYdkbkZ6qbmXUCKypwt1ULVs+GNlQqHlkVqTSeWRP2UvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjeWlciG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjeWlciG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C62C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753094393;
	bh=9vIPUEZWAsiRazs9A4xERVSB0ukMu7rKwgzQY3sUpAw=;
	h=To:Subject:From:Date:From;
	b=LjeWlciGkgt4Ash5uFTCBP8yh7QjABMm3C83i0PJFdIB8b4smb9hSkfYpbIUff6AY
	 g7+HebpbEVt7IMe/8/vds4YINnxCCdeW85XyoMIwHXOi05O64BPHATyEVax8CriWTb
	 yCB9zIBZguRoplyCeM6klu5KWm6vyrEuLJ1yYvG2whO3HoDU12hmwM2zjx0D/TazGa
	 WSrsgZ0+n+1M7PLZsO2f29yGEVZo4zJF+xPRns4KG1hLEi348JsyjEd5w4tovFZhad
	 F5QlKsLsFGpahhgxs3ecAUdC7ydCmETtq0ZIm6fSO/cVQKbX8ZOc3mO+IpaermN3/b
	 QPMWmZol1ajiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91678C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309439357.18218.17247723838986745851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763e142185afa12e5e193d67d2bf4691094d84e086c641634ea68f42bb31f9d4
Date: Mon, 21 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753094393
