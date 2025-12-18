Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5B42DF3CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766044434; cv=none; b=l0V7sGXlga2sP1VjIIZcfrZgwyVlJPCmXig3koDapH8Pn9+XGgCxXMZnmb+bGxd7GkmS/y+CqaY6GaSlCdrRBI6iyRtV89Ax6enXR/CJsXb2lwswYbuHlcTti6OiDinBo+9IdJkDvDhKV5N6MBbumZfUgZTcppjZv4AviReP5d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766044434; c=relaxed/simple;
	bh=P0/Vqq9Nrnyr4YgzoFXctxw7iO+ecfWwuVDvqEpQxFI=;
	h=To:Subject:From:Message-Id:Date; b=Y8Byn1Kj/+YQffPlVbWYEsIikvdQKtOA+7YXwd4cI/qpImdDNlIs136gJiEY5Qbx74VyKd8M1qh42QLRRHNvhNXRTtBsFZyDMJYsE/BdB+qLcIOmaYigMlvxLqZY29Rl4EFcFwQXLG1G9lVsBQy0lABDxY5PAMI8Cgxe1cWtPg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDh22gz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDh22gz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A06C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766044433;
	bh=P0/Vqq9Nrnyr4YgzoFXctxw7iO+ecfWwuVDvqEpQxFI=;
	h=To:Subject:From:Date:From;
	b=uDh22gz5ArhCdjkBpqSDrQBwCmXrk5XkUIkxZwMBztgQYYQf9udQB/2dHSKoW9KRt
	 S+hoS6yD+WlHAW/JoHurO6VhwGavHru8iP5kZq2GMWy4g7oPDfqWx1BbCPBQ1cSa1/
	 jjTrCQi15MWhcmWKJvsMNzFkXHKteQSLcvIxpPQLafa0tUrN9LTo522lx4gcOLZFh4
	 wPcwoe8x9fUAqxbGKYlpoeAX7w6osY/AMB7k1ZdnF+jUcTMuG7dUk3woZjKXpmRzWX
	 D0giLPrMz3gFw77KFw327QJEsKA2rriGyLgau9/G5GnbHsG9gx1yz5lKnXuDxelrkc
	 jNhqTJeAFFulA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F1D68BE8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604443359.9305.9570003913335727242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5f6f177da75591ed65da6c9e2fd77a8e19cd592f9c17b5bab7428ded179c3d
Date: Thu, 18 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766044433
