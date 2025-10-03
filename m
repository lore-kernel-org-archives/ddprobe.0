Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1193A13635C
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759463394; cv=none; b=irswAPRwJX/Moo7zyVST7CPsiWJsHEf6quQ+KzKWoyFatfl2jOZOL0ZTjqSWhsBFX7zcmBjghA7qNv2o0GwwpOFdfkgrf7aZG4VVpn3+tTcxpcQ5dPREZLvGYXniQDEZwfZtIzKsU/HKskvjISZ/Juh2/JcoXSYcpmLVE57JoDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759463394; c=relaxed/simple;
	bh=MVBfSYgQrCu2WDGDs69rXhBZxqGDomqFVNiINOr8qlg=;
	h=To:Subject:From:Message-Id:Date; b=uWTMW2zxkmmYkhSntVZuxsSskjx1zBMnocm5tOGotStnit3Sw6ZFPhvtVnoTqMFVc4PUVv5xHaGuIZXnvHdU0+rUljpp0uazBnkgXf5wHbNnO+6jniT1cB1FYzk47BeUzO/s3kSDs/Kh3xZftAU8ul2HnwV0VJqybCkADd9/TYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCLtx5ry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCLtx5ry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A243AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759463393;
	bh=MVBfSYgQrCu2WDGDs69rXhBZxqGDomqFVNiINOr8qlg=;
	h=To:Subject:From:Date:From;
	b=mCLtx5ry+VbGRVn+NM7nb6g/G1v51/U/WbM1FA3rY85djwHHtFAXMH4oZ1nYlx539
	 VnQPw4d40t+ZO21jPK+IYXRw/GkblD0J0+LobeuCiWCE9deFH29KI6ZgfYnQFtSnAt
	 3xDUh59WaKNU/7pWyUEmnKsMI/gGHf8cVOF5+VHRGFk9pUNBucEcX8kl3clof5reaU
	 BQ8daPhgBz1T7v9iVKZx7VNb+/BFR5+3OT0QTeMjkL+MUym9fZHm9nl7zUij00CmwL
	 unSiUuUQ+Jy+8zGKrKkR7bwsg1E3Eubxmqgu6nP9weP11x/U79abAvzi9yNZuK/gEL
	 1wcapqFXYTHuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B2CCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946339357.14001.16837321596421431382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e390cce1d26ee788faae2f2651e2f75952d4eeecde467d9b26f851973f3e7adf
Date: Fri, 03 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759463393
