Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C82191F7E
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735028754; cv=none; b=Y8BCaH2QxiSVigcLBfpGw6bBD7IXqP/7RqQQ2mAXQ6mDaazPBgpj7tV0i0LExTPV/DvsI/PVvv/27MctjYfCLjqPj4et57zGmVA+Rb81Tm8On/95cYqCf2gZ/e7qY/vKCpYaPJ+M+SsC9wa0IR4SZCF2juBG9VDrU2ZLAeXmhvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735028754; c=relaxed/simple;
	bh=iMqFIlbLJ4dC0f5EJb9nj4uM5WFel3kLY3GErEozNNM=;
	h=To:Subject:From:Message-Id:Date; b=C7c60Us4nTySpQ9GLU01XLTJm0e+Cuio1tRohlrA914u51fY8xqz4CRHR3EzHQVxnag9MV8HO78HDhoWaF/TpmSwXGP6kK9d103IEotnqEyKKxFjfHifjtkDW4TaWS+nczVKwvP/6ELsqKj6BHKGmVEcHojxuRRRqfFIoU9QREg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sy8XCLrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sy8XCLrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03ABC4CEDC
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735028753;
	bh=iMqFIlbLJ4dC0f5EJb9nj4uM5WFel3kLY3GErEozNNM=;
	h=To:Subject:From:Date:From;
	b=Sy8XCLrWX6iFmPdCocWCeoev3MA4lS8vdUjM0D0BKCU40DbCzweu3+3QiG5k4Mcqe
	 ZEAZR8u3xXUCYtIDsZqF2RvMW5NXgKePbg6ZMs+5KnsaZ4utn9OKF2gGQgXDLTUj56
	 OpWvWopOeRck0yfgMILJZz7lVTkF5vm4SFR11/L2UksO2sKL1LnYRWwQYSjGn+fV/A
	 7ap0WASwLPbZ4prl70KXXUD5QRAmvlHPRzlepZwHcAARZmD69H7rqCvK7ZmyF+QWHL
	 XZvjvWfkexLKrBTOagJQgQcPTIuu76PK6iDdFpeMh/24W7w1tISUyW0Tt1jXRatk/L
	 EBLcFL4qijotA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC9DE7718E
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173502875363.18065.15429218890863241643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c77fc93593e6c610a8db2a66f5127105ba65c6cf8b974d3aebc95d9e09c8c8
Date: Tue, 24 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735028753
