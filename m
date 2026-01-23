Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A21530E0D1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769168634; cv=none; b=Ni6LfDy1RlreQAVrk1YbkQTqqRtertqxVz+A7hrEXk7oRag/yIPcDMW+bozW7s2Elsy/YV4VlmsicjmT74lAn2xrdlQSL7ipb13jXF+cJgYR79odKjI56wrBiAtZyxa2rxaq0CWyLrc0Kl1S0z3PHZRQWk5o4SGBUhW4fQwFQDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769168634; c=relaxed/simple;
	bh=j7xd5rH6pW6DJuLWODPMoY9/AvmQgLIbE7qcmMVfgKQ=;
	h=To:Subject:From:Message-Id:Date; b=JoreyCakWIx+ev50nk0WcWWTPyrlLkBg52Ok7e1p2DTpuPT+/MXwWbD5foKQXfIx0BiWLNKWwcWnG4tQgz+JSIB5xAUzxCYflrnTnJ/zRTkwchnbtzjZeTkMhjrc9suVudLiWhmwANIc+i2TRrcZEPKbUiXZEiQyGSZVxuUTpJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUGF5Dv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUGF5Dv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DEDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769168633;
	bh=j7xd5rH6pW6DJuLWODPMoY9/AvmQgLIbE7qcmMVfgKQ=;
	h=To:Subject:From:Date:From;
	b=PUGF5Dv1beT7U2bg46BbaelLObzuUGzYYq9G4uFDdD1iqFt65cBjcNJQKkfu8gmuq
	 AALS6Dmu+TL+riQmqtonr+ggwPcqMGf0Re7f+lUJxUJ2+cGoWG3MhELSDij75WP9pc
	 EFxyHdWFRPBV2H3R9mwwerpjWFU7S6Cz3tzzU2GgR3VIv+mqWiM5HQOhK2TnusVxnZ
	 rc+MM3/RMZRel97sEoTUmBxfne6ISaZD4l0+OuiMO2ozrGdhTq9RYwBKsAdjFFQHc0
	 b3rxqC0Fo5VSsZxcX1Vi5TpmCy/c42IzDYoB0cTE9G5890dIAfJdbSVLjfTUtLhx4m
	 Tn+uVVUjCCc5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A63D7236C
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916863358.18830.17751339259952067522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a0458f46b9cb07f5f50c8bd1ebb70b57f3b01290c0ed5e51646e28b5f738d8
Date: Fri, 23 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769168633
