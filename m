Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5358F1EE7C2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744468794; cv=none; b=iR553yYsNda7ObmTLp0lz+noPqQ/jY+GI8lBuCVPVputCC/d7JnE6BTb7h0ZvcT1t7jFvt9RPIW05VTzKANMNUfrRHm/FXXgCDnozmmQZyOXFf2rQuOFe7Cz7dUiKVyyIItYbw6YgtDVciX5+Z4KR6MiNKiZX6A7Ly6yXDohe1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744468794; c=relaxed/simple;
	bh=a2lx0lg9VwT4Rz+aubEoYFuaXE1Oj0YdSGLAusD3OuQ=;
	h=To:Subject:From:Message-Id:Date; b=E2k4zd/i/ww2DOCTPUVIp8X5HCp+ZJQBUTRpIftXIVcVx46Rzy8o2M6/pF4uvaW0AwxaErZp5Qx+DUyiUgxMZl23NZOOcPAncMZVlshIgBQLz+nI08OS/w1F/7QosK0WqU7BXtOTvkdhsLfpYwUk3JTWnIUvWqKE0gPLjzV3nkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUXi9jjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUXi9jjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFFAC4CEE8
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744468793;
	bh=a2lx0lg9VwT4Rz+aubEoYFuaXE1Oj0YdSGLAusD3OuQ=;
	h=To:Subject:From:Date:From;
	b=ZUXi9jjMnXY7LAEYMjlpKRsHBFQl+zBUkxfMWTYhEDAEHBe6BkB0P0QCwHAMfUubJ
	 elNOY5Un+ZRqqrhlsBzmLuPddygq0ZXLLPNItaF69a+d7MxUgTGAczdXVnCW1kN00p
	 v+qzfrEyyv3MqJIEoJOA2oX1eVWlZOAw1A26aFvOK9DKZG0by9a7zTITy70hFTV+5y
	 Pd4Kty72YltrPnpZLUA6EEH7C1LGXuiN86+NBZ0rFtGyEE8YqM/Xwoc61J08uEu9SV
	 NN/aV0c5VsM8zCByN4NqDoNwoVF06dDZYuSSpnvtE3IUSS9Y4/jn8d//blPNJtjkRm
	 hQvHtyt6sg2hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9936EC369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446879361.3198.14325705041035828015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bb6545274c0a949549e613e6bddb07a93907cf85e2ca9b1943d837efb9da5a
Date: Sat, 12 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744468793
