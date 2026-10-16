Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5941230C161
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792161634; cv=none; b=P2CJQlH8KhGV7iQSDFYoXHkjX73wSCxep/N9B1QT7pwQ8ofDAAdR2nANG9X6pSNAxZxJUfsy5U8PZ9Iefb8Ya4umfTbABWdvOdrQhoUvzDL4nL9ZZjNnwK70QUXw5UgzAfpcu6MBes8AL7P/1c7ElCOyjA49sm2CUmMg6FmRy0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792161634; c=relaxed/simple;
	bh=5+aAOFMvKZpxyBhZxqRkmAuVOyE7Hua8hxlTipEn+0A=;
	h=To:Subject:From:Message-Id:Date; b=OA3dgv3zrGeufazz1hp5I0lY7qALQebDFdvR13jRjrQaig/PvdG3SxdqzOxPUhdEulc0kxsC5RDHsPWhFA7zmOsQ9j0aHMX3Z8gY8E+3LQN09sLPBXPXaOQExbkDd/u74eMh0z2HRYOwA5JMZFOAaW708VSs8jAkoBJcm77FO7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZ78qNON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZ78qNON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF181C2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792161633;
	bh=5+aAOFMvKZpxyBhZxqRkmAuVOyE7Hua8hxlTipEn+0A=;
	h=To:Subject:From:Date:From;
	b=QZ78qNONXAwdp4ezJvQn5JREyZv1dtBZ4+FYc4oT0Skn3H45iCRG5jlRjonOgnaU6
	 SkZ9728Y3Sn4Het8FlUgsaAqg8+n45+AR9dyCJN0nIxKDx1M09fVYVnBfQ1dAkvCM2
	 CMITlmgd1YFg7o8hQm6OvO8CABvDZhudDYE0MthJi1A9bii+JG/4PqZeoLDd5ht6iK
	 iIrVM5mw3E5NtzY+/mU0KiuODzh20g11wN3/vKWo5oh1MrEZzI6Z1J7WDOCaKrZjsR
	 Ii+us3hPOUsf9MpropjeGscF8RMIzy3FqBqRLcNsmEu7e5BrfP5BsvM5febfDwYCgM
	 n4xwXhPT5Ox7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86F4CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216163374.8184.5181727223016449658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021aac3a3f1a05534c38bc5ceccad0f034182b435319a524d72459c292997019
Date: Fri, 16 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792161633
