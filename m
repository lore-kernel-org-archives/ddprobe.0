Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1715420DE3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770679434; cv=none; b=Oq9PFR+UCeSkO4OGVvZd8gwMqvawxSewZfw05T0OJ7eXREwGKnFIn3NkILFKKuUwQDV6blr5bTi8YzPnZrLqnkLH5+DfUwrZR70VjyKyh6k25qyN9yojMV/NLgJjZihRiyCyy/5vJ+hRieya3y4XbYsZbZp/FG2rTpEgaGcwEVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770679434; c=relaxed/simple;
	bh=dXhtx2NzWcOkbmHfKmwssGUzoZrTa70Kj/LLrJts/yQ=;
	h=To:Subject:From:Message-Id:Date; b=RYOpkl3XBopiGIojj4zPcdPZMuOY26Uf7hIqrDoQTcdr1YQXpzRbxaorqF3Cvixbu2NPk5pDRMg5UumQeYRlc0pVIMsYdSsbvh7HKLbrHYw0RFUXRdNiQjbVWzPnQSet/2eR7AOjv5Uoo6TksI/dW2pyuxgJkahJkAFs6ydpYQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXy3eZ5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXy3eZ5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8262C19422
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770679433;
	bh=dXhtx2NzWcOkbmHfKmwssGUzoZrTa70Kj/LLrJts/yQ=;
	h=To:Subject:From:Date:From;
	b=EXy3eZ5mo9YdJG+NCBReWZAtB/P5+P90OD8bbl/XpluvR8f3IVuVeJfxf2W7Z5Zxw
	 wWXrZoQc8Dvs/SiFVtf7Y44gAjrBJ67bE3FvN36Rb1OFxw8yTD4JG7AjHzXuEdpYCK
	 dMF0Tjm+6Bnvq7asn8EsjjRo5yp4Jk+60RLFHkG43oPTgOVUM5rOrB0IPADHJJNUHD
	 5eNZ5G5AaFzx9Iy7j5WxSbcbM1r4fiLFNu8q6kGjdCUe9bsmPM4YkpO9M4cf/60NWU
	 /DE3Zlbm3WBMOQ5lNu2AWtMZgRbCRia3ipUWz5GyUTfgtFRxdQOsWRDzCtr0BvJSbw
	 4kPGha5+nMgIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F2E94622
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067943359.2262.3758416910839605188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63540e5379396c9f20ec778491f070c53214c5af38bf2bc82581b0fbef6bf7d
Date: Mon, 09 Feb 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770679433
