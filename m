Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EF335DA4A
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773417294; cv=none; b=ls/DTzSuLBq3jk1W3qpt1ZcG9Bz77up9dsjo/T4VfrRD5FM7r/C3v2yDBEQZFxx7IpQE3LuW41sgFlYRrCYfBQ1iRQ1Z+QnmbWgkEYIvHLv2MiG4N0Eacca92DS2mQEPXUrSoS8P/8Fm1+wFZMIrQA9+sFocnk4ncPqVUib/E4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773417294; c=relaxed/simple;
	bh=eq+bZocHE5qI2mnoRG+WV7T23+MDO3GPG6MIdsXAIsM=;
	h=To:Subject:From:Message-Id:Date; b=qCH+zbOeBf1O1xtAV6PWFXjq4ecdqoYhOhYNJztiY6GVok1+WCpyvveLcrd3r4YYOISfR4tDQ4/ye33XL0MT6/L/lWk+Myd5lILp4Uw+3ZPKXJehz7+abZJ7VgB3J96tGHLBaLeiLI8Iz8KASY+7wLx3pK6/Tt3f4xTCTjdreZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/FS1lYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/FS1lYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 991A4C19425
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773417293;
	bh=eq+bZocHE5qI2mnoRG+WV7T23+MDO3GPG6MIdsXAIsM=;
	h=To:Subject:From:Date:From;
	b=S/FS1lYMr+pJMBv8NSuNt23+e+aOl9DCsMhBIkrwOs1hkQV55EQXcT59Oo8HVxpXy
	 7taOtJxQUp9Y9g3cDef0Cz08E7HGzps1oDy9njYIttE3PBFtRtibqNF/x9j7SyVQTm
	 pvHJ5a3MlsurWVJ7pdUFsvct1wKgdUkfX2C4vyKCExMueXrAj0lXvau0fOANF+atxI
	 Y0Rd1xHwn/KBKqDfzdjLnXTMbNMKwD+qZCcxrQq4WOuLn9vAvT7PO5hjx0rKJ1PtMT
	 bZt/rkPr3waTPApwshNKuVyDD/X6hTjFOp3XM89cE4COf7NpZadEhR3lWLaygsj33K
	 6BgF/m4AgEzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DE103E305
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341729358.20103.3316417829270826880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cc3ecee04729c5753a8fa4690db50f7fa7b7f8638868199771e607a31303a8
Date: Fri, 13 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773417293
