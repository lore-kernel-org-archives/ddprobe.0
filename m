Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5037942052
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737177354; cv=none; b=nbhL7MOrOu3ubl3Jo2Cnopg0AxfVmFqSKGYgpm21arYglZ7tTCQ7ZP4BTig631Q1jjaOyN9OqPeuLbfohGVoQb1iY5Tn9nBVvo0K2DL88CCrOoUsbgB/852UerhTXWUBnF0YnYLIlyE0VqCYnKg3M6sEKJpVdwHAwFalolYgXIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737177354; c=relaxed/simple;
	bh=CTRrG3+GVVOVyfUbp4E9TQTc1Asu8ASvQZYfJSuv5wo=;
	h=To:Subject:From:Message-Id:Date; b=BzJs+fzetpDMYsxLNd5lhjHHMtxKIDCAniBqmd12tpgezcP2/elbOrl7jpMzNlK9gOW8GH3YR7ePkugWy3IcHMsxVapn+NiJ+OLq0kVfTujCzX1hecBjaHALCsFVmKUGn3zI4pt1YOzBrm9eIHheCMyH62JtksuTPBitDUowCO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBaXwuXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBaXwuXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8319C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737177353;
	bh=CTRrG3+GVVOVyfUbp4E9TQTc1Asu8ASvQZYfJSuv5wo=;
	h=To:Subject:From:Date:From;
	b=UBaXwuXNSkgFCL0DvVDpbdMTVUV2mFs8Cmc88wytJ+aGQQa22+tWy567ghBloi/wP
	 QDqm49GuUiXvZAFbcWR3s7FCqOjqFr15Ozln8MagPYccFLT74arLzybWHzCwEclP4V
	 jurKABFxQ90OoW7VSwEGp7RqtPsGkKAonNKWp9HbX/8u6R8QRyNvrdwUrTwk91Fl/O
	 oKl0r25aHux9mciMUQCfuqVjEsmnHjr+h6ZnNEU2gY+kcystKvEGRmeFvQWDIalRAP
	 Mnu8K3kl9BO4hcIMMXZoG1HIUoWzyAeTVgGtxbFg6+InkilfdgoEjjNPkHidSypwBq
	 gIvYJQ+Jd3p+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1474C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717735362.22109.140450755516566424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c20985c2888fa332dcf1fb3f2d3138e7081abc4ed5f76bb09b3860c67c6b54
Date: Sat, 18 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737177353
