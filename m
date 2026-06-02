Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D4F25228C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780443274; cv=none; b=kEmCTpeLFc//j2clo4f/sEKcQ+uOTIMYsv6dcuJFDTpahy2xW0YkojYlhGBXiBZqXDS+zIOnh4bsJzzCo+p2crp+VvV/tdhM30Q96p0GCTZL0yvGCRuQNRw48rBV0Z30x0apZxjYr6aipOUTRNgerD3cgPnapWKyqFDe1rtPFRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780443274; c=relaxed/simple;
	bh=u6FhbLEWFOh/AiPUzQLo/VPdkWblFzXxd4B0OX6hVXI=;
	h=To:Subject:From:Message-Id:Date; b=hW3A0V/X8uBngTbS1ox8hJ0Fg8Fl5yVKQrzx4EHLcQBvdRMWgvPdQcdb+V+RgwPIn/JfSD8K3kyIUAF1kgOjVLcZKCtMdza0e4ZK4dxai4mRY3qr/koGUHuxncyAdvGiQEGhYzXINIv7G0gd6xD9Th0qzD0k4LhBgH8UigDPhY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWAiNXgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWAiNXgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA74C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780443273;
	bh=u6FhbLEWFOh/AiPUzQLo/VPdkWblFzXxd4B0OX6hVXI=;
	h=To:Subject:From:Date:From;
	b=WWAiNXgT7q5+8tCL4ZDXI+SxNSuNr5kgog3GUvzfWCF+hJakMztH9HC+vd/NbaZ00
	 U91Gv2XRFq+3okp5FtldbMeXR6K7V5yOknp/t2a7gDvgxV8A95dfjhPdi6zMvEV9Y6
	 ZfVMOXAE73LTWfaNOMOwjyHNbBgFDtwUmPhHV72EQcpTmmiy+vErDXwlIjNo0+bC8Z
	 WsY0Gtz1VKDh//qL09/4odgNCycOGvyXE0lJIJV6rq3dea95k1L+Wu74D0j2mMZXCl
	 Ug8ig+oklIGaxMYVXRZ/8BncEFfVJz6ZeTvzGdjc/3eBe8K3jXUa+EJCq5OfUSO1/U
	 r0kCmmGjX/33w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE807CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044327368.27526.10006440521240563321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7580e06f4e3b9564d605741884cf33e50b63292546a4e01b309b30fb2f32ae1e
Date: Tue, 02 Jun 2026 23:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780443273
