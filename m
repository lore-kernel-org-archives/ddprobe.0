Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCD22BE622
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758062394; cv=none; b=ADZl7LvzpZ9tGOz64XXO7eSma+B2UNKfVXXg8dtBqjPxda1MBFHuYjhCp6KO4S/rpTe1eMQdKwDFXks1XyQUOWq3o26fbasHEV6Oh+cxCvLV5+9u/myhocX0tkBloODrf2YWKLoJtAAicvEazkq4AIINoA2S5RxKSGb0vMc5Rpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758062394; c=relaxed/simple;
	bh=nJHL7P9o0YMBv0BrmysyztcVijIorGsLeeZut3Wttso=;
	h=To:Subject:From:Message-Id:Date; b=Zir9ICxq7mtw+fDlnxVI9qwyzIyIoZ5FXEnTtzWlak4etSl+yACh8gjzz3meplp0V9eqTdULuOdiIwVTI0pSEl0+naLySZE2k3P/7ZIBGSZL5BugJD31sGScepWNOXb5WZapA05yaqufOJphjDBHwZvYvg+GyjWn8dPBdORvygw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLjXDePX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLjXDePX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8915C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758062393;
	bh=nJHL7P9o0YMBv0BrmysyztcVijIorGsLeeZut3Wttso=;
	h=To:Subject:From:Date:From;
	b=iLjXDePXbNHcblVLWa7r6wYr9PqqlU+bohGHV1QmRNR6UrHVe1cV+0rQzOfwLId4o
	 SkMuIIMlQ+rkIMqJW8n5okVNXLJz4xvqI59kOCifVGMyWamZFOcaqi5TJHWveZz4eK
	 juknb1t55DbpK7rKPqHdHUTeB4HOIMg3j4HVdS3hA88CLaqZOie/WyIm1ENtj0TZP3
	 lg8dk/J3qDi/2DRbv9KGZUIDTRSdBZZouC04+1OidipuPcjRKE4Rt8PfEkBjoaDf9e
	 1T9y/1hA+vxhHTg3uKUg0NZAaMhYePHGLZZJgjfFDVZIsxUA8fgYxP31vFKmkPLrhl
	 J9+s84W7LJCQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990FDCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806239358.30215.2361719624762785453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afdc47a50e627ac4864e933de2b6aaf4d9ae6dca40aefe0663ae04caedd9ffc6
Date: Tue, 16 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758062393
