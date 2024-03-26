Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAE61C6A4
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711475897; cv=none; b=LdHXPoK6yKBYyB26ApsIw3GCtQmLD3o43KFaLGoegp2DJmxA1T5LbYBBTqB5tM0WqNXPB/oCROy/cWncKOlszWEA5iluKWiJnbV380vI5pQCef316MZ6uM8Kby0R9hdOTWT6GtfwIoTrMjSe2eo5e6Vrcr9ana79/ZFsbDT2rK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711475897; c=relaxed/simple;
	bh=JGlXGXPTnKD4L1gbMphybV+PKoZBnJvxbThHgO3zvi4=;
	h=To:Subject:From:Message-Id:Date; b=rfxnD+vkatjWXdmlEQWCu3oI+YkhUsYd/yyAVQKYuylrN/oCzpyXQTFmUTUHq5RK+lj5oSN/q3oh8b/DgsmFToBec1JnwU9+YN5NeBKxXF9TVZEJkYA+zmDVJMJFuAGYjoI2S/v40udSXA0j38+lanVAHuhVsJTtsSI2XQ3ooXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxLKigV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxLKigV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D5B3C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711475896;
	bh=JGlXGXPTnKD4L1gbMphybV+PKoZBnJvxbThHgO3zvi4=;
	h=To:Subject:From:Date:From;
	b=pxLKigV3VvLJ3o3tJcysJvRA42tDnIMfGbKq703BpkRHg2FB4vflwhAr91dQNi3FP
	 WykylGjQv0C1cWuRtE1xROamzGeUVVf53sQfJgJpzR94jKGgIee+89qxdxB9OQ8G+N
	 Ottb5ASPiVTX0QaR+UXSiRI+qlRkJxlxqk9Z9BlANQKuArAxT1st4oYIsVtNa0U0eR
	 hr6HEz3EnumJWSz0o6CbOx7y5hwDUhjFdCQJHCFaG4EKzEntvFk+lcbPVIEhc/EJT7
	 iZFT4NcexU++RQIwcHItcLzzIs02vBxIcA2wtovZiifi749qZbemgRDT59y7pWNa0G
	 VudfntKIa7PnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75CC1C54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171147589642.12492.5267834265011940668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98134aea37223149b3324cfede236c414c134afa527821453243b29161dbca2a
Date: Tue, 26 Mar 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711475896
