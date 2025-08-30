Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226A2C2FB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756580994; cv=none; b=uWzMOOCILhRgmOWVC5x/8JA+adReUFoXhSbX9W5PS9/Jg9dbjHvXT96unzum6HdsKB1+mvg08MP4IHu/3XXvLxTp0Edl7CYbI9vgKR8o8qbyp/lE2ZWGjiyQhRPn8KWpxGU+pW7fvvYJm8eXWFBI0OX9mlDqWE9mgd7jf40d+bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756580994; c=relaxed/simple;
	bh=m+vAlXlEoO8KhDsn9DW/evTO+t9SOslPJ28i3gGSO0k=;
	h=To:Subject:From:Message-Id:Date; b=JmXYCwNOSaqsX/uq3Raknj5nND/5qa8BFXnU3pMq18gKz+ia90rhyv5F22ceuL7Fhl+gOEC5TkW4d3nd0qAiqHrEOGsJnWhfNXF6PcpT+UciQOWNwU3sg0G1Z4pwyfkqshuLbevXZwdhrnl7ySX9CtGsGod63OLUp+PE2yNkZLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUZfZQBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUZfZQBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C13C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756580993;
	bh=m+vAlXlEoO8KhDsn9DW/evTO+t9SOslPJ28i3gGSO0k=;
	h=To:Subject:From:Date:From;
	b=WUZfZQBpdsMs+7Ys4QcritrUHd8nM1EtIuX26crRO2DDOZ9FSyZSOPH8RfpRc3bPL
	 l3zpyt9fXlLEPQTyQRMkwsM5r/ayawrEPzQmuUrp4YP6634ii+eH3ZI2botMQEGeMJ
	 jjZEOzYkW1YbHFLuqGQtKGeuXa9MV/J9JLeRWiMnDfjm+ngFK/aQm+R7QdICDj68zX
	 U/F/4QfTJriWam+4itgEilM4lyXglZAKg7Gs97IRX82rVPsnTLQd41NpaG25raPuKN
	 nPT4isw0TabHoxnCWF5r1yrvcPIWAL/8UbUbGEYvXlUDxZUpC95cXxMzP7Ba8DaK+a
	 pFQ8pBRtDZ53A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E87CCA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658099357.8400.7196686030871622939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af215cfa5ecc98ff788e673e8524f433d85216023c2d937335b31e8c097fd653
Date: Sat, 30 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756580993
