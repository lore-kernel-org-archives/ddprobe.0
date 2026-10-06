Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C1E48E0E9
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791300034; cv=none; b=aRASnB9XnsKrKAn1ECVyAoUGOTZ5QcCSdG8xEhLlLr7z6RM2T8gOGICKZdlOelJnxJEKqb0uk49JBAXtM2kcl/yjL47/yEOmHTbEgrH6tx0s+rYzod8DGg4fWYpajEkliG+qTQEASqXkoEuv8grsddwG8TcJpxVwCm3t6LUtjIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791300034; c=relaxed/simple;
	bh=Nasmu2/ymVvOzuy5B9T8MqTnPgh4r8JM4KP4J70OdJ8=;
	h=To:Subject:From:Message-Id:Date; b=YbUVctZZA3e7/pDguflcvof90ZODWoV1besjGz2g6qv/uEgWyAhHyrPNbN9TcM1tB5b2W+rv6LobhGvwhyMxy+AveTzc+Ci/iu4R29rKwtfTyL7AxFsGL+g0+JzHSgryFAQexxwsN+PF29CT/5l4AskZzmR/2A7LEt8RqQmIm9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxAe6FWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxAe6FWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CA9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791300033;
	bh=Nasmu2/ymVvOzuy5B9T8MqTnPgh4r8JM4KP4J70OdJ8=;
	h=To:Subject:From:Date:From;
	b=GxAe6FWRAKU4UsYf6kW3ykmqT3GOkCOGFkBAr65rUlHVqP7I+dDo7tQp/c9rYzpaI
	 cF4+kG6xlMNZvmMsyJ20d/gjCm2cQVUPEaAsYfDHTL2Cs4IU7AhFo4hnF4V5UImC41
	 +Q4phONYPJ2TnyhuIXaf14ObbSubdFfuEmgpFCVnQh95veiPyut9lZRZuGvRAnJzz3
	 xnFVW3luJRwvh0uMzVljGBCtpTqnT1g2JZiIbH7j0aILKKyte4snjweDnIqWreohFj
	 LcPN0tuBUBsk5sAucqibI4TkUVHbaGz1b/plGTDByd6Aaoha1EM4dW0Fyf064TnYNa
	 MiuGLYiskfRZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2D3CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130003369.24432.3504350560879496501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dadf498081186d1d1b9d197ceab59a50a13ff31d2905ada0ff52f00071d28fcd
Date: Tue, 06 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791300033
