Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429B745DF4B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786470034; cv=none; b=YKkyYcuKc5JVAe4HADSXB/5eQTQGPDu6sny0JeVWoLy53GJrCVmNxF55bOT+bYxmupVw2TvOIz4Rg5ftrcLs0dwHdwP3cRtDaF8dxsLx5wQR89zYU+KIwN8teKw4CTwDQkbsOgiuEApTtTCLr2OiFg5Z3zH0/lnrmYom+PZXedE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786470034; c=relaxed/simple;
	bh=r1KhwShEYapV0auts2AjroJCIcPcBioD6mQhgdhHBpU=;
	h=To:Subject:From:Message-Id:Date; b=blQ7vmeppOsqZRFvxjkLGiFPoLDjIhTkFP/quLJKeGK5Bu3EVN19vMJ11QIrQufNYBjn3OoRVqTRgbTqrT0FyOqcLhPcYGWVzSp3lah7Hg8+kHb9eujfmZHhGExM3Eq5Jep18xq3LXtEnmDtpJQcvJFFBujK9A1XJCJ4zyOGcQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrm2TF2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrm2TF2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D23C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786470033;
	bh=r1KhwShEYapV0auts2AjroJCIcPcBioD6mQhgdhHBpU=;
	h=To:Subject:From:Date:From;
	b=hrm2TF2Ssaq2zUTCaZotMIPbfnGseusDHTjZg8co0xYfDUmc/af4ZFTvlCz9pUhpV
	 apbEwoz6OnjbLBYl/UL05hMDt7x6Kwo37vlYkeknaciYYTt/i8goL6Ts1xMDUr7kPR
	 sljKukbdw9e0iRebCSgOCW09FgbkukVvJakkY7rcpvv2t9McfyBEJfQpFQdFASQPhv
	 LztJ3Nlb9VoUctRIumz916vyf/AOHOF0o5W4izyFfYzdjf0ONYgBo47rPrnhUosIKB
	 +oAY6xjC0PXWf+DhvZxFLGhKZSwM4rrljtV24Hxj25vizImWBGbPbDrCwGBW8Nwbae
	 Hn3xlTHJFevlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24F4C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647003372.3629.11254877948540475641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1918a24c69a1438edc30c8e0ef356e2d917a2d43735abcdf1adab9c6b97946
Date: Tue, 11 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786470033
