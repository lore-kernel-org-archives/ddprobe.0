Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3B345006
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706597897; cv=none; b=utZBEhKSOyu4i+ykEWrWK9Zp6mPbrSCjF7iNERjshmtMg0gzs1hKm0kGisxofrjKdtNAbyh8x7XclPLEs1aJq8LEj1quDVhcU/rC/xlBVP/lAVKXSEgylX5b51a4kbD0WbVPCdEx9dns89SbuHix2NxOyiIkWCDW6kzW6Ja8ZL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706597897; c=relaxed/simple;
	bh=P05g3qT2p00G6pVtGsMEb++Xseo4e2z4Gcb+0MF0OeQ=;
	h=To:Subject:From:Message-Id:Date; b=afFcYVTL/y5G1BO385Q+t79A1Y+zil3oDw3Nfh45oJdLWA2M4P7eVAXiiQ4uJgNE1sGE975fRy5mMc0OonkswuqW0h2vT6DnDmZH2mb+yGaDYC5Vv6eQ0kim8HNm2HWxqo8AoMSDrRQn/QlqThw/vm0IUkpGThlAdxgFQZEDSZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urnc6od1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urnc6od1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76556C433F1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706597896;
	bh=P05g3qT2p00G6pVtGsMEb++Xseo4e2z4Gcb+0MF0OeQ=;
	h=To:Subject:From:Date:From;
	b=urnc6od1F3wwYiidGC0zZ7EVeQjlhciXRL+AtvtDrv0gf5zqtkE7LwjTL7NnIJUmt
	 QERkPKPY0P6oQg4/dIlni15untsizsF0NGIML3HbNj/1ojQ/SuPtT1sRGI7saZP/uR
	 CEat7aFj/puhlVdMrNPHWdUO5jDYzCBVQcCMiXiD2vxLH9rWsQYF+0RVBhcH69+u87
	 bJYRsMxfHIpkFe7z9sfa3duFgJ74dj0g7t2ew8OBN6XzKgIpAYSQlzqSg+lJBCGSYF
	 7iSzYItbKED67beIFK1AmBIhe7noKbUmIKopQleMlNrO0qTPiXsK1CQXcayFq7DCDm
	 L0sJ7hjo0vw6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FDFC46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170659789638.15149.8855271342409965307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3189f9da6ddc5865561adc670eb79611bb703698cdd6ee95bd1d814ffc338129
Date: Tue, 30 Jan 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706597896
