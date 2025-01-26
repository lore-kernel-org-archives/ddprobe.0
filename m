Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6ED13D8A4
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737878154; cv=none; b=Et2vLlwColr7Kkell5RawJXnqpEzcYaf0reAiDCdOhxL5N+uq90hyFIMPd8MAGwWGYKCNuLon6cixgxKA0a30W9T/Nu9rWxvvGd7jwfiQhODUna1UzNm4XBMx9rX0Thgenn5yFy+xeQcOwNj8HK+MuU63z5gpNOObWLgyzbUfRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737878154; c=relaxed/simple;
	bh=UpSGEqVIIZiyzXaQ1qTwUmPnaRqRRc6UwOzZH+FIpoA=;
	h=To:Subject:From:Message-Id:Date; b=RILTsjkn3BwlWoZrkooDe/J96V/fiRyy9Jb3flRLuWy6UhhgAF9l1eu3h80LaylaXCen3Y5JkW4Qld74/5DDQ9Y70+ixdBWWFgTA18Khxj3gSgQ8FcVi5z/CpIwEUCQO7OBpNfT3JcK01+dZVu3jvMP07p3W5ISZR9MXnZfrDhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaK+fCwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaK+fCwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D85C4CEE1
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737878153;
	bh=UpSGEqVIIZiyzXaQ1qTwUmPnaRqRRc6UwOzZH+FIpoA=;
	h=To:Subject:From:Date:From;
	b=jaK+fCwCAgy7RW4AlyyxtYi+UAOS8EuOVFHGQter0cSGwSz+pwyJ/9bkNr2+CEMrw
	 qGW0VtuOoMWc8zPhnocdGXLSHOMkbbhqn06nJsW7NpFLUODoqom3uytRaOg+WSYrrG
	 SpUylGBQjW8A+dD+TnXJvAgn0Xpt7YwYnVivHrpwM49oAeLmEyw9ledcbdswTyeIhk
	 /LUYGuNN1HWO9P3LfiBvKiHcjWpWjHSEp8lLbs1c5m7qN9EYtxUJEcrmuqukTiF5fn
	 YRr8rRZB0j4w5jElPkOzcFyTHVLGnn6TkfovgET1Ga2PKjIPUW93cilbeLMVBGXUZI
	 HsL+6pd/c0L8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B2FC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173787815357.16316.12737390750940455860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2661d98684c593d557ed8270a9c259c93901485047294228329ba74c8238cd4
Date: Sun, 26 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737878153
