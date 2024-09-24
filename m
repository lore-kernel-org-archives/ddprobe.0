Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F111547D8
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727168754; cv=none; b=irPMB6jj3Hag8ovcOjVw+AHUi5WBh1zDEfpjM3eugt7FtDV02K6isKmdAVafkhL+CmSXDH0lh87XC8uuk78NZeHINLYOxJjVJZbXwbNqv+ZmPAS5C5M+zoAQ2sAwRw5ntMwoEyk0JKbQPCv60/oyW3Uuza90NHt62X8wLHn1Jrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727168754; c=relaxed/simple;
	bh=BCLo8+qBXNBeioKtA9zfw1mTfX+4pjqx+IQDZY6zqZc=;
	h=To:Subject:From:Message-Id:Date; b=eIuEM3GJvaKBygDHEN5it/9SWAKOK/CnpCE5bsT3UQjuXbDf4yie1+KLokSpycouTpCTo4kPVj+1Agy7J+AN/zym68A3Sg290yUpXMy68OJ/cFAKdnEdYDKjuZeB9NXRrxcrDZmlU2U1D+aTgH06gfXjTbxUpmQKjeWDcjcD28I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP/zxywn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP/zxywn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A203CC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727168753;
	bh=BCLo8+qBXNBeioKtA9zfw1mTfX+4pjqx+IQDZY6zqZc=;
	h=To:Subject:From:Date:From;
	b=CP/zxywn/y+1czurutCo42iaEnHQTHD3B7kVYEi9TxV7ASLtFTQPOUd1tQtoAu/K7
	 zsrS02RL3L1Djn44z4Vor//ysT7kdoxBMPO2rT5QN+9EbaqpWIXEqenwJ4JG4zGmJN
	 RtkLpm9aMmi17/s2JT5tfU1iQPcolp2/LZxJqmWlI4w6MBxjt4XNKM2OEs/EuFTsH9
	 nw/8n+NOZb8jKEO+JT36qP+JrMqvecmAU0I6Tql6bkcZB9+DhauhtDmofY8z5MVyLF
	 CeffKD6T/Hz38X8Fz9PtMue8tZ7F9kurUAafysIad93SVPFhpQ6umiQpEhSQQ0/Dzd
	 REf/j050G9dOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059ACF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172716875358.25434.9829540929187721360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d50cbfab585b776aaee450f08489ec73d718b3230a1463f6e403c39dc657af
Date: Tue, 24 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727168753
