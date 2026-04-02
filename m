Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9939D3BAD81
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775129734; cv=none; b=pY6SKwx32lgV+D+Jl20Wav991wkzUUlIOPvx8pLaZxsICb/zTAe6ugjijBmw/l07L+cEk8n6Sg4Uj16fDRyIoEUZzYU8JZ8aHVFFqZ7F0im44lSrlx/agWl/Kdmh7tOSItZ23Y1qaS3Flx9MhKTBkvP52IAwsg4ctOIaSv1Upfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775129734; c=relaxed/simple;
	bh=0vVEPdh7L1eBKsWXpjfKshFyeQJEK4HmoPuGtI2Wkcs=;
	h=To:Subject:From:Message-Id:Date; b=I+4ft6Rsf/NEuC7lt0FE0ucd5MPQhnyHrT0mrsC0UIriYuQDTsRcd9F1/Fl1BB84jSM6H2d8ixJrjtJXjTvPzcK6TpH00B5YNEUtFZZZxcC5FwTGuqPCv5KSss9DlWnGuK+3DzeVYj99yz0N8hsp4NFrGPBqHQVco5xh63rhGuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=As+yAFBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="As+yAFBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1744C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775129733;
	bh=0vVEPdh7L1eBKsWXpjfKshFyeQJEK4HmoPuGtI2Wkcs=;
	h=To:Subject:From:Date:From;
	b=As+yAFBwjUFHUUYL1lIX1hmOnikW59Y67PQQBgcfC15TgnPC3aCnJHQbSX5z9/oXM
	 e4YrRl2njqPMn8+FpaENuuwAARWdGlfBoWc7HEv0R5Dhn6JIRuAbU/sSKElLw2qMAD
	 YWNaraMFTOUM6n/nMdYDfhkXIRNwOWenDHTc/XJvHWINeNrPx+bYnWcsQxTw4cE8Kn
	 WdiL0lY6EAzuk/EZyva1nUQGzSwfOdDfuS8K4UPg4b0sUM+FDCbJyA8IZR+JATQXFh
	 ntAfPmjN3JzPjrdpq9qg4nqCyTmz24U8vwjtcJl0ghyJpneoF3yYu9kL9e+Ca4WL+K
	 EceFWV+TyNbJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1329D39417
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512973369.17772.18116335352097188903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f13baf4ba34a1389007c3b3f38a77d12281bafb7a0d64b1cfb89b31d4006e4
Date: Thu, 02 Apr 2026 11:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775129733
