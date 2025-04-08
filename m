Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422612C9A
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744141794; cv=none; b=Y53VYN6g7RNPSm3LJUsCGlJpkXv/o42/rjwiB5KjL/pXs+GfLzeLcpi97Z1drH6p6SqOvstjM12bt+yT8iTA7+R9vMJPAwlL/ITJRFTQVg0/vkTEQTw5xKF3BvLVc3+w6HHCm3/9rUkFYSLsFxxiHisd7XPZLecjdN0xDQ1NqJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744141794; c=relaxed/simple;
	bh=ybG9ImLFLS8cApD1WAo8nQvccxsA1OALsztm5QkofpA=;
	h=To:Subject:From:Message-Id:Date; b=NnpORbVOIo3wNpW7Kf1ilVRpwgLZq/vEoQ1bKt3Rfd6mSCs0HA3qWxkq1Xbf4px8IFFFIEhvhyq/KTzZV7uZ+NsX9n69HV32T3/JNs2pXcY4DGM2o7wI8kRa+y9W9Ol1kmJhmwDbwzj8F+lGjgtXS9PyqYCPjwOYFupI5no8ZoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=li24aTVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="li24aTVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD15AC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744141793;
	bh=ybG9ImLFLS8cApD1WAo8nQvccxsA1OALsztm5QkofpA=;
	h=To:Subject:From:Date:From;
	b=li24aTVwK3RbSJ9Tf5YgNVcAf/NjdIw30OmuAToVwF2+vVYilbG2qgiYGkphKUzts
	 i5F2olrFPeSm0oqKmdkcyHLAXoX8EwFpVN7N/7Z6Lb6eRck5E3uzq6fJPihrEZEhpY
	 IVmzBoy12qyjgWT6R7q6Bi644SB575RT7sYtquU8Vx2gBtxf7AWIyIqqdiaQdQkLtk
	 vwtOprS+Dc5Xnt/NIBnc+P3GTxyFk+CPk+SoGcZ6gANXFiNuLW5H5eIjDM08E7gFvi
	 T0XUsS5Mp0ZK/4zJ3VyyfcVhtBF+oUGH4UicrKA/L9TJ80U2LsuuthAgC1HgOtASIW
	 ic/AubhDI05VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932BCC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414179359.14778.16514143671919687222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c72943cbc15e53e96f343a4761e0cfd640b9ba8e918765a5795930875dcb5e
Date: Tue, 08 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744141793
