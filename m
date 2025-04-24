Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFFA27BF9A
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745508594; cv=none; b=BQIgo9ZXcwyLwvYhoWgKyGrB+HN0q/ZxvltJCRA47ReFJ7wLx1dND3VbgjzsuFALQDR5pDuu1ULU8CqoeJqI44r9gUbLg0jsEXtuYVtlhnq1ny4DwxZruRu6ibT8vTZ7Sko7NqXZEdpSIuvjOPlyvKWZNf2BvrUMRftoR9U0QtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745508594; c=relaxed/simple;
	bh=xG3/l1gmqqtCh9IYK9kZECEZBb9dQLZzYfoq3/z4A5I=;
	h=To:Subject:From:Message-Id:Date; b=ZGeyO0XOEG/a00Sat/MhVAaqKlgSg7/nsRm8PsDHS5RHHuNbyYvggffo7E3nVmBBjm9ANooXdJlfSaH4/LOjAlF9Xw7ZNd2gspgweEbz+UyTdK43Ua9OnA7qdi0S/PDY8tzwCkPcWZ6yCzFob+VlD2CEuJ7+IJ+U4Df/kf4Lcso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Urq9SXG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Urq9SXG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1BFC4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745508593;
	bh=xG3/l1gmqqtCh9IYK9kZECEZBb9dQLZzYfoq3/z4A5I=;
	h=To:Subject:From:Date:From;
	b=Urq9SXG4W1jcMXW4QQ0TAeL8X82fWAH6DYI2rJ1lyk8SERs4HTUfJsMKCGy0KOD3Y
	 0rGqC74kI6EV/Hp3dQa3zTjMghA8FbUXucq9vUkcBLh1Ed3bC8pKsz+GrBT6UdrOnQ
	 SFo1vLV03YfSprq/GajXFq+dhBCZrGKtpAsG7lhmOiNY7Wi6jn/ur3SO61Zf5ujiPq
	 sMl/rOa8GegHrvlXxQaTogmId2gDU/cVDubvfYOSMbHQ8gwcJHMui8MXxbw6KQS+WA
	 nzC9b2QUu0ojrijSSzPENu2rJLmf+U1+66K41+oh71YsUZrFpc7bIwLGgaC9wGzfZp
	 vBHlq1WSKCFCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95378C369DC
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550859360.31172.1699489419319999190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba51ae36117d42a1b45ff2fe509204b385fced28e509954a48a0395eb37c608a
Date: Thu, 24 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745508593
