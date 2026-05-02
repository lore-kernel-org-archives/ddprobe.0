Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CB31B3925
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777713454; cv=none; b=cALXWTJDAy+Sr05lK1tqcp8EUIr7b9zaIA4egyZEjOZhRx/kV4lGoTBdXml5t1/2LSaMlWEzB1ixgrwrSvuQIexuK01WkvoaigR5JNC7GDSf4E3MTIwIJTob8HwjyFGmUUEcv6jCZcd6qjozOcXtaEazmkyNOkq/60BjREf+jtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777713454; c=relaxed/simple;
	bh=tDITbc+QN47Q1IqFwcSoY2ax4WqLy0p1QF5tfd2CLgE=;
	h=To:Subject:From:Message-Id:Date; b=B2P9AJaESPo8iCO+dB7cmIhD+wdDOlf5PD7gGZutZqHNqwr8j3RM9/PvJDJAJzCvDZ5AyRSjI9KtEL0Pl1yPBV/t++OSgM8wrahmEGb2oHDK2JgRh4iFbbnxL+Nl56qTodnf7V3ME7oSOe2nYENBiiKZVtHOMZmpv+cIBD0MUPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RspmZNDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RspmZNDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC652C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777713453;
	bh=tDITbc+QN47Q1IqFwcSoY2ax4WqLy0p1QF5tfd2CLgE=;
	h=To:Subject:From:Date:From;
	b=RspmZNDXCWVypHV09eIRBq6+olFy+WGYmtr1b3Nnv+EkfYi5oys+UMmh2tGt+5Owl
	 +nJBMhiPSQV/TmWdpJoSwHgf7b47VztD1a8yx0ayUrCO7Ev++xOJPkJCAiw/ve3zm7
	 Mmz1rOnOQKLWFSwK+I6xPjEWCe6zE2RgJFIVMIOnfhWxzYQVPxNw9e+1OVszuNbVKt
	 T6MDz8pKnRMBYnqo3q1Jh6TnSsvIZkepfwaMSKYWLRNdvnKBfUpuWJpbnXdXRxpMwV
	 MUU+rVLdU3xdic21A5lf1iboPwh48DNZzbil/75jdDFKA+oi0s/Q4+sv5l8HuOKNkw
	 DHS6wdL8uRcbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9967CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771345368.1198.11828580269163368951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657c013c011e0dd1bda6920f13de26729520f9abc0a2b97c941a24a7e7a29ae4
Date: Sat, 02 May 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777713453
