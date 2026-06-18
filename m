Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4848F3164B4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781806594; cv=none; b=ABUYlKxQi6jkfgsQf6boRYAtprtj/U2gDBp9qDT3zIvFtiYLTvValbPtWJz63MYgfOM4UGRB79oKvG2NKx14fVhty/eCYu5HYfvYZY7dM6L50CLiSGKuKXvmTwvENU/U0832vLYgBZdH0DsYfFH/+EvMZTJxmB6qULMueCJIMys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781806594; c=relaxed/simple;
	bh=Uhcn6OaYaxUopN/T6q2Mc6URKCiFoBf5rd7fGfvDVb8=;
	h=To:Subject:From:Message-Id:Date; b=AM3sXs6sLaOKv9CukyPpzf9FWBD0Q5ok4sl+FL4zSGVRqK1T9edroQCffdfgM1RviHy3e2nogOxeQSKbMjgZd6KOmgSNxC+4iMTtIqGhCOXjQnqQcIPaSDeejI6NS5Rb2JtbF0hbupzU46QleKd0pEQi1v1eZb/NBmJld1USx0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEKHaU3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEKHaU3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6106C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781806593;
	bh=Uhcn6OaYaxUopN/T6q2Mc6URKCiFoBf5rd7fGfvDVb8=;
	h=To:Subject:From:Date:From;
	b=YEKHaU3QlSvebemgfcCQsPfvAl9dspalaJam1DlPG85MNRQWGGBp332KC9PBA3YiS
	 w624TOj1yz3eYgL/DCiTGWf78XeTcJm9M+e/Hvq0bY8SMG3shyfVBk+mZriyrfuehN
	 WDOpXVE0kddxiP7I/piFmFnbzq9kLVQ3Km+21bEw+NsA2HlH2q+c9t2fMLB/qR0hKW
	 swRizEIysCeO8G6ihs79tfWZ09EM9Wyic0wN7v2WLjxTfSWlvLqovrnakrBbo95sud
	 v9NH9BZJaPuutRF4htvZ1CduChuUQ0MLWKmUXmIHEQwlFAQSVFH+QwcCpWMHK3Vz5F
	 ehXuW9tGFWzdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B631FCD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180659373.21350.15585613793932226140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3086ab3e891557be434d3df98acc51baf06f253ef99ebff457f75345b9a9469
Date: Thu, 18 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781806593
