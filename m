Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EC51FB5
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722203754; cv=none; b=OgccsFnh7Tttq30uSF8nGsNiBqQ0pEARdey0go+6WzUE5DkyAOzyZWqm+Wwmyu3+2FS6lm7pEX47sQBGerJVoNEzI2M3Py125al96TcC13FRXbSS0mCFLAoX6V7bf7N5QF92DpAGRLwe7p0yPKc8BzRp/1BLf1K19DgWCfgEO8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722203754; c=relaxed/simple;
	bh=SwhdYmGxhgLHEQkLabufu9GE0D8DdfTyB597ci9LrOI=;
	h=To:Subject:From:Message-Id:Date; b=ALipzx8O5qs4kotzNDhvp8dbXT3mqvqOZqL+wk6yk/TIOS/5BMf66s1JHQf4acQKd2vwFMsCAmeTGj1xOWE7epkkv7UYpNH9k0585Q0a7KG0wxPXKXt/OGHL5gGamUNy/cNLeVYAGQNHNp+jVrzaabbP/spZkQA6wGz3JDP3WXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtH/h+oQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtH/h+oQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE18C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722203753;
	bh=SwhdYmGxhgLHEQkLabufu9GE0D8DdfTyB597ci9LrOI=;
	h=To:Subject:From:Date:From;
	b=MtH/h+oQrciMqK7LfZ7gaKsb/ualSpwNRgXsK9K0jVKvYpJZ0NzAziMEf1DjyFrwI
	 s90fGaii90Vwau57MgXNSAUTbi7Pc1xKY4GdWnSDoxF63/7Y5fTTGCBi51djRBlmEs
	 Ot40dMhafV4ZPKXJqntSkFYP0p9SZl3yHbpwuSpBXGtQ5eHPTqARDbH67f0rxxWTF6
	 +nN/3cJ/m0rMXDWtys9ag8hoP4nRzJIHS2ayDwuIYd3eAlb7RqqoZAfGmKFvUIwg9X
	 AaWZq9rCRxS/23tgQWkR2R/QhnyQeJ5yt4Ewv+HbImQfzXa2hI2N2AVY24fl3+Ac/4
	 lrAqo+NXLk79g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910BBC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172220375358.11493.8112899737498458281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bf40ac0f2bef10d21c45f2f1009d8b226a2ff6040a2643ea44765bb872bdb6
Date: Sun, 28 Jul 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722203753
