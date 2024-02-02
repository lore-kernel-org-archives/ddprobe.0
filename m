Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4BC14690E
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706893096; cv=none; b=P8j6TXOgmMY0E8x2CE9/Ccd8aq7IAIc2Sgi5J+9y6CmbPJ4VlbjUBcdKZpWJyqCsWyEzAnlK5Js/vnF344qU1ZqWqA8FpIkBg8eDQHhj9qS5PusighWnIUiooEdMqrQ3cMS1yuRXjhM9GHuEFKu//Z64v8gneMoDShv9KyraB9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706893096; c=relaxed/simple;
	bh=3ow7gbwTSv2K0OZ1JoAYp7rvrzD8sNrlOjHY8vPY+6I=;
	h=To:Subject:From:Message-Id:Date; b=K5V2lv/7/GZTMglOUP3HsSAmY4krbEsehoToX86d2VSU/SxtXI7QSt0OMpfWtdm6T9+fVytKn/BNB0j5wY9epq7hereWCb1BmxMZwEKut65GUNTBU8/VNsUvo1ek35njHtktX3nT5Gfj7cosTV0lzO9NHqmVJuLC2KtiPGalDhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulco98gL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulco98gL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 816EBC433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706893096;
	bh=3ow7gbwTSv2K0OZ1JoAYp7rvrzD8sNrlOjHY8vPY+6I=;
	h=To:Subject:From:Date:From;
	b=ulco98gLdMjbVa/7+8LkYzZ/SJ5y76kO5CrtPTCSa03vS/kyya3G0GT4E4WqAQBGB
	 qCR3COe6PR4NxkpgHn0AhIe9IJwrheJ5m8xHO6xgWPoR/0vjjF3rDEDBTpiRD4xwQd
	 tjkyiiB03sBflIv2NHdLSr5kIRTNkQqSc82D9hsTj2KgzlS1j+5DbZd/e74OLrtuY1
	 IqfY+lH+uP+k+zm/5rWBWkG3ezRo/Yc2C3cXC+q2q2Z8/Z72lOLkUi6CsjouE1VjcH
	 EtgjWzId9oKiemR2kD3f9J4NvfsekzQ/Enza0knuQpX8Kw8CHfSIQzO5yhzEv591H0
	 DZQhSS7xRjKpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6191EC48291
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170689309639.29131.17146573178790133209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbd52f4aa28e4ff30834920a4a8da681c0b404aa620020be943c4fc0d8395e1
Date: Fri, 02 Feb 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706893096
