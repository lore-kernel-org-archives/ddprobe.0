Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A8A4EB51
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718992943; cv=none; b=nw5GeLGdPp7iEzyl09WWhqOUiBBQShW8ZztxD+vDvRCMvZIM4VjjjjD0zM01mrIYVgD9DGLGDirCs15kJ5Ci4kIfd1XYWFY4YPgulbZNyFjSBqUEsHZvO0HMDHy0GNLwcVklKmpgqgSwxQMeAqLXgQ5fafPCkHEXtiyetMBaZv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718992943; c=relaxed/simple;
	bh=nvN5Pxia7MrAyOxJmP0JA5B0wqKn+vgVxMVdj+I5FeQ=;
	h=To:Subject:From:Message-Id:Date; b=MfxfTvFz4jkPwqaI8f0WAGwcjUWlPkUXGvMiGC1g03kKmLhE9dTRtNmpB0hTcUokc562B+hKHgyR1BG8CH+YwJYuZ06ALBwbkiSPQ9Y5SC5sMha6tQrVFAevxCpZhsZG3LzbuaGh3xsL+78tplJ3TE3z3HAIzwGSgHtp9/A3Tfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiut/z6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiut/z6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60C8C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718992942;
	bh=nvN5Pxia7MrAyOxJmP0JA5B0wqKn+vgVxMVdj+I5FeQ=;
	h=To:Subject:From:Date:From;
	b=qiut/z6UOKNel+uQqjS5cAWLvULPZH6ENM11jLRq6TRuTmMd9l2JvWGu/AQYtBAut
	 ui9XGqUxO1rDTyntWc6HWl9e85zP34TsBVbe4pbbehdZDUDCmYTIjN17U6G8JDdBdm
	 ZS/xev8Em9pJUSb4cqFonttc+qwaL1M+E96pzrKu+ti22gVznwlXmx3u0YjOtAzVBd
	 HYE/s/UuxDI2FBd7BhYZeeCsfEWs4PB4J/fUUcowGJTNt8YO5vswg+QMIMN9sgPeCm
	 2i3rtrDwJETvIQ7JoMeOphXaKsH1n2fewS++AQyNCi6p86J1Lqq2yVmAXG5nGO7WcB
	 CdA5iHSNaD2CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D105DC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899294283.4725.5579360147621792073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71a3c9dac58c0dfca9eddc6d7edec0276ca8ab79d4731581aa284825b0db27f
Date: Fri, 21 Jun 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718992942
