Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEB72BCE8
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715937143; cv=none; b=RzgBFJ2T+v0umXDK+6GN9METtcU2+WTgDqveJ9v1mPYTd+y6eufGjpFxyc9hfJ0mb51i+WKvZwSwYBUDRR0HkhvAAVJeyKBiinuPhiDlxSI2GPWQgBwY3wFBG9xU8UgeqkfvEex+07FRp1UBXXsbq8BscbLU53xNmCEnEmx/CWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715937143; c=relaxed/simple;
	bh=SQrEDX9JBzZuFK32Aba6erTC6XBOFruk4HvdAGTTJ2w=;
	h=To:Subject:From:Message-Id:Date; b=FEJDuiwSby9U+7zULAZYOd+qyVu3eksutWeGstb9DXDMHdGWkLTMjWfiTVAYB/t4t/AEDCyGZLeqcf5xLKVSUPx4nAtNCky8/ZhPG9gVLk0ih+exNl5KqqrpqwIGzDsTjnCjog5CHYQlPhzFSkxu0uWmSL0X9d79rxMZGDwl2KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YegXMW90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YegXMW90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC00BC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715937142;
	bh=SQrEDX9JBzZuFK32Aba6erTC6XBOFruk4HvdAGTTJ2w=;
	h=To:Subject:From:Date:From;
	b=YegXMW90+zIynOboXsu5FcauEc1Hh7+nEuSH32KOr8bn0OctcOfgIcXllhmmAtAFj
	 3cSJoX1+03G5c9bFIW/qtn2+U2SRrknr9WpIevk679H8GfISkEylBQI9xkjM3RHCY1
	 3OIGFZ8lX6gFw1sLEng3KiC+nm/Ib1ITJJSy7S3xr+dDnBi82ZSZRa1W9M4pVZIwYa
	 o2VhJzctjQEHnZHaR1e8TfCKN8VOVVoSwBL17hl9hh5V7nfCmu9q+669xY8bBKBcYf
	 7qVjQY42WH118focD/Y/bU7rrTxHbmGlD1FgUQLnV+pWtIfBaLjJn0ei9KoCHcR80I
	 nB06DhfOfPxEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4B2C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171593714277.31299.16298006617081965083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe43ce32fa0a1b9a1e29da4df2ab01a963c24d938e1fb6750ad22a644ac0152f
Date: Fri, 17 May 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715937142
