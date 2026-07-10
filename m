Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F37C401A25
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783677514; cv=none; b=j3S+8Vesi/goaYKW/fT1mMSPqv/7nFOBYjOPLR+gnbpVuNu/xeeKu1V7o4pTvestgst2S472H/A0hIjxjRsCYsxl7ayn0/J4n6q8dK0h4KY/3GeDDej/jhW0wDFglNPG5KbKw/9fBprSP3bO4RNXibxuRFoRdpHujx4o/jJEE3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783677514; c=relaxed/simple;
	bh=BvhIPxtw11S2vPnO6e4widXbOQSHb/U7rSFcq4OfyvE=;
	h=To:Subject:From:Message-Id:Date; b=SQcEpXxneLx1B7TYmq/PSfk+Wfj3mYoOKJ2/Y61I67+oVkmTlcgLifoFa6ra+6/7e93ceNrXCu5pjoaiIj0GfDQdEAJgmyQ4mgK4v8LREv6z6n716CFuNupSZsHuozF9S08t8qosFwQlUlnR1pgrYDxbrxAE30VO2XOmS+mqdBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUUv3bs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUUv3bs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB08FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783677513;
	bh=BvhIPxtw11S2vPnO6e4widXbOQSHb/U7rSFcq4OfyvE=;
	h=To:Subject:From:Date:From;
	b=CUUv3bs4Tr0z68SCihSLY9ZjHu8nmRPalCoph5g5poSK/T+7ipZ++CS0oGS44IBW1
	 p5zPCoHYfmRYApNr/ggKCVSuj5oyUxVfib2gUWZDR18tf5WL5Msi0nC3P+AKfqvxdE
	 +BMVLmI4QDqdtCM/YsF/47b8ARdf76hq1gwdbkWhWZ8Tu8AVLokJnI3cO+kCmDXetK
	 JYaeppjKqE21lb7YLmA1UaAopsKl/hKl6ulbSQ6LMclMEJqCsWuEjDOcdUVxfse9Sm
	 /J+9fG0gZlNUw65FnGt0QrFvASMvedkt97phlgx7BUGx0KYxcJEaqot2GgVtjDaVXQ
	 9bUZ+WsIiF82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F97C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367751368.32046.18257532635758281349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66c91720612e3ef9b8e63abf7a6f7d135d247d36d95c8bea72257788758f614
Date: Fri, 10 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783677513
