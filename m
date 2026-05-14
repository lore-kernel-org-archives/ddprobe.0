Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3019C3C1966
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778740234; cv=none; b=dXK4kt+bfxoP1lOpiQ8VTP77eZxeRjSzHyvA9d23//0AaifUTgU4A/rVXqOP3tlBDZ1epkTx/HCClmdw2WQ9juBrNSBYTOMP3mW07J4/uq1r/RUJd6ZN92qND85QOyOxGwTEwxTV5p6lquZMx5K+AEKB9Wh/6fgKcwqUX9uyBzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778740234; c=relaxed/simple;
	bh=qGMacV/7DusnLFq8x75Z0ItJzblaaNglrbViGkYyEVc=;
	h=To:Subject:From:Message-Id:Date; b=Wqy9DdxMVom1WhU4qpgL+9+2f0JPS39tbZ5LxxnX8wnVwUphGrm47xG5byjpoF44pYifFp46mxyKGzpy8rZsUGqPCPPA95syyunutBfi0mCmtZdzUfNJ8i5ucQXyT88vQEAvRu5xnAPKOK8eeyjWWOpGSLQPoF3iaJ8E3VMJQUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rE3ya3af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rE3ya3af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF30C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778740233;
	bh=qGMacV/7DusnLFq8x75Z0ItJzblaaNglrbViGkYyEVc=;
	h=To:Subject:From:Date:From;
	b=rE3ya3af7LfJaVc/+eL6PIZot+rcqIRcHsMDrHPxRO/NyIWqC2SVxY+QxRQiBeCQA
	 7L3NIE9sV1iTOpaHUHAY3qy/lkfypnLtVEwwUKTdomJ9WDRBVyzjth6UhN0x1mR4FZ
	 xc52QF+Ut+uDN+X37my0mmrv6fF3vCU7jjlCRl9ubm8srdtb5HTl+1i9PHEuCQzkTh
	 fujw3c1BZoraAU9h0SZ8jY4MFVvzrJbHeYCBXX2gNe/KZg3XDbAYr7JkCjaayll9hr
	 iW7WryVqiBujaYB6sscasjQ7gNXroyaWbN3mQ/J3KM4RTaxlBwnkiy8zL2cJ9nOZzW
	 6GxMP4vFJ0DTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FCCCD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874023368.2540.1755117684769986113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3765047e816644c7a4a75fec07ff8e067ace75a4361b64afcbf93dc3613d42c4
Date: Thu, 14 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778740233
