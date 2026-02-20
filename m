Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D843344DAB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771592694; cv=none; b=MZXd78PSV+A/PXp40DZ3Gbj2XEY6SbwkcME74RBVuzvWp14wV8ou0coUXKaQqhYtC+iSpf9LB2kzPOc048LirUtla29ftD8S3gRuBEofQB7o1npW3y01e3R7ilzr8qUuhRQf4J71aAR+kbmKm4wffMyTqY5Gifo1sb5/qJBfi+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771592694; c=relaxed/simple;
	bh=SCJ5VHzWhUmDKXklWIvTtgKGOyeo4O5CFVARrK9t6JA=;
	h=To:Subject:From:Message-Id:Date; b=upuD/PH5s15FwklmqMdJWwm2IvSrwv/Hf6J3kGTm97+0yrAY3UlATrCI9w2aQ4nS8oJkwuGu9gfjtIgpjp59ZovavGsvrPsL082VTbQmN7EzuG9s+jBp7tc3RMuyOqAcmJefGbV6Fz2sxlxo7A8I+QVdnqralmmPwWGfrgFnbHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWVGSeCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWVGSeCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDF7C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771592693;
	bh=SCJ5VHzWhUmDKXklWIvTtgKGOyeo4O5CFVARrK9t6JA=;
	h=To:Subject:From:Date:From;
	b=qWVGSeCKHlQd4KNZPAF5h2px4tFTaApcOqhfDT8YIExTXSNPIy4osneyhKvLHoHHs
	 bPVTVTyWYKHgBUdo2QjAqHDFSaB9vmXHy4CcKzrrMSUbnTOLYR+7NI39MFItskSfHS
	 VnbdeUkdx/kjL0FgKIvQxiu9pmps5rvPKQO2NR15E0p0yOqHfO0cAO4D19rNSFS/br
	 /FQ/5nCEZXkIWs8IdnqsoL+DpxTpKtnwowaVjP2+fFT7jDTGIRh7U2Nr6gCLhw/027
	 DjEQrleuoMXPRih++X/HoqI+aPlczs2wEObld90FJMfl0ZhPUTBTMtSBp0McSPcwGu
	 yzd/wbIgZ03MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A47C55AB9
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159269360.7677.10186780477231338156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b140f485ede943a070c5ac22c9cc901035429fecf21d7c8b3c45623c6d97ffb
Date: Fri, 20 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771592693
