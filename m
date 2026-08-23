Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6646C78F3A
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787483434; cv=none; b=K0d8/KBXG6Ak0p3MNcD+5/TIaqSfz6NjZStM51TcDgyvEJMUjZJhTMV8i9xS8aAeiERr/vvm07GsLjIn93QxjvAA1Cbi0DjN2CbrFZG+weEe+g8Rm6u7+z9+TXGNj/CN+kt4aEIpE9aicOcrsSlBHFbf8Uo7GjrwBkPr4xGfOVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787483434; c=relaxed/simple;
	bh=kCECCzcGqBs8Vpi6zrVBLYU8fsyf4HAmdZw+puPWF+g=;
	h=To:Subject:From:Message-Id:Date; b=a2U686yviDzObNHofM63y+U9cHq6baFxg1Wr2yIX/CH54RenBgiOaHI9O/d8Iy9Oj18n3S8mddm38uzaeBfh8tEz9yEtdtfDjjNaFf5YLMjihvw/evUCthY8quDiG4gn0vsx7yPIaYqywtZboFYZfptQNBugdHVSh7ZtznMAGlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ss5v388f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ss5v388f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BCDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787483433;
	bh=kCECCzcGqBs8Vpi6zrVBLYU8fsyf4HAmdZw+puPWF+g=;
	h=To:Subject:From:Date:From;
	b=Ss5v388fki0QGzL85uNdcvgg9U2uNDl+kFeKvldxvJnPfuLN2Orz0QlT8IpgDywIY
	 RjS/LciZz5z8jUju+OM3XqmrvKjyJ7iwa1nq7hGASEVUtBBC47Jtfz6/Ixzh9Y6mKC
	 B7WC/u7rO5rmxbiRdpWrCqzJk646YAI5zdlhKVvWnhZpnrfYxYiKEJgPKYo9SwsKZf
	 sXRbeCuMDXcJQ13p1WxryO4jauSvqp/9Npkwp6R+64EXfrGKNlJjnIJ0+isPZO+dnj
	 kY3Ecl09pQb31O561Mf3tO400X3uVP0aElQ0wHesD4t6yelgEf6yFwIyyIHvVTQOLp
	 HzMuh+sSaYQhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0624C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748343368.8991.13838948285942578825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8376de2960d8d2eeac0d830ccae33a31d2a155ff70bef93bc70f32a00b8ec1f
Date: Sun, 23 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787483433
