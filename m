Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6215E35B633
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781479594; cv=none; b=AxVvDGEfk/erExN/QaNSgrsE3Z/3AXvQfuOrZlAtjREigKWmkZPN+uRMkABnobfDLRIzZrJjqsffuQHFmx+Pj3irAu2fSpTpghFepaoQa2JhgzubeQEq7+t9UFKLhXma4F1vBuRo/T383rjsIE8KxAzOu3iKS6N/MX/RlMvXYAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781479594; c=relaxed/simple;
	bh=yUaaZYjM2pOLXOstvAKvMYbj6RHb2dRbQaoWKJav09o=;
	h=To:Subject:From:Message-Id:Date; b=RfcWOSwSJyvghuAuuQ38rIH1KVpk4hPeHg/MV0qpH6Jm3JCb5tRNoG8/U8P62+YURdDLYYifFVNHtap6F7wqANmH/+swfqa6nMInWS4c680APNFC/FDd8gZ2ERtuES5D+4yIKuT0FYH5FDk8MFkF6J1JcKWuUCyrpnZVmOfCHnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsiuyYWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsiuyYWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B39C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781479593;
	bh=yUaaZYjM2pOLXOstvAKvMYbj6RHb2dRbQaoWKJav09o=;
	h=To:Subject:From:Date:From;
	b=OsiuyYWGC0N+T/en/RuYHsV1kyskLrRoTum/lhaxaRkgSmQRoXySk9vTtJh2JdPyV
	 gE+H+FZzbD72vtW+Srlt63W5N9oIrE85tB77obtfwNpktQTZjAuVUmCdGhZ3+uU1mv
	 ODWxZOGhh+JErrAYml2/JRVEU2yK4zo3SJdXs1BtPyIBGKh1DTXm4cBrOsKU0SoRYB
	 QB+pSfyLaMcrtjNzeOII2CEHvwUk2pHj9sYzNWq8mXgwfU7k8Lz7CmJ4ZanCBW4Vzg
	 L++OqazRN2rRkY4u6pwVCb6IjEchLyuZ0D2LnDWiPsYQQ7zU92jGlWpUG3eT5bY6nn
	 8buriBhcvKRHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C416ACD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147959375.8037.4037353735299033288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f172dc4c2d1784031504d51f7a8d41d4c7ee6bcc7208fe19293c69bfd9618062
Date: Sun, 14 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781479593
