Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F27619E802
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724706954; cv=none; b=c28znPpDXrPRTn9dEWajKLEwiTM94+zhcmHB1s2Ik8aDL64pFywwjPKWEV3DhDcE0jQEpnpJIlKfoN26tbhgM5zvtraRhzlCXJlOtG/bQsHIUvpao2ooIiiO2VASweU/33VOjF/cU1hdjuytcwnxn8Ao7KqWgLc0HCDHRWJdW5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724706954; c=relaxed/simple;
	bh=H6mu12+nj8mqPQsl5o+BJ2j/x0gkg4PXnxMl1ESUTJ4=;
	h=To:Subject:From:Message-Id:Date; b=plYGARoQp0jZDbwgrNbxlrOGoJ2ckCGWQgbjnhcmeExFO5GEdY981vIJd3rBIEBZK3x0RcqE1jKI30SQhazb/jXQ2GjhwiBweqa7MmrEIjHILgppVzBtlAcjmpNbvCAGDxKju3XpPhAGPx4jQU3RXZyT2U+CejCVVpVPtWjd0MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqazJVQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqazJVQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8B5C567F3
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724706953;
	bh=H6mu12+nj8mqPQsl5o+BJ2j/x0gkg4PXnxMl1ESUTJ4=;
	h=To:Subject:From:Date:From;
	b=pqazJVQLsYwMVzdMG7SInIRqSemaGwCU+DwU6DNAzTbTF0ZPRYguK2pWfRt7kRq2D
	 a5iRcFUEU+xnH8/lA6G4l2s/uJA0nXoJbCTJmviXLiiB23DQZhfhmW2pX41Sx14lEq
	 tV7i/Ulm3R5ThvknFcOJ0WBq114j7FcXjA8A7uXtSM2ALkrCzHrKLsSVQYOLmyc4he
	 u5Umu0/c7ia0VURTk5R37g14gS78jk4Qz5H6UiF1G4L9u6MpGIVlJCLs9+LvRv4c9G
	 yNWQr94jm7fvHZvsf74J+0vInzqpwTVaHY5nfQ2LdeqZAnGlr+di9y5D0Wvv5t/Lq1
	 fueBMI09tFA/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B55C5472C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172470695360.31054.2121668521756212479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f28f3712ba8f08f8acdacc48f8fc09a3be640e78a8a5a427de937e502c72f9b
Date: Mon, 26 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724706953
