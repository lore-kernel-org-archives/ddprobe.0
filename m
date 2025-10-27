Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DA82E7BCA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761567594; cv=none; b=gU8jMIhsIY1AifbJCOY9QJO9QhfbHLbgcM10vP6lGqawD3q9KUjkxzwm/Fex5jxajwmdYRDS59zSXrWnS8EGc5/WPztwuPoaOFpx+GunzGikBuT3xvNdRX8SFbPSYp4Her66lx7YDEHDVhbvOStIBI2psM9KbLI1HxWmNbRsDbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761567594; c=relaxed/simple;
	bh=t/6RXlDQkmseu8c1cu9+DGd7txKReg4Juba2lPa5/FQ=;
	h=To:Subject:From:Message-Id:Date; b=o5tZ23v21HIYgs7ch87gi94SmJq2uD8bK76QSH9NEtLojghireYLBMbrWE6AD7wOaGkDEP9xVWWDXZ47E0vlOu/7v0lq3Fxh9iwHJ80MKK2WBnc3sIWpUSN6dXr172Itm+YNpRiBYolAdpEYdMFeYRQKF6MRB8c9U6eeHV8b2QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgpldIdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgpldIdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F885C4CEFF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761567593;
	bh=t/6RXlDQkmseu8c1cu9+DGd7txKReg4Juba2lPa5/FQ=;
	h=To:Subject:From:Date:From;
	b=cgpldIdZtpSzzR6nELA4Mm5uI+tRHQ+XOXxRY1lkw8liOtpJakDDcW7XGSnt0PiHX
	 GggvLyEzcCnKJ/RDKMJAr98rujqwYYfBsTwfNdJH5Pg+uzhIgHZrqpriHjgZqWEb3p
	 A7Y21pxcsDPXNtrGeNu1tt7HkPXZGd4TMySeiEbdIf32rNar9TCTZ/5EfeFdjVqVaW
	 7n/KJafzQyuh//eT+AgDJMCCqx4BMgDy0ceg6IJBCr+ZlFMO41kFsL60DDpb6QVDX1
	 uaT9QJYsRU8lAG6fnQJjFgBVtN4mLQA3lZTMuSeuUhsON5OpiuzEvqZLVvYo1PW/SX
	 3PqJXjc/Ss1Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90314CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156759358.21514.15913060656234058051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569edb169412be9f95a77421bbf7175b502db93d6878cf5544a7cab972fc2575
Date: Mon, 27 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761567593
