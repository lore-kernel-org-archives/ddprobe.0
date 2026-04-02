Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 905F73C0617
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775132134; cv=none; b=mf1HFHsotpPlQcxz/sJt7+5+pC42w8qSvrAXCf7Ww+jjqIIp8j4qOgZEXZCJfcyZAmEDO8cu/DP9EuCsXNh63ZLx7MIcV51se5Q3WnGizLW8Ilh2wj3u1v4tYRCTjLfMhKrPRxVartiMCQ7VZgdKis3Nr0jCAEjhYAj7mpf6DZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775132134; c=relaxed/simple;
	bh=LaUX8HNcLWJDle0TPcceK1AIOuWDFnKadhlm9Vx4iKQ=;
	h=To:Subject:From:Message-Id:Date; b=AuAytIf5X2Ae9IDGDVj11eBBCsANu0RIF1mAVm2GjshtCWC+74WDJjn3LaBiPDeQMNFt08Llqw1/N06E+QEbKuPCi7mYgQHZwgNrgq7hxcb9qRzoTNJ2kJY4LKCE7Cfur0DjvruVoLbKbgioSAvWbCVWckx49bNzvkGofh4NT24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YF3BG2dn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YF3BG2dn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFE5C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775132133;
	bh=LaUX8HNcLWJDle0TPcceK1AIOuWDFnKadhlm9Vx4iKQ=;
	h=To:Subject:From:Date:From;
	b=YF3BG2dnbhrtSGFy+Dit9i0gnF77srxda0DwxE7u/Z02Wk8ZufqR7HUrW9852cUMV
	 hIJUAoFZ0sKSLp0+de+zy+w7l1WIBRwSPVYOnN92kzoxiebyF137b5rvVc0uhPe8HI
	 lNZwScCTqd1UBkn2gL81UtbPxUc14/FcQ7xoDZfweGz6X07nLFJwxfdFuyPVEVSxp2
	 +6wi6dGgpnRIuSrxlnxT9lYzlOwv6dx/EIcXk2S3YKbtARipgqsfsvz+hSJBdroSQN
	 ZmkwqvIBy+wttwUrxcv9DtmogGnTCowdDB0TK6q9aXRbFEVbwJIWJ0xSGowU3v0kJP
	 PytDG48dRIJuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD10AD39418
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 12:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513213369.14227.13135349144093079615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f7f36eccdbe421f13773dfad94ec9f0b656361e512e8240ac191bd1be3d7a9
Date: Thu, 02 Apr 2026 12:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775132133
