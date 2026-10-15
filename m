Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500F73C1966
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792106434; cv=none; b=i2tRI91m+eSGFYh+jh5SxDC/nSphJNxaoI2/EWM+OV8jKm8nZ8DIyRdyNCe/2ddmNHbnLmwDeslvoZjKxyNN0ILXT4DXzKmNVEmxkv04tsDoNI/R1m9PSd0UaE1isL+LJF+U39+imhHO1UYElwf3Tf2HgOSL5Jqp6Hx/T585i2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792106434; c=relaxed/simple;
	bh=TREWs5cGzftS5P6Sc0eDw8S2bgZLIs3voIC+uPxADM0=;
	h=To:Subject:From:Message-Id:Date; b=RX5qYhugp+t9JI+J+Y2lZLIDDWGDgur9FdZxAXJlQHsT+npvcSkdEXt0akZpTPGvs27uZLGjOTQiU9+o7VE+zZ+sUPcIHTz4Oxtw6s4SoFFaMfMoT8rTUcItbh9zNNH5sr4HlI8Sv0mYRfYsjL3jF46SI512cBmaz9ZGhw2p3Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfkoD6dG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfkoD6dG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0718C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792106433;
	bh=TREWs5cGzftS5P6Sc0eDw8S2bgZLIs3voIC+uPxADM0=;
	h=To:Subject:From:Date:From;
	b=WfkoD6dGUyH3dU/9hGpSJblX1/orJUejiGwGTP4YsmycQGdCQLF7toduQt8c9ZtsK
	 sMsdGedq207JHxst0GuUTldyNir+uyXlwNtlKEYPenwlICU+UkHmpWN8yBWMHu4PTm
	 l8YGlJxhsWo95o+IrBTNrM58u1IjJHQzXgXOtpMIQWI9CX/plbX22tAusdj6OG1f9h
	 fQdO5w3z3/8600cqSEHbQ9kMUac6Gq3MG1Cm3eK4nyKvNFQAfXVawF2Zg0obII0iZF
	 dHtDhYSyS5U+K+K06atH+dS4LqN4vEJ339nIGNwo6dxY6PMfWNic48U7qQF7YMyluI
	 Uwh2PQtSRx3mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02BACC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210643368.26585.10540191391315209278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc0dacf6a88aa419623aebd78b0c2d2bb5b9ee27962f7e0878ca06f28e83c03
Date: Thu, 15 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792106433
