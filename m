Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EA61A9B2B
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745664594; cv=none; b=uLAJxY+F+GMs8lI/bbVLmlfwLGs5eTt2ZTtQUyXzaqrNt5tB8gxdxYtpIOjMXDDBrRbvQ7cwbdeIOUjST5ZYiaWgAZHZx+AsJGNo7ZC31ZApSqXkUTT3+K7gbhvuAN4wEfmft/IiartFKG7d9KOnBL4zaGoW4UxgLoW2pmYp/xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745664594; c=relaxed/simple;
	bh=B8ba5dyFE50y60FBm5lsODz0rkbgHmF+i0y7vTOhJBo=;
	h=To:Subject:From:Message-Id:Date; b=LF1B3ur6kMdIhYmAlDBaJc8lex0iY4nTxzs/s+72MPSAzPzGb9q0l9teaBM2zcReFy/KHIOuq9ppgZ0opIwqucWA1KTtK0ZepuoiVVDWT9FZTjyjzBnbSbFndfpDbr6ORqexhldB+sJXgiJzC3A75ogcEQAHCSvtJZDg3mvwMPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXVwtW8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXVwtW8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745664593;
	bh=B8ba5dyFE50y60FBm5lsODz0rkbgHmF+i0y7vTOhJBo=;
	h=To:Subject:From:Date:From;
	b=SXVwtW8hShjV0p1XOPmWnwTgprZeR3hAzNzj01gs/Ko4ApEmGc3ZdKE2SzHu+cnuR
	 FScCzpXuBf/IUD+0H40+sv3k++pRb/9WAF8MFAwhbDOIB2vj5/4dHes0IrE8bCzS78
	 XvFrfFqd9/0DVYBM+I4IZ8TQIsDembLURWWHILL6fgMYZs/TDdHLt7+hZ0rL3cZe23
	 hQsqoQvrsZ7ZcY8UzQOZnnpD0J6hWUW/qB1gi01GftsTTINTaCha/Qt67Q/QOrvQz1
	 tqbAYOQCYlIL6MIQH3NFtE8baMJi3eAVWou5oglViGWruv8ANrnYhNt00oXbgfxj89
	 xlYJ4LuGXBT0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD3C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566459357.7118.9969600705545821322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379071bc67169169b0cd38680068813d85a3e4d6827d0881a0a617d360c62b4a
Date: Sat, 26 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745664593
