Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2538B1862A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758484194; cv=none; b=hoCR4qYHOahlmclAhRS4BF5opPRpAfPoZvu5itqJT12e/ceu7/3T0EtCYiY1c6eYuZNkBQIATkNx+iA+s6Ker9MPYGsOBIiw324O1VXG+TsAl8iIR5fkEfM+s2NO7EKUp7jy/2SMhjXsqZ2UZgGhibgqj7sZFIbivWT8qIoERK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758484194; c=relaxed/simple;
	bh=Y8Q33WEmI/ju1mizf38nBKZk62jrS3XnyOPtpFw3DrY=;
	h=To:Subject:From:Message-Id:Date; b=Y64l2grdQ2P0wNac3RKr9FI6othzoB02Y5Xmt6CWmBRs0z2nrYqtX+XRxJjq979RpsP7i55nLHcNJDfIotiwS1vPrNI8mJRypudH8j1FzbCwv4923QkR7hrMtfKCM8kJGDsJhRgRmy6d32oG5jR6E3nI9QAFBMS1s4DOjH223gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDXw+pEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDXw+pEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758484193;
	bh=Y8Q33WEmI/ju1mizf38nBKZk62jrS3XnyOPtpFw3DrY=;
	h=To:Subject:From:Date:From;
	b=bDXw+pEvLFa4MEJshLrrFlraR8uQnapZ/X7vnu+d7ADY5YpRadahfYACx1NNOjiwL
	 VtSSV0X77JKG9ti0nDk5bkSFe/d3M3dLhfkSbE8YvH7in1IsKxwByiGM+2noSz9+ib
	 9BWl+SwcC6+bgEczLh241H5OPkeuWfdhw7o50SBMcQyHzMiwRkvnyqVh57kblayoTI
	 WcRho1vhkrPpEZi3f61C2vDwEZpIu2IGOmcIiDOU3hvjmMNiCSHbBqH771jICeoKym
	 08dVenmCTRlB+vDuuSa2fPpWoCxQklYaXCcEEhgyaKozg/yMhbWtDo6G1HXPFJWoj/
	 zVPMPvaw9UpMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D72CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848419357.9494.12018772342049829468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ad19d98586bc6c44b37ecc0d7082c6d4b0f126261832cf4147c825c6a9ddd7
Date: Sun, 21 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758484193
