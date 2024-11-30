Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B5C1586C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732985754; cv=none; b=B3Er68kx5UTlS9KMrMg/zb0MqES6yJLur5J255sgINWRa4y99M2cVRCYsJZxARCeQBJZleWYDQAuWGugxCVse5ikH+QvsdNguuqd06VvhelxdaUFna7aVixc1tzMpAs65TYmqbI5Gn/DscDkYSfEPiILbHDi8XPt1un2NUjuh+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732985754; c=relaxed/simple;
	bh=guiegMjVW9NO25gF4FbACNi0qNL5q/1vjPrfY2hDNYs=;
	h=To:Subject:From:Message-Id:Date; b=ESE/bNPCy65FJFriv6EfJNmY7bvqMM+yC3V47DP0T4gZNbLJkPeKRfmW0bTkW5DmHNj1MXAbJoptMHxKO6spR6HHwebtpl7qDHraFj4FHT4pKZsyWP6bo7+kRLQK9AxyVZkxgVaetxTLiOj9M0MrUMpjUwQnqJsIECrCkw6RAqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPDVfIFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPDVfIFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E7AC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732985753;
	bh=guiegMjVW9NO25gF4FbACNi0qNL5q/1vjPrfY2hDNYs=;
	h=To:Subject:From:Date:From;
	b=HPDVfIFkbajiIQR4ZbmjWVJy64XOYRTZsj3Y4UvRHz7z7DFJeBAiakrlNyW+2suoi
	 7A69p+FQvLpgjhNt9u+8jmcvOSPjaFmbOXPwmkqcnGHx1sQStgBsysVRA5enO3PMWc
	 WZ//NOE19M4LBAEQYho4hG7eSjOI3DQMWCIBIt2/Ouk2LfEwcgLAdD3JI7ZjpSmXX7
	 qn86HUx1WPs8YZ7Q0UiilXgauy0NOZY3PVU6nh0nq4rtYkKREWeBlLErZFnP4ka1lL
	 Drb9roUtsHOQX+U/a1Ps0L7cDI7EJAkaA4DYVfLPV+mnhFo1bzW0CMexNmkjcZU2+5
	 siOvuM6K6qreg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A257D73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298575361.2469.5644675888978606672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae951160656497696b174d0a34df4c16a691ace3087ad77e3fe3284e84f1879
Date: Sat, 30 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732985753
