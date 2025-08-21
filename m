Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157CB30BF6E
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755777594; cv=none; b=Jm1oWHwEeWayblOcmJxKG61xTmbH1QlFjr56QzK6pR3wuWYt+3LDv0To/xVhPgp+TARi2qKx6xw/N7Cxn3dKtjIzEndVMSFx2Eh7Zb8vSWl+Pjq8KuCdvlny6YjjwR32TFW481Pd/kpQK3FX+xqQFu50kB8kBMYG0TvJBHTEnqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755777594; c=relaxed/simple;
	bh=wPz4yecIaaIFK5YZXor/hR2lqMS5Xset5uE7irg/KSU=;
	h=To:Subject:From:Message-Id:Date; b=s/kq7cWRfavMn3XrcfbjpyH3ZSErbBo5KcHmfldVAXiNnRGfOD6pB46xQ6sUeflq+pjciHQJbjWdKgY2b4OP7DVBJe/LnlYc1HVaM2oy7GeizzGmQLlskRIEAzKfUsPSa3fYmzHE6tIMGlYBcxotn36Dve8dnj7sGLsABo5+LJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLNK34x6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLNK34x6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755777593;
	bh=wPz4yecIaaIFK5YZXor/hR2lqMS5Xset5uE7irg/KSU=;
	h=To:Subject:From:Date:From;
	b=CLNK34x6qRSWQWbOIs8vT1ni5DgAuXylL9yZ8IlSZboNVoG2UTgxWYKQjtwi10urM
	 CvguOVgNB7bQcw2pFRmHXvxLjReh4i7sDBSDmrbpaRDQ9kroHh4F+KMhPskY2og9CQ
	 rqoywwE8VsLS/gtkV3veX32sFauAGYd4gA3UZFuGtqJqOKzTEqNoK1gtbcKSDAffcy
	 furOKjpefsm+b5JuQa196NKQGFVUzMMeKbKqVz9ztvmW5WOyNT9v3ng1k1cqtRqU3q
	 uLfWODZWGYKMErx8xqVhRCkzFlZceKFLYj9KPUpGS1yDBTHLj6tXrHsMvCze8nVYY9
	 b9/3FWa0bGprQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB53CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577759358.17989.16095251673746577443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54842944e7ae1ae64efd99dd016399f47e21d8c803791172e5c2b67352461490
Date: Thu, 21 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755777593
