Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201A513A3F7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761044994; cv=none; b=q0/WgEN2a3TtZyqgHJ9nPLQ++5MNNjRP8tGPjLtHYlHngLae9Cdo+Fi3tPRYDA5HauBY3XlYb4SxXjr3qNTeWvfVX95DXsKUdUnfbvqd2aPyEJa+VJmFMmgbOIdMglkNLRPEGAlVqruPxNTs6LKKLlNmY4tSqoMZHUbeLulLLKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761044994; c=relaxed/simple;
	bh=NPzim5tNa3Yo/MMAjBY/Gkc71lKqMuDtxBitE4OzZIM=;
	h=To:Subject:From:Message-Id:Date; b=ZzDZLI0p7GMCw+eiEGxD1t4x9q5G94k9+Nn6TtEcu4fC/M+32jIGd+piXH6Hn0F7c+hLNx7r5B+mQ5bNPJQQKevGKxRmDsbHhwsL9SFRxSMpP2+1ML9WAbeBTQSAZs9h3KoSMnCIAhCBYxgaKoWwSd9XgZjYZhDIqU6SUUzlDk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJfavMfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJfavMfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09BCC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761044993;
	bh=NPzim5tNa3Yo/MMAjBY/Gkc71lKqMuDtxBitE4OzZIM=;
	h=To:Subject:From:Date:From;
	b=QJfavMfQtJWW8NX0DS1PayTbIKXQ3RfXmSkR37Io4sgItWgpH/h3EfxUaOvtXHOJA
	 wvFrP/IWYe1FqiNPMQZd1uvzgJVtMrG5kO3ekhZlak3KC3aTs1FE4QFofTjlJLQegz
	 4CnzwZY4keOWCsd8kW0cI+84s/kn9dII7StJSdZQv0ETck0Aw4AoSXOyh6I5DD1IpH
	 qUH9vC7mk5SAv9XQU/Y1C8oAZuSTthbY/x2+h9u8UVchm4lO4I/PNgvs0fHRbBF3g0
	 bIJqwHVeXX5JEa0dHkcZZc5hGqOr3LsF4jTg8/NgNqqT/XzR7L7kiUAZ9LckcNJLG2
	 3ecgHFcjJNL8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907CCCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104499358.14165.4342775666424669582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9099ba3a423466ac0896f724988f24e85b3a52e3e8d187fedd1f5f7862d525
Date: Tue, 21 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761044993
