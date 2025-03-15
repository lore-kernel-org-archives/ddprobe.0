Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3711C197A8E
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742071194; cv=none; b=L4yUlrUZdYy6O1P/b61QVOWUoZ88TDEyL5I+NmlbfuqqEsawWdVpRmce353svu+tOgFnF1rD+Ol5V20OsaDlWMgHY9NVAyjcHl3fSLnRb3XVOTwQklo7/57kEzB+SWcJpC6ND6gjaCdoJgAMuq3plFNklIHVY9FcvKFERp55MCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742071194; c=relaxed/simple;
	bh=chZX6Op/RepSq76zU77K1TFl7m7IsHvc9ftpmOZU6R4=;
	h=To:Subject:From:Message-Id:Date; b=PKQRTEqla4pH16+MN1FMU3qolas331gBgzKfT/Y4780qg/KwyvqRV7jf76eEHx2dqCcYWt3/0/BC/IdBuoaQ2oi/mdPiLdGYa0ruB2YmBMqwUbiVzgUBssyTbT9cDUxhWJh0PNiCjZWFds6cjTpV1V6NzVcYXES3j93I+u/14I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckuVaRf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckuVaRf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE16EC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742071193;
	bh=chZX6Op/RepSq76zU77K1TFl7m7IsHvc9ftpmOZU6R4=;
	h=To:Subject:From:Date:From;
	b=ckuVaRf+0wjk0qkQmuDi0TB/KCDyBWQTZilMuxsNWLjvCiyDfJSytmVNX4xnj/y1Q
	 /iVADZ9qUxmYge2NHHwg8V27pTInBKywVTNOfHvVA2AKajdaUE2XC6txKHtJKCyWwa
	 Y1AtDB+DeeEuZunHWvGeVWi05Q9ZskpFl6m1jn1LSJEvSPiPIgGDTwZJuUzCXQu1nR
	 VgfSYPyrdQGiCYdVH0JmPnlz6ZoBMP/rPuT3+xg+F8EqxZiuWCbBUYE2JnBNh4lnON
	 JEDTO93v/NuixESa2xgVAWu8tEWkphDtvLFbT8cO5Yu4UOYWMFmohTtKWyFUndZ0P3
	 2HusDdnRfI0lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942CEC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174207119359.20357.11035369948744985668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f7aaabb406d5e0a610416ebdf2435fbdcb3e53d941272d4761eec161312813
Date: Sat, 15 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742071193
