Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607BF43BDB2
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785840634; cv=none; b=JLU1OG77DUoxnXgtGHJ4/syvZrGR3FKZsg9sSXyniHCFIKyNXGLfGQ4HUdxyZlLdBP+BuvbKVPgWbHz3X58ae1uRTfTGGyQZKbZlbiekVZhKOuDogrWLNGYZQK3Xn1ZKzKxdyxFvT5I81CmVE0k+px6kz/WtF35MODjSc7noWs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785840634; c=relaxed/simple;
	bh=8ORQdSOLZffhTwxC8bo8IYfMe7iebKWdPScre8CHaj8=;
	h=To:Subject:From:Message-Id:Date; b=cnMeHnWYYtM9We8pFubxMUSOUKv90Qhzlt1U6rdyHOG0tFr31AC2QUKkJRXfBV3Je0/HiMqtsVJ4cDKk1ArVCXLMftUzRev3TSexVHRltP85tH2LIvozCfiS5MYV7vbZaxDjRTT1rxyCmdvMB6G7L5RyD6m9EHcDttzBibEombg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3dLeO4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3dLeO4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6DA0C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785840633;
	bh=8ORQdSOLZffhTwxC8bo8IYfMe7iebKWdPScre8CHaj8=;
	h=To:Subject:From:Date:From;
	b=n3dLeO4HGEyKlvZ3bQmNXcHPh+/ZXilKAlMdOk5zr4gFClD3d07FpL0W34WbNtrV1
	 Uf3Cu0/E6iUW24v8rINxe+zPLtmGAvMIbJghwGl07jiD0Pc8wvkOLyB67BuuBZQ1oy
	 uJPc4iu8qM8ngSZLzArg+Ak4B7RuSkg82FuhEuYJENyfoMAspGvlxgW2gMdeV5dvBp
	 fTXs3Mz/m2KrjFrVtSIpqZyqBV2kGH5OHO2zfKzHoLHN5fpVxTzeA1I6EZsVcDJs62
	 mUNU0SLjtGTdAx+Fm07QczaKjubDzakA8LVS8R6fuVnbfXfQrNem+3FIJFw05pOXTO
	 n/z8Pv9G2GDwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E1CC5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584063375.27053.6465528397304391654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10390645fba6b7c000042c5c3a356210fd784e2b482a7151e0388ce7b6ec1fb
Date: Tue, 04 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785840633
