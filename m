Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1525A1A23B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780548274; cv=none; b=k7OFr+R1jgL8kpDz5gCy5x0L57aD6kJWCoHF3w3JBL4ofeiYEuRJwYiGGT/aAgyWPZCKhSuA22RsWSCxTi3YMqkWruSri8s8eAp7yeJ7fEzpCa3AcV73oIFQlbtsihfK0h4aaDHwAYFQ6gfSQPZTNOgZtRoXqJAeIBBq/CHHEgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780548274; c=relaxed/simple;
	bh=1mtpJ/j9IJXB2xswQIv3xI0UcfQt7QHub5MoWDB8KKo=;
	h=To:Subject:From:Message-Id:Date; b=Gv5l6sXlwyLrb+Dy4d7tC14vwg+qJ4RSfNOM1pjT+fRCD08gn6JEaL32ySGmA/BD5FcwD3/qVVy9S/B7y2NgvStlZw7cpY7+AG5Gtp7O1PvE9AJxsYEkmgACE6ssyPboKmTeZ+F1h/n95hY1j5LwRsxSs2b5NV9bzf4dOlmwQ0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olsjFmv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olsjFmv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CC4C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780548273;
	bh=1mtpJ/j9IJXB2xswQIv3xI0UcfQt7QHub5MoWDB8KKo=;
	h=To:Subject:From:Date:From;
	b=olsjFmv1fVepeWM9Mrks8KY4N5FoZo39AdaAi6Gpcibay42lieUJ4AIQrBvzAI2I0
	 kQXHlF4wKvf+U0IuJpdJpZApJH5kZcFxtZ2WD5x4tUg9bf9rxkwBkudsceqIqCB59t
	 AFbmqHlEL38XE338s2KWMM4RiAi4K5O08X3qtp19e8gMX6ickTNAw+j8Ot5Rl9P4zM
	 /6lx+zfS907xyQoprjWxlz6pCr6ttK0rUUP7/DIczxdJ+gBLsn37cOMtBwVqrkqlkw
	 QTVvvvW0f2DAOrp0YGrPFfTxWl+iiOVxztibQBQRActnjHeBCWtck20KUut9iDlU/5
	 RgJ7gvn/QhpVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9614CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054827368.5612.8497678222958990994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285425a447c76f63b7f288fba754764bfb89cad8ee6ba7479b965b2cb6d64861
Date: Thu, 04 Jun 2026 04:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780548273
