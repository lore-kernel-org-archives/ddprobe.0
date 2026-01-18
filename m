Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DA92E6CDB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768747434; cv=none; b=kjyZNdB83q6574EU9ryCOZyOY79J/Ba8Qq4qMoEsOMvLFmhsnlvgJs7S3xhi6Pz0NUhmPtNPWUYmWa5dJe0ITpkb7H09qAMAaBdYrTth9i0YHJMSA2q6r9LnJ1er3Q1pjzWo0zdzVcN2C4uI8fOnfX5MSIKr8j0iMCmRjgUQ80o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768747434; c=relaxed/simple;
	bh=9Bz/MelwhSM8pVKnXQ/i711Zonwsvq5eHp9PDbrn0FY=;
	h=To:Subject:From:Message-Id:Date; b=tMLub9n/TMRWT0b+67h79RFjpondi2oG7KaQe2oqnU75hBr9muGMl3rgYGB8BRUG094gi7wfqCqOX315ZwSRxRj7Y1BJkabLFIRSnjHF4a9P8f+Rm3YSlJ8DFjdiCFBcYL38lSptfrWwhTLpLxEPCbxRYKjZqWdF2JGd87hc+LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNw4fa14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNw4fa14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D014C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768747433;
	bh=9Bz/MelwhSM8pVKnXQ/i711Zonwsvq5eHp9PDbrn0FY=;
	h=To:Subject:From:Date:From;
	b=vNw4fa14jZBw40qvmDRlZUvOg9Rxkd24PAbcEWLGzKZoIKgUMb6EcxAqYSWAdBFzm
	 ZyO0SV+9C6QhPPDSpOM4NIhTmSMi5+SfaXE+HRb3MbteM2RENCZjIibuy2kYMfy/hf
	 roCOc7tQ9quwrh7zMdt73/BYgC6MA6Du4SQCVfwerzCORox248LnXBe9aLPZhrFIAx
	 9NxTjI2LniQ+8xbsvcqbEHG6tFF+hyBrSB4Ig3y52KhGK2yML+M9swq5viui1/cet/
	 L3edAuY8VxeUbb57r9ESFIzsgV90n24C+/ghbXyOXZaadLwJg97yt384UldXBZjgDx
	 U3S7eRXlJodUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F927C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874743358.2699.16935544327184413877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a45df2b5dfbee785251701c4743bb2b4911d532152c9ffff55fc9268cde16a
Date: Sun, 18 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768747433
