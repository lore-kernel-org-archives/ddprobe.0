Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D50175A9D
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787401834; cv=none; b=u0dbYv25+kTlglQNADIsrQdYCG05aha3gWjVPydfSTUlpZWpQzxG0DJo/vSpplkre6IguPrBDHFoNS8Gf7mF7HKxadKz8Slt298DoeSwsSoaElSaqbPO/02Qy5oBuWgJiSC+ifQOWfWYV0bs+WeVHYmUFItHjXbiXM4baPCZGtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787401834; c=relaxed/simple;
	bh=Tt9KP8VNLag4C20DBf9n+apPnjyzUNHEnjNCFhOM71M=;
	h=To:Subject:From:Message-Id:Date; b=Ky01QQC+v21ssBvJgaOonXtIRSMpc3aTPCYLonh2vmly/RUvMp+GwEmzr+Hm5hesDMpHcxVMWJn1NvnyaIgZoLJav4/FNkY86Q3qYLFDBwMP/sP8hATzoKMy0/j+8jSLNCHhGfzAQI52imFlnpcJxsWvQf9+daorJGhtkvnffps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkxP9hpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkxP9hpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6626C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787401833;
	bh=Tt9KP8VNLag4C20DBf9n+apPnjyzUNHEnjNCFhOM71M=;
	h=To:Subject:From:Date:From;
	b=NkxP9hpTaqhIzm2roRtOqqUd4AwJ6zQwIi24iRdmXcVtA/9AGjhoQYihPq8eb7mZ5
	 9Z4B82r8f3Xz1YF511ULXo+U2Vgd3zPqUyonHLVNUac6nuizRJ+RUaqop0THt9uXg6
	 ibTr3CN9Qe5hsvuyusqQFRM9FMxqiIAA8w0zwCJ2SRuQGC7z5Ds1mDFJDW6slrkaRP
	 ZM35A1QzpQX/f6dAWMcaJSYcbLZsqST0yb2NIGCXEKNbBIU1mkZprRXMpy59drnvEY
	 dEadsc1ojeoTBD6y08bSg8vqiQR9rjy2YjopGamRUSs08hQQhu+k8XA+shGmijT4gz
	 KcwN4Wc+CSmmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC14EC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740183369.32610.3238264638915274208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6512edd96e076b17e071d99a62474964a6aca85b54c25906ebf9d86199bae13
Date: Sat, 22 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787401833
