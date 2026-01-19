Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049303FEF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768819434; cv=none; b=Qa2UCf+HRKnZuHrbAHEgnuh4CkI0ouAgvD/pOouDpcbpuqL0q9jryBcJ2SOAX2AUXs0Rpq1p1rWegroE1/hSu3yZ5XykotwTAyOD54pUjVOQzs7B5acBcct25u7OFLOu064QlzIajDWjiUHsAre3VoEhKUBwRUED7g/mLWxAXBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768819434; c=relaxed/simple;
	bh=fMp+079PBRZQZwefAOQWGZLUw3EChagLoT1Bi8zAeQY=;
	h=To:Subject:From:Message-Id:Date; b=Qhjuw/3mphPJghUiu252+pFxhNVZrbI6AjSUzeshPhkO4jqFUOhjstQIkJ2XUA2BxZOsIXe2qavPTED2PmFzkGZxNJn50Gf7A+MPX7GDIXp61UI/Wh3usKXVCUNgq4DKSVbQIQE71SRRLVRzbNXVLkZKR8ztoMh1kUmGmDrdhWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzbJgu9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzbJgu9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD76C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768819433;
	bh=fMp+079PBRZQZwefAOQWGZLUw3EChagLoT1Bi8zAeQY=;
	h=To:Subject:From:Date:From;
	b=EzbJgu9RMTkaG5RtX8Q7Wo4xwy2scNCL20RWMvghz7yTkRSunqMACe5+O31FoXwLC
	 WYACusZSFng8AMIQRsdVHnDKUL833TmIlFSQ4ZIh+3V+zwlC57WwZSt1x3WoKTWCSp
	 Po6TQ7xnxWKDOLafzypZqFu3hAY0Y/MmoIb2kqt6jxexKr/W1ZujtVW2sVDAQeK2U/
	 t0FdhHuQHpD02QODXfUkZ+8dR1BegwirYAvt9jeMx/gWhYLiwRiG4k3ILheI6E/Mre
	 QVJh7gan9TnOdnafIWeFzH1WMO/+ZOyuu1XFkLoRKTsosTcwkHt4xT1U0bUZk0g4Vj
	 88VTunr/yaAhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9527ACCF2DB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881943360.28842.13499961652968767047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49af9f25fade79471c80d6c7230562a0f26fb5a1e88120fdae1c4b01a7715a3
Date: Mon, 19 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768819433
