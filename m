Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9198B375F82
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789687235; cv=none; b=fVcwCzfovuky2nQDEBpcVEfajDDfpReFZdnqEmDRTD0rwue3US5l8aw/9PkBOgdFS+NqVnCLBIpSVrjS7QVTj+/fA2/7b7dX0vXSiLO7OC6lVatSSNoPP1sJeTINIhgNfVjOl80ogqeDJ8Zzq9Kf15WatYd76bUptA5/swGaojE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789687235; c=relaxed/simple;
	bh=/ypvGPRQHCaq/4h/1P2ivcbGVBrpqTC5hRrq7OhmO1I=;
	h=To:Subject:From:Message-Id:Date; b=f6zsSJBq9r8wRGASSjX7FbB5JAT9lmfbWBxMs0108Q4WH+N7EOU2g08xc881wsJ48TyQ5SQiC518nkB5dpN10kuu+kIDa7gPSUqJn/6a9uv1pVkX1LPhdR5fajbzClHwF5xlr08ChDmetjJXY3vwIenXqHWF58Rgk+fi+Kanh5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2gzSu5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2gzSu5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB48C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789687233;
	bh=/ypvGPRQHCaq/4h/1P2ivcbGVBrpqTC5hRrq7OhmO1I=;
	h=To:Subject:From:Date:From;
	b=R2gzSu5Cg+q5e+kV249pronC+pKjch5vzslFonI8MSXOF+vdK4WjnwnMjaPgxTo1A
	 9xwlzW1278tkoRr4JCcRSNTd04ff6FTJYPZ+j4ANfiAYOiWvCuyYwmsnS9xC+vjWmk
	 79zkOvDPuFfv6iGG2qZ2GkLjsy9GFEYgGxphxm3AhiKCzpanqdy87PBEMsAh4nzuLe
	 3IMax62PPsVeNTAVgx3b8E88ct7a80T+y12HYw7wNY3KxrbnzajU5kEGE5majdjv1/
	 9/Cqm5AER83S9LeWnYso632d4Zn8ttdRB6/mEyNRVAsW18CvlgsSf2/F5YcGBMtpG+
	 3uVq9p0Au5HJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD623C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968723369.30939.13483930354541058352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b9e63c10051bd3dac00593985e99384b3d94e3d506ef2ae35feb3c28931648
Date: Thu, 17 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789687233
