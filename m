Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52C825B0BE
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786224634; cv=none; b=bDipmsCOp7zA9wY+an7Qj27FC+e2MPJdzH++Tz1cp2EQrDf9Y5IyWU51EnKbCgbFpMvZGFUxC/7j41EfEBMeG22bvWqikwtdFDsgd6HDgGFDYWZb7jRF2+nVxv2zWRzD78d/0v1ZxWGuYOym1/qocP4IJAHP/NgFtZAMOCT+OeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786224634; c=relaxed/simple;
	bh=V/xp/I1Czspo26trQJXq/IiIS2yVI8RGvLw5yON70gI=;
	h=To:Subject:From:Message-Id:Date; b=BxSGUXFn3A7MBM3Kg6NkkVGdwcQnY6u+7kG+wcFBuIeRvjBLQjz0G0jTbTlHMWMkZQJNIUBEuIgQvVQpZpogZ2Hm449Nr/KlApltWDDRJQDkja2KJ/W2dy+BR4sxZ92SpTHtY5mGSdTPaasytKfJpB9yS5vd0tvm5WxsnKaQ9wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0MrMAg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0MrMAg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F8FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786224633;
	bh=V/xp/I1Czspo26trQJXq/IiIS2yVI8RGvLw5yON70gI=;
	h=To:Subject:From:Date:From;
	b=o0MrMAg33dgr+cVQ6AEyXrli2HwPOLA/d08QspwgrXcDI/MMati7OL32+hKP4y8N+
	 sd+a2tQ1X2+26e+ZMcwNhrbtAbdxPEvq/tLLNG2mk03LTjvu1C75PO3IKuqQqHUoqi
	 Ecfez3xyd0gwtddELthz4nckfl/wsb/FYM1353fOh921gr0A59ctaoCIBLs0jLRSUQ
	 o8R8qCO3RxpKEfCJ/IZtfudhgqMSMptjXBkmHost+atDel/lCw3qFvVhl+V0SPAnt4
	 AHxrGwfK1XeTbk7kuEjN6iu85oBBmTgouPXAcEpYFapLnLrmShPnbcF+7lLap+bdUE
	 rxESV80J+q77Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97EAC5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622463368.5279.11996397541090219403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21429fee7aa38b47ecae7a1eab9d458b7b81205cde7d15b3cb53fe3f02b7268e
Date: Sat, 08 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786224633
