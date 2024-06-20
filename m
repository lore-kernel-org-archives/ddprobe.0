Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48862639
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718867963; cv=none; b=GLveHflUXLNdrYSzRszSu9fZ+yQgRNze/S8CSXtEsTrQ4wDD3xRRXzB8Xw3DjDk+pkEGKOU3GqL5FgamUDVHwRWkr79NI5s7nWrGEhl/kCF3Gw1hjCaNInDafntcnHztGDhpxmT1p0nfugScpLte9pLwnsD9CeSC3L8lBITAGsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718867963; c=relaxed/simple;
	bh=iAN4A4Ac1SqIUeut1E2uFmkP/+yN+Q9KBVnN3p6nEDU=;
	h=To:Subject:From:Message-Id:Date; b=qr+HGJROyVs+U3xpGUxa4Ma6loMPERUGp8JZkpbQGc4rYP+yy1CGVYbnmtJqa6l7nhPDqJrNPF6bfQuWsjpp+9klry2XsFgCnrJNgNu7JhcSm53JVzz9TxWCh6yBhQ3KlDRg077pvGxwtzVcy49xVehN8TtjfIibtW+FQsrX4ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lb0UfPPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lb0UfPPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3455C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718867962;
	bh=iAN4A4Ac1SqIUeut1E2uFmkP/+yN+Q9KBVnN3p6nEDU=;
	h=To:Subject:From:Date:From;
	b=Lb0UfPPaI0VM4ysHRKB/QhDNGQWKYdRzb8vrpFMslqYVdfEOBT3vI97ZDoFGODqKx
	 ZlYfObTHotpE6s6QViu2Ggk87KI1w1g7oAKOYsMil42OgzEUiFJaCDIWepTCyT1q8+
	 PMcZb0XzyDZBN2iAwf6N52vhDZc/HYOFVD7fjoCvM5ukX0JFp+fiJ2Z7cHFlearcGh
	 whviedbbHlqK3keyEYfodlEiSQuVHshETIcuaJauzjVBY4lL3UGgd8MTYaOsKY70Jt
	 z119L81ksLhwBHWJ8osxZc6hwyhnblvKcCPYclF2CNSlkfc6hyO+ZGLRIKl/v0aqRg
	 73D+iOl73TxIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40DEC2BB85
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886796278.28815.17332919887943240705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e370e979c05188ced34853d204477a4eab9e9c136ed1dc9293b211e5096cdc4d
Date: Thu, 20 Jun 2024 07:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718867962
