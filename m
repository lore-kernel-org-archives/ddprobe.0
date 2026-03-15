Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3574B258CCC
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773581094; cv=none; b=tP2YxVEFNP1JvIl5lT/een5Subckho5/82Nn5wUVw8BmXbiDzSVMdn3YoZZM374qdMKeNJLa7LJf0uGpA0oNy0mTXruVQ284jS68+0HZN3zN59rCZeK4MUNNXxEMq3Zio1WYhbypHHj7byfGaQ+HviD+lPrztuFHSYyUTjIFe58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773581094; c=relaxed/simple;
	bh=RNlPXLQV60fTdmohuUN8Cc/JvaMQ4HS52GJxAouFT0c=;
	h=To:Subject:From:Message-Id:Date; b=M5geKmBravwMbcJEhTjc6ClAYRt93wOb2snqQz9RMzFA/Khhb1AYkEO0o1n1LLeyglPNt8+DvQV+mRUobxJXRnbhauVEgrL/BhcXwcCylljHA8RVur+Tk2RaSIk0dq/60FwFQHPq6YjxrA19cvrHtxxMqSk0KtIgnvLhZ6khH4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEZgrp3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEZgrp3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8420C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773581093;
	bh=RNlPXLQV60fTdmohuUN8Cc/JvaMQ4HS52GJxAouFT0c=;
	h=To:Subject:From:Date:From;
	b=CEZgrp3XdNhE+27sA/YUkjcqrOqtgu1SLV+e6fWPSskDPwCptblXDAHF/yXt/pIeo
	 i/DSv0r7CArxlP5oxvwolBPMIWN5+g0Z21yY6LPPij+vc7/0K/n4OdaQ2g0MWa8rn/
	 LSHSVOrVOWXO6OKknC+kIdvr8D3PTQpg+loERbigdef7AdBqqLRcA2VPi4T/PItCK4
	 l9KNTX6PQ3CaXApizMs5dlX2nVnG+RedEy5UDQEP0GS7CU8P/QWXeM9G9UDdeAh6rp
	 xonVb5iZWTkQ5OXtqs3hv9fkPYvsPlcOk3PF7zDAZfRvCPU4gtGz9SZj+UDDNYm+Vs
	 Gs1oc2d0wCv4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D33D58B22
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358109357.27265.6424567258040428357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43ed849750d138e221a044be9709602b3aff1f8d5e4b2d109dec63c1a7b142c
Date: Sun, 15 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773581093
