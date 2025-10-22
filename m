Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B50719DFA2
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761107994; cv=none; b=ZMvnAGey9ubxJulJsCUVOpJHKe6mhjv8FWFySJSO56VGA605HdSCwPScwfsooLgXw87p5s4QrStC0fDauszrXVsud9+/hZkIhF6zO/2qk4R1e326oZnKKQ3xcVk9JkVNuhTDGORWtju0Cg/LMrdHRKJDD0duQRKTWcO3JDZezGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761107994; c=relaxed/simple;
	bh=JxofrIWun/1qgp7xq3RItuScXMLI5s7qUD0qK+mrECU=;
	h=To:Subject:From:Message-Id:Date; b=CIhJTLXlDkr2HaJDdvkPIT7kw9azaD5OO5LzLCo+Ujx0KjJ/b9qAFofqA0seH67CFJ+xfrHKtEu3q7mVpppDSP7XYe2n1ruuAG+zXSIE/WZX3UOA7iSwdNqtF03FEo411f3/Tykrbm0LwQjL2f2iPjX90QiLWdlOXTW/Mzf1KXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sczPjRV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sczPjRV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44C6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761107993;
	bh=JxofrIWun/1qgp7xq3RItuScXMLI5s7qUD0qK+mrECU=;
	h=To:Subject:From:Date:From;
	b=sczPjRV8OEYT/ME8ivAkMt8yfrUKidaO8C14xdV7m8VyasjfC0/PG9ExBQMWIq3dC
	 pi1UDFS0Os1+4oyINrPx4AY8LdmCPm0pwZsi5O3vFxF65+dv0fLNEhNlq3DU5O/xq1
	 /IQdCHneXEo/1dgjjENYnlOBTlplgWHXJiiUXmwvY1QSV3U1+AiZOQ/5moDehLfLJ8
	 dw9zAH0ajp3YmgSfLFiBaAJK2hgdO7+FQ0ZB8xkCF5Tr5LyzhB71Rm4JbQiefT5D/F
	 UydrpFDeWdfS6DYRPAcTZoeVcGty6P+TV+ibUykz5XkIJUnAOYc89fhCjbOZJA/5FN
	 apowpT+Hu2wKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92364CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110799358.30425.16512138996505629403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d740bff634db3bd5a2a72a21ce084f5ecaa9e9a9870cae96c7885b03fdb557bc
Date: Wed, 22 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761107993
