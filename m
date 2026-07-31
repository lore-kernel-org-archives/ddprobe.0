Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B46A489873
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785516034; cv=none; b=iRCPNLyd+Lru23duWDEo3WXwFG+egAI5UuoTVEYAMrG7beQRMkHNLhx/mpIVAi2KjPmVzkldZ5idDTL+7XgpNp00buZV7nOZFA/Iee52yBYpGx29NPrtk/r2mp3Gv7/6MSyIchdMBMDVGA9RSdd/oM9OucvbpyIAGkZPpjNZs/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785516034; c=relaxed/simple;
	bh=YOHfi/tKkMF+VwnpQzbnwv9evJEHOtLeCK+ZAifWImU=;
	h=To:Subject:From:Message-Id:Date; b=nZ2fXc1t2aSWVLEybJqrH54g61/auldwJX9vuacRivk6poWDoCQWRLFLmVOJ9hOYr9srY7JQroF/Agqi5rYbytytfVrpPg3AluqOhYRLERxfjio8IVm/+t76CMDPRfcTVeuDmtiVGqGlTSWjkGlMSpjrUHpohJ0sf0Xq3eU1MLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhjqCQ12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhjqCQ12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73D8C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785516033;
	bh=YOHfi/tKkMF+VwnpQzbnwv9evJEHOtLeCK+ZAifWImU=;
	h=To:Subject:From:Date:From;
	b=qhjqCQ12NRZQ/RKPhDfPJ556VZU0Nao1PZbcetxrfSGmZPNmuyzooYZ+C9x9h8OsE
	 sIZW2LOEiSmTK0esX5Sdy1OmCxTojIHqtpcNjH+7rCz7UogbcBc4WgZ/A9fRXoWM0d
	 xqSTL/9dU86/N2kTQQB5xlhkL1OyziGh/Df0WKDNKwIfgdbSo2LHWiA6fko3eZ9dqT
	 e+zRSrBaQWMBqq0SrZPLCqgHD1URE3QEkfab0gIp49h8qbnrhCOInYujHboOyeugyD
	 GLxp+k+Jv7CSw3RdBLrYAXm2W/PUMQ2twbqmRQ4vwf0nGpK14HbbydnOS7di4meHDJ
	 w4pTdattBiztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48B5C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551603372.20629.9819613697142497355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6d59b8d36fdb52ff0345c6f8feb991f4b3acbb5b51c579b0f6dc77f44301c3
Date: Fri, 31 Jul 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785516033
