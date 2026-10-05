Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C36E25B09E
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791174034; cv=none; b=oQQh2brGWjTcD/6P3lsDerGJLQgU8uVKcI9P4TrxMIjJ9V0ucN9ld0RsXJ1c6iO3+33EUtKSJy997hQXr5edPDrDnM8jGwDKylmFM7+q6dcuLctAv5FNPf2lVIP6pXAm5W/9ERwE9ID6n6rXjJIxVHwDWiMnY3Begn9RFUYt7Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791174034; c=relaxed/simple;
	bh=HzkRW47bAqNCS3zti0eyNiajUWGRAUuitzYQEKEUacw=;
	h=To:Subject:From:Message-Id:Date; b=AGwWFN8V2WvsIoyh6FFCLhbXcI8Y+8Y1t/3h5P9NeNNMKqoaoXGdVZ6tUEmv184MiiNJVX1iVj7YT3gRlF/k948cYjYW9Huwbr1DAi6bsugYth3ZFLdIQ8ekkB8joB4zx3SdJc6+y0uTWYq6Gce0dB14vD1a9vqZOh0eXVng1iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnQPR/4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnQPR/4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E182DC4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791174033;
	bh=HzkRW47bAqNCS3zti0eyNiajUWGRAUuitzYQEKEUacw=;
	h=To:Subject:From:Date:From;
	b=HnQPR/4nz/wCKyudFnLFWNCZbKXFOqcTrl4VhDv5M3v4NS42t2csbUIJGWmzP6AVk
	 KnrdRL53IfHAXO5KMkOaUrU+wtoY5jInBw7zP+pjslB9USnVHYxJSAWrEOpawOuIlm
	 ARDg34frZVFZQdTmXTnqOnjpoZSFj0jz6t6GI7KE7KkBKhG/pHhZ8pem5RoKckOtLl
	 gJzM4JXs6Oj8CkVvV+QkWmE7MdF3L6oN2rKCeZyi6myrVjnE4I9bHhIDCmUcx6KmQU
	 smSZiCuNWkTs/4KvtLNBxvwgRYKNjGsL1QK50Rz8diSScyncSviTMOTQUEdYejRITm
	 PIBJX8EBQJetA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A1ECA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117403373.4990.4408398055576599988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55312e2249582f912cf12f31eaa686fddf0963a4b3165f0ceaea480f5237974b
Date: Mon, 05 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791174033
