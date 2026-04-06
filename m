Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C8333A9F3
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775491534; cv=none; b=FTbPaNFS22lltW4rTjW2hQnk1oyzt5M+sLo7rILwNUUHaH8rl7qoocytUBKrFEiwlqvwkvvb0FohUcm02gCQ6JTVgNfe4b1nM8IyeRWXAmKF6luEkWn3kvKUxFkeuGkQEkY5T8KXjOULwo3V9xJvmcjEwea+v6JWglRwsU3HRyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775491534; c=relaxed/simple;
	bh=JlvCx4sBAs/cY/gMWFb7k+BkU9aIcCgAh60F2G3rBaY=;
	h=To:Subject:From:Message-Id:Date; b=jMBhNI5x8wW+91v9WHlEEcbTj3d0rkNmU4IhzauD/DWsVRoj9kOE6bSE30kQCl/1jLy33trk4KiLuQAaXkvrRbjVqmE071V1qfXp8S8qpXnzfOO6v3ZlrgIvxq9ED8rI+SPn4xJ9xzT/nnmwuRM198vTdajPz21LElODC5wLKj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgXx25X6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgXx25X6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FFDC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775491533;
	bh=JlvCx4sBAs/cY/gMWFb7k+BkU9aIcCgAh60F2G3rBaY=;
	h=To:Subject:From:Date:From;
	b=PgXx25X68ZCBT4pSaOKi6BHRPHRTWxWkzSRBcZbrfnrYpqLq86ZBbu3g1AKDA8UFD
	 aRmVSuRdmk77RceM6iwu1ZSKcBi/5n7WdiZtqaYZtZ4PPncdgkAtQyy3ONO1qjieBS
	 eEJNqHGZAkHpdIWD1wJf1CVkMBJH/nZ27JZT1Vhxeg5uzvcTdYLKbaUjAr4TB7n5J6
	 VwWMgmZhambiG4/EGMcirs7yKPThGWSL8pfoAsLJv2he3BrJFu+nQAjoviELNMo5dH
	 vcK0hMxV3us9UbMNHSZQaF4QyOvsI1hurphYVncmr8Q6MHw8/DV8yImHHrPjD3asD1
	 S2lBY2YEhHRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC67AF46C4E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549153369.1050.10324994653636686435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9333d8ae05087029fa4b61904f027badf7bacbf5c57d4a7e180269471c51f6b9
Date: Mon, 06 Apr 2026 16:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775491533
