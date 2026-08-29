Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EED6306744
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787967634; cv=none; b=X0wPPMeIynNCEQjMcxBR5XXiQ55vP0fvvJ+JnFDXceZa+2o0tl6vazswiLANZJKQEd6y5h3L1rqrQHBmbZFlWbBLyDe124WSXB8nQ4uygfoon5U/IlqnMzVmVG2sDxd+543Ik9hvdOL2W1EjRy2DbQIVU+PrOpNSmTHOXRwqMyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787967634; c=relaxed/simple;
	bh=gNuqX/hF+JNviftYihPvgArhMiHnc65b20zPTpd6ic8=;
	h=To:Subject:From:Message-Id:Date; b=qgLHyxIp96YI+yGLPNzcnZ/RNBzPnZHa2bgkKdljL3zgZrQk9Q7PaAMDv6WGvV4bVkGvy5EmeRggR7n9tfDAy4E0MVe3ig1RNS6pkHpTmbVmVzDW+YHX0ZdTKYo7o8Mis6uf0IbZrdQ6AcK9QsZA5frJbl2o5GL0ClcSFriuJt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcGGWYYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcGGWYYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B15C19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787967633;
	bh=gNuqX/hF+JNviftYihPvgArhMiHnc65b20zPTpd6ic8=;
	h=To:Subject:From:Date:From;
	b=DcGGWYYerPtiblQ5McK9mVDnHPhCr42YenZ45Mr0nDqTX8acg3oSml4wvbbWPPoNf
	 bZ361ATUxpbp1ORfHgSt5kicNJgUDPveApnjtZKjM6PU+sSTuIHNQtgLvIQnVB4G65
	 L8w66Z44qCy01b/egPHmMRO/7ahvNn4MWbAu9jaNfsGK1Xa4HoXheEn2KJt6VgR4t4
	 kL4KbOX0eej9kdjJ1vCJ69+uEg09C+Ry9MjzGAlD2S4lVbQqFu9GlNT6MKUZzpA1Hc
	 Xl7ZrCGVWEqV36jfK2NCzRlHLRxujSr4gmeWx0+39ushY5xAG2XprzeQRf57bAFtgx
	 bWHxV+Tyb1z4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9C0C61DB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796763369.29230.4414147298992482502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82bdcfe5e5284873c02235bfee9bf51cda1bf344cb496c0c5860618f5c46524
Date: Sat, 29 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787967633
