Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FF51799F
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790640634; cv=none; b=E8ElL/j2j63psRHaVveTBU8MYn34CQZWVnSZeQpq89B8ZDMLRPFtv4rVYxD3cWgW7Splav0SzEU1YE4zqkLEPZp9uOl01MkqBwnoZXwvD+04JKuKCVe9CIHqALsY8DGxlY77sNw+KFurwXbpCGfROE8HSnBmNjO6bvCvv4FCOmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790640634; c=relaxed/simple;
	bh=KHyN9R1cm1b3xqJ+q6uq+SsFVeAjfgbWOufN0A4UwxM=;
	h=To:Subject:From:Message-Id:Date; b=DVWTr/Ko0DGLQDHBr4qQY02MrYcov8LhHGHJr58tbYzL/ylAQvCY7qrMJz//XoRUgYDOfwgfTVL2JXYCzc5zbyfBfVAPn64KTF3bs9ZRUM+XRDVcFnDJofyzMHtX3ocePSiVN+DoI+pXYp1swMK7rcBJDVGqz5uok8e+/bG1BJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hb/XRLiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hb/XRLiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B0EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790640633;
	bh=KHyN9R1cm1b3xqJ+q6uq+SsFVeAjfgbWOufN0A4UwxM=;
	h=To:Subject:From:Date:From;
	b=hb/XRLiWiEXlI4FTSiDAcKd3YxVOlpAxEB/5A+5AKxcZpr+P6wLIZNgwZKLL8AdXQ
	 Ufyoh2pmAvo0KQCDsK+4VXmpgbS2LV/rdp1z7YrxkbQkR+GKhjvJINOWHMTlI5qzVE
	 LSCqrn7t2YlTRWC6rlstyC1Pa54XSMrfFfCNtqoLgd+sB8voJIzfhGltc5L0gwAfHu
	 QFHkWTXpI7TI1Vf5ExRSWmg6FLeuGXVgNWy6R0cwShU96E3XOy5CfqYWhkOQbSaHHZ
	 Kr2GrX/YeKwmRLt5Qx7bFnaY7LPSmNoK8vlahFaY8gQOCyGMgiAPF8EHqUfFpyselB
	 9T6TIufSov9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF539CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064063368.13251.6882002521973288785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13352dfaeceb36a29364ef5abb208ec6ce4d95935c081217feacd470b9e135e6
Date: Tue, 29 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790640633
