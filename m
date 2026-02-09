Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A8BDDA9
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770597234; cv=none; b=hWaAktb4c8PyklWeXZxNdQrwXogtXuA+nfR2tMDPBpI9qEA8LkL4mWb3CyHL8OaRLL3Ij50y4yQ5hw1XTI2RGl/NiSZjqGi2hwDX8988oF+lHDocAHVskz05e1AjTCDQKqbr5Lxdn6hjWzAkPzCIEDOJ3I1d4MG1M0KAbdUE7Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770597234; c=relaxed/simple;
	bh=ar5kNyxIFGpLC8sDrYeUJpb/HEMMHnc3zVuE+oCMp3g=;
	h=To:Subject:From:Message-Id:Date; b=MmK1SfnN54LOjmChH2GSZRx1DByRhjK+B+g2wSSJ1F7xfziskeGogkQpS1/NL+wfoKwoQ72q77uPw+MhVj+fGPYxL0AJvOyMDTWRzqLd5VKt5IXSo19LLgA8NmELC+agR/bQTzLUerpyYU/YBunnFa3jZgwWxe3KBbKhSaav9Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6T5VqkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6T5VqkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C225BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770597233;
	bh=ar5kNyxIFGpLC8sDrYeUJpb/HEMMHnc3zVuE+oCMp3g=;
	h=To:Subject:From:Date:From;
	b=L6T5VqkDub/AtAvOgKGIr6ovvdifBqAPSwKnjGAT9SfymSO+2+Q3ER98Jlg+olrhy
	 OBvhuG66Jz9VyYhAu6UqxUX+RCHb4PNeiIE9NwU8Jnhs2lbrAyAsHZgUNlEIuX84Kd
	 Je3ZfkVXgp+n9VOO1w5rt6UuYZNDJA4Xbw4PqOoWDB8KQ0cOm5sYVdjQYLz0l+5AOb
	 aKp82lNUJPDtRJEyuxl40lWsqtDuZuPn4ba11mOyfJlTd/EldKkMeWkqqrSzKJszoN
	 BaEj5M96p7xJfmVuVGKA2PkR2FY5ul0UPh6T+SmCZtK6TY/XxJEViVNF/VU0HJnBqi
	 xnWbAlnjtYBQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEE5EF06FB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059723360.9832.14793935858474658703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44f5308c99921cd15cc387c7a03585f461295ae9e3dac55d9ac16118638cbad
Date: Mon, 09 Feb 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770597233
