Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35587BA49
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734344754; cv=none; b=FHYPh7GcKT1xvQn35cAhbOpiaAA4RRxzv+3Uux4vQlCqgCqUlvkW/HRHVPwcQbe1IFOi3/WlRCU0D8n0FG7NPVvs3xgBYmBEUOV7wdCQinN/cDl5w03yIfHAd1bm6oVDfJo5m8llGpnmVVFyltqypMQvrL65iSmzBaIHHMKQBoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734344754; c=relaxed/simple;
	bh=ddFlNq311ECP9FxJPehGPCODKfmdtURmXMrjOH6RPz0=;
	h=To:Subject:From:Message-Id:Date; b=fISd/1S8AX1lWh9bVdXhlbKNzNbu4YRrOVew+oyLA2ZfLkl8YY5KLXhb/+MyLdImzd+pOp9+lz+cJHGfLpn995KImgiAzs0Q7OtBW75Fnh10Cw42AO5nVr6Xg2tp2X/kW3vAR2rStGME1h7goaUPjiAog6bca1ev7X25IKnr8ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXagVXSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXagVXSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3555C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734344753;
	bh=ddFlNq311ECP9FxJPehGPCODKfmdtURmXMrjOH6RPz0=;
	h=To:Subject:From:Date:From;
	b=rXagVXSvNCu2RcDd6uv0LLl7cQ8tj37pzM7A8dsUf/NthH3RM6ombMg9R7V4kVqQb
	 BXdFPSVYXCdJutenprQxP+Av7iqqTpU26BVEY3AKfyM/TaunXp2dbDNN5Ic+KusU0P
	 FnCsSF7+Kxs449PmsIbmtTEA1Xr+e7UD2mDiVOXQ7ZoH5qMsaoMiBxzZ9sQPKLHHs1
	 MMZP61uQofajY1yNHb5CjawySQK4uOo+hmcQMx1RQhslRPMQZT5fVGfH0MVClfsW4A
	 U26OinLU7XTQ1YrRLCMnkmqzT/xfGcyqmI8xihqD26RJ1HwYccPSLeEQRa/cU086Gz
	 9/7KU0H+f+fZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96448E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173434475360.10679.12947235660077491250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e71bc98deff705395f30096bb8914b649047e811bcb561c15ab36bcc65b650
Date: Mon, 16 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734344753
