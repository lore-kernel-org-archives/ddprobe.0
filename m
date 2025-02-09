Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B2A1392
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739073954; cv=none; b=GVHujv6qDr8w7Gds339WD+FnDmiKan22Vm5oz1nVoGy/WgFN5UlwLwCJ7Gb7lCc+EIq8jfRghiPSJffP87H7xvFei/4kX6vaN2E8LIglf/dRKaVsaz5KsnBBzXE/TuvjLhdvTofgLbOX19EYtXz7Ujr6CB7SUmDFfcQG8RP32Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739073954; c=relaxed/simple;
	bh=OWE9LDlzNCasYl1KnvLnOPfX4iyAql7GNFyWo1AnSu8=;
	h=To:Subject:From:Message-Id:Date; b=SBBKORLDu2dHBeJ0GLPVtuwusBlkH8L1sPa+TlPM+4yyQXKEW0CSwHDtkKhSdKJrQCmwBQTsNuS4rLTjglySoaEXC4AwcFioQRVX0pJXBTxjolPbpR7BkswfE/9oR80cUVe+t0NdMCvlaDose5ZeQnBcRgHufuk9J+CwTsjX9o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKlS3vj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKlS3vj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CDCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739073953;
	bh=OWE9LDlzNCasYl1KnvLnOPfX4iyAql7GNFyWo1AnSu8=;
	h=To:Subject:From:Date:From;
	b=YKlS3vj/18K4yLViKCLljJ7JqKzqlKULtiADCLr2yzmqVCi5Fivz9E21qDNN9MHlA
	 ExrtQ3JYA89vMYB6zMovYoKPK4M6piyL5Jnqw0PeINSoFpKI8kr7g5U9W/eNgpi/Gz
	 aDY//LH3AvRi4Mn9Qf1HM0IvsmWIGCZpCZ9xBEsVVYpiFg49GG+DPIbebO+TukGtQj
	 LmcvlOb/YF4w5YhaVT9FE/NpvRiZfg2OnWLP/4lDaA8BmLUDA3H64iun4qxH78G8h4
	 Pt2fmrblGk/wUrMh7FyYQa0H4QzZH9XwxzSJS256nxlklvEaA/jlCSaO5/DWxP5ktj
	 MK+BXhlwFMiCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BC8C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173907395367.2418.4130701072284808118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f1599af851870e4b27aa9ed8522031edd6d1db2bae9683e28822f3eaf11195
Date: Sun, 09 Feb 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739073953
