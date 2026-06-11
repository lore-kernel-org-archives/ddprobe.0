Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6CCE56A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781137594; cv=none; b=BvSRBUj4XFdMBC0KtEOZ45dk9uCyJRfLO8YzpmQIUCaTZrEjTj8BpgJZHd0Nf8NkonyExpvtDtbQKWLgnd6y9oiroXvX+OI3wK5U9pMHExrmNFqoyf+LbaZUjj+FdXDyI4L9hc5wtXS20FDB60FWPg+a2RosYdvu83SEEYvE+eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781137594; c=relaxed/simple;
	bh=mjpE1OC5P2f+xO9ZLaCMftuWIX9brvYITaFLAd2tC8I=;
	h=To:Subject:From:Message-Id:Date; b=NxXjVju2LJRH8ZRq8atVQOvd95i3k8biz2W9zOaSpew43voPH1lVuWPbpxGTDYxM5QfsTIFgL9KrQqscQER6nFviG0XHG0lTXQt8Z/ZxnjcpS8rs3gGkLnk112z7ohPwcbFA3rMSQttYd0M4NSte5YSZpaSdFeXNyAKHeyTCFNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyww7JMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyww7JMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C1CC19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781137593;
	bh=mjpE1OC5P2f+xO9ZLaCMftuWIX9brvYITaFLAd2tC8I=;
	h=To:Subject:From:Date:From;
	b=nyww7JMaF0cDgXrj8/X/oSZW8XDShckLS1YjdKCfm18Ip9oqi+8k8ay6Y1uE6j7vA
	 RN7aPltU8HoEEkyDnWTxyH1WURlj72ugmVFT1b0igE8L8AG80g1+wvUDaXgLM7OGZZ
	 lnFkX+i1IuwQnMaOx9MX2qUvO+TQXoWF/u8Sm/MOFIl4JS6awI05sm6iZwUANuTKGt
	 ITHFw89scfaZvnTHn8fgj1jMac10mqRqRdrvGArnuuhzIxRgTUle959pEiTfETzyz1
	 mMUJzNk5JUShfMaDinbnAyc+Iuw5ejO8EikIsA25h7XDna6o1YtZO7C77wlQRUFg5B
	 IVdBtTlMqi8Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE208CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113759368.24806.11098664657783186067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20168f70be3d83a3220fdbeca5209b7078658618eea9dbbc741c3a20c811261
Date: Thu, 11 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781137593
