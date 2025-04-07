Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E341A5B8E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744034993; cv=none; b=FenHTabxHWGwYx0cirAcdJ9SKwK2yzmO6IF4QnJcSE3ZdZkTim5hr4yfwiEI3zOkTzTtMYk7naLBTziw+Bw5nC4l+yWE07m3itLUyVmmEbB6cRNOjoYqX+8cEQgrQ1ZmLOj1hyRrufeMBirBaLm7/eIMesINtRWcAAwXQZeWCGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744034993; c=relaxed/simple;
	bh=65K0NH8ACxjO0CExmefVqZPDamlUpupPEXfvN4M/U/k=;
	h=To:Subject:From:Message-Id:Date; b=b8165hrIYKIPQBu9OlKpBCZZDGgU3Um493LdSyrJEwYK3odMglU3rEwwypNwLLE8sz1WXll57Ctdsu0vMqJR98I/KZyPGP++9oEXT/gLbtDW5A6zFO1zI3eehqzzgZ+Q9GmkKK0QJLQfGYj9iqDOSe97DfONefyVJ3QZLW+SA60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtQhISCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtQhISCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55F0C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744034993;
	bh=65K0NH8ACxjO0CExmefVqZPDamlUpupPEXfvN4M/U/k=;
	h=To:Subject:From:Date:From;
	b=XtQhISCQvlXbjGmItTtSDE9taqbvJCYgGJusWvbzrQLVbecz8vkmThspJQCu4iw41
	 9DaxYElJ09Q/SBQskxShOh82VJ51fexmwo92r8pS0SMN3XBeNxrIzYNdgzc08hv9hK
	 ysVyUnhRgKiaIC+7fIP4jBQJkjiOnx7/hamgUTRc7umHz7hi992H55AfQN5tF8Waak
	 S91ZEqrIZa9V2GESYNPPG46ki5nLvrUnPheNlbhWrGPssmul7aCEWHKtHauLNUeL0t
	 pZ2XHJDP1GJ2VphregUJTlNKglYkpCOlFEzzPtDvXMrzDqlVkYk79iLyDNa4Qqvn9w
	 9lrDZTYSzzHqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0FAC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403499362.4614.16415746163851715873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53390cfc0187d79c99e19225b1c08e71a15fa984bf4b867e24ce126b0ada886a
Date: Mon, 07 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744034993
