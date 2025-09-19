Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0B7191
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758240594; cv=none; b=Jg3SxCI4ndanAww0pkOu5LLgtvMJSicOd/Bs25fh2OOHlv5XI3X64vr9ehquNuJxAGSKor92fJZYp1QQQb+N4pbx1BuwjTmVN7j1xmyfT99TwoWNY23QPa+BP31X40lDahxgQKNF45/K1oqIkVRZHRhdbblx/nfhrP9xxzw5kLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758240594; c=relaxed/simple;
	bh=i9yRuh89YKZfCDlxCwaAZ1yVTVpUMOxJ7i2D5S8xAkE=;
	h=To:Subject:From:Message-Id:Date; b=LnWXTFFr62FpA4ib4KhxZdmeV1zXHdWMRrZ+Jdnmriwl+Fq4+WKHVy4a3nRutdesuYIjORRSAn0wR4Xvi5D6MuPZ3G9po1t9kcf2n7njUwVkJg8GLJqumNrKuEYOGjNB8uzAOCKHZz6/ZlYVzmNUpCXCvjefp5RuXmFX41vx/yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V12PJnR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V12PJnR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6726C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758240593;
	bh=i9yRuh89YKZfCDlxCwaAZ1yVTVpUMOxJ7i2D5S8xAkE=;
	h=To:Subject:From:Date:From;
	b=V12PJnR8ZGqBlJ3bjo3odg8QSQEefdFgeipP8q3HaOkZVoPUyNunQ7aG76bLuqv//
	 UhV1ybbQav7w7sr/mJRgvXQT/vWa7D6ARD8wX2xbZP9wpY3uSDfT24ZcgK88fS0di4
	 cgZj+sIFl520MSdtcv5US09HfENIvVrfh9DN6CzRiajjCKNXSKvrU79uQ1t85i87rP
	 WjvQDKf0LMX+TO+33TUhLi5IeEbf3gOxffLjH13jcp1hhF3P0X8+qARkaTYkJBq8Me
	 aFruLvRKdT8pff2up7q8bx0rYPupaoD8BqPWwg0AADaP4Y3f+nv17fi5899Qr9ypGM
	 e25IgNkCQc5Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C5FCAC597
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824059358.32245.7918549157632726975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e213f6569cef4d7b5f08171130e6c8717d5b7390268d8d64b5cfa3a85cd62989
Date: Fri, 19 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758240593
