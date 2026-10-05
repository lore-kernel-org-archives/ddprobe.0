Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A43A30AAD8
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791229234; cv=none; b=U6WMwsXk2TCKMOi8HDKBmPBn4fEEUmLwSrLf7ljnJ2p97XFfG7NdqPe87CdXNI4AoQeUGUflrJjnNAzwZRA6nSUHaY++dDo3U40ZRqe1El4XNIE/cuh9FqU3EpnELodLV7z5Ycz/ixsRLltYGz39AGBhjAv2jo5x2NaucSdB6RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791229234; c=relaxed/simple;
	bh=JXHU3MEYlUm353UCRmVV0KN4i1QV720e5jhx9NW/H+s=;
	h=To:Subject:From:Message-Id:Date; b=buWdKmpXaz7w0WLTC5KOUtj2Pi3mMFmrKOcS+VUuS5j26pxb6QcdYbRgtNYWZu8FzBYRL+eMUlTsGxcpnp+8oCDrBWJ64t4X1/k3nwbOHtZxeK9nw9+eDJxm2ACXsSOj8x8C4ldb4VUysc66H5BI3ihgN31gBBEPeUaK2YNdpzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TD4Oh+Mp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TD4Oh+Mp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F1AC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791229233;
	bh=JXHU3MEYlUm353UCRmVV0KN4i1QV720e5jhx9NW/H+s=;
	h=To:Subject:From:Date:From;
	b=TD4Oh+MplL3nL+nP7PwsJjEUuLxm4QkYqAvEXcbqs1PEO2RqPsIJmuOaC4sV+5cgo
	 0k7wHaR6hFXr/ebkcxmDJEq7tsnZ30nn2VT4lVOLx3MMFqHu9XDpSzHmZkkc8MX+4F
	 YxHw451URL5Vtsp8chj+9ObtboLtQg3xrYEPdFw85NncNeaAd5IlU8AXPUn7nif0dQ
	 PE4ofpYUepNOCuZcz6vls62JFELR5JafXjQud2zv69sxQaZgK4pe5ZAxPafjXxgkpF
	 PKny1k1ybcLsLGLSeUSB881oXTbuKYa+YQisiYvAxzdl6k3EA9iDJGY1W/ft8+SLVO
	 R067xY6GAQG+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8E8CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122923369.9650.17376086652044346202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab6a462fecf5d2465f8052673e9b0e6b31b2c5baf11f313224b552b9f1bb9da
Date: Mon, 05 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791229233
