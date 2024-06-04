Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE5650A93
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717493723; cv=none; b=QBX5M0HBUznU45NbH3/vNFyye8NY+aQYoPWMeM9YdaXv+Bw/fK9Lt0dFA0wXwBRkMBWnX2FQs2XEjONYlHpZ4wL6izPutwbLhLMgt7xvPSI5DYjvK+b8bEUS5S2R2dgj5NGSw4RiHSCpIeDzLqEd2AB8AjLWvuz80KIAX5OdUdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717493723; c=relaxed/simple;
	bh=bRxBUQTIJyvb3KDr6aCLmM1fsltazl8Q7fP0snWA8/A=;
	h=To:Subject:From:Message-Id:Date; b=nFlhP55HK635xshbOj+U9CE9b2A3lpOWLZh/iHc30pHeSOCxESquAmTLjArjyJDtNUV3WYEsxMcRVp0Dt4Y3zups3yP3P9xKVHObodOAA31jqo8OdI6j/xDnxKgsoy/b6VAJF2Sjxoq6lEikZWNmbdFQFaF0zrhlLCp/Kwv9HXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzzlAfcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzzlAfcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB306C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717493722;
	bh=bRxBUQTIJyvb3KDr6aCLmM1fsltazl8Q7fP0snWA8/A=;
	h=To:Subject:From:Date:From;
	b=lzzlAfcAFBZ5pUnpesevsr3oNidU2YH/rPISu4Rj9giOeLhfgaIO/O5S/mCp774J4
	 pMNz3HhCf5+6SObaoLca2Nm+TLEU7h1YE8GlSgj5V3+72d0CfVWvziWZBZ0TmnvwZO
	 itMEOcJLHJ+ywPghVs5hDtNv2X8PQmTHbYxJl5SSjqTp49aoQpW9dm7CfKs3LO2soR
	 BL2L7LlD/YU7RAaIE4WJ+aVYkMjt/J/3+fJBemhrcBvCx8u3vwxJND+lxh9U47tnDC
	 b+Wp+FxQCffSjSSkwjNPMpH2juaEufqU708/V+w43vwStErVy/5s+Gfa6W5m4LI0oU
	 /Iti3rXShyKtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75FDC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749372280.30159.16240854918385153180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4d974a5d3d74b45707cb4407e02be54bed2231d44d17c78dcf877bb81eea8e
Date: Tue, 04 Jun 2024 09:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717493722
