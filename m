Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BECD36CE03
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781213194; cv=none; b=KSuoGkrf24q6Pu7MzNwwNhzxdEkRNdipFCJv2XyaghbSETWdw2QJ/UGHrIWKNoHGKJhZaRzOO5GOMMfqy27XxeZBcgWu2ZHyh4uiIKD+BjhKjG0lwyxiRuJ6klPtui6RbVEpH7pRHDchKdyMQbCVXIBfe1y/TZDi8M2Yu4dffRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781213194; c=relaxed/simple;
	bh=zexk+mSiEejqUhXO3EdU3s1HM8frxHmG/iHIQ0gVGVc=;
	h=To:Subject:From:Message-Id:Date; b=qmHUJiIeflJwz+iM0ror3Zp0TLNmazrXg/bvRwBFwsHcxu8Z2Pq14cyl1OdVXK6eDRFEIXhPwz1t55FwyjLSL27w9LPb9DaZWHPoP9eZn55lGvkZvQX8VHqiIS2qEJGggsWPIFLBZeqbY+FXUwoyWZLRPrHqvIJGX7VLzn+t4wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLW83pg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLW83pg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB05C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781213193;
	bh=zexk+mSiEejqUhXO3EdU3s1HM8frxHmG/iHIQ0gVGVc=;
	h=To:Subject:From:Date:From;
	b=YLW83pg07o3cM/eyT/xXDNtdL5sMunh0lUN16/ATI3N4K2j0JLmUFcNTiDYFClvDl
	 JBAiZNaXt8od57p9oPUhpTiuXhrODh5BeZZxNyd7u0hfldizOPl3gmjz39upYdsJ4r
	 hJp7CTW4lB79nOVisLJ+EkBt6U+LfwxfHzvaqAnqAxrSkHNsN/46K2I5sElFjXmuIy
	 174soIrZcXiUR6LrRy+ypXlBeIq20A+K2Jr6YurOoj2gRQFZiJ2UEhciQ0NjJw9um5
	 a0+9t8pkZj1anotirs5Er+giYzW6TyvIf2QVuDBmXipv0YGoRQooMIiiLDQHLFoX2e
	 wE3IhYXbPkmSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD65CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121319368.26322.14687109762202968595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00d8831770cfc6887918afbbf20bc33d9ccc446a7f4534449af8255529a9c7b
Date: Thu, 11 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781213193
