Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE6A558B7
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723533954; cv=none; b=U7uhNs36cF4Y+lYK6pl0mzBkDwHa+qA+0SLz6Zkc73QRc5FG/FUxof/yTKL7/1ScwkX7V8gX9F/NPXYxRRApotrTdaUC7jII11QizTrZrZOAC9irtstSuOkauAUiItFXa8TnfWshddWEzLuKiCigmLrmek3CuMpRq7u2LVkv6TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723533954; c=relaxed/simple;
	bh=wtVOgSrxtW489wgpK5l2bQi4/awa5p255b2FKeOzafw=;
	h=To:Subject:From:Message-Id:Date; b=Xpc5nToA7LcbQa8ZcL+Q2G8P7UeKJ5P03f4lCFaIjTC0I1tDFeY62wT0nZbNwcWcBMjwQK6myRJpgMMva76mfEK61jUBYlLezZyQp0/s1i5nRmrxZCDHOeTUx/rO4Qs2/TAix3L+e74ar+1bczKT0m83DfAiKnSf1c7fqjn4YLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eb7VdYHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eb7VdYHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64DCC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723533953;
	bh=wtVOgSrxtW489wgpK5l2bQi4/awa5p255b2FKeOzafw=;
	h=To:Subject:From:Date:From;
	b=eb7VdYHTcUXfewW+A+GebYPGXiVJSCtOpanyHK8t02XIx8eTbozd/6wqeVtSgopBC
	 jzzDK557CaPbLKT53s3uUtqaTFPnl/f7mE491Mrvu+LKcbNj07AfQ10h4LTq74bstb
	 dVLzggtDzXmpiEvTVF0NnYdWTCUBuL3AbG4Xeq7z14njjOKAylZYIFjdW081KKCKHy
	 RvE820GrrRg27dUtd+gNr6PLNT0GQpHV4T6ETCoC+7Lo6O+aOPp02puauHWKwCr1hK
	 9NZR9F7VDI4oun12Nn+Qluyv/LXKUTsIzY9iXv1h2ZjELuxWaGC2vXosL3j5HSFOht
	 e8RFXvrCapnqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9453EC52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172353395360.27706.933797875289014426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf37cf5723a7ecd1081165627bb68b82b0d4d666b377cd2fc8085839f03da4a
Date: Tue, 13 Aug 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723533953
