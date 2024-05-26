Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC128BE7
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716765263; cv=none; b=bjkEumjOW6BD7jml4+IpPA27pbJFVwKaWMoh1JOBiGl9iVHDt6sDBj2KU/MKXZZi97Db56n7lgFAT07nBxKeO6gB1ZWCRSfCtzCDHwYfqpav6N3eDPe7t1WkBgtyGYG7eIZrHmqHUHeqNrfHoUmlJlfYrcHzzTC6CGglXw+mnzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716765263; c=relaxed/simple;
	bh=RuRzMR0YnwqPxDE5LbS6GoiEW4aqQ1HlvGghjMKOyuk=;
	h=To:Subject:From:Message-Id:Date; b=iSwlAmVu2ILVdCtyam+5oCcMrfYl2mTN8ibaZ2IQy3dvBwoKqgRzsNf6m2QeX9QTtUPR8F0otbzPZnuvZmkGqR9W7C7pN87HAYdfCPzJSs+sSC06cPJzsK7jg+bzTcI9HYn2hTn9HcI4U0tZmyOW+vsiqpPwtDrM5g0EZKtDXpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCY82IYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCY82IYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72D9C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716765262;
	bh=RuRzMR0YnwqPxDE5LbS6GoiEW4aqQ1HlvGghjMKOyuk=;
	h=To:Subject:From:Date:From;
	b=CCY82IYrLHYI9d/jKZk/6/Ol7843anf/etpl8byvqmrJR7uewSymewbBklkDoHEoX
	 2QFCr0rxbgVRUo72vvjlkAnhfYwgV1uCVUdpmlfsNjOBO9uP+bSeM44pDVr6g/Yf4m
	 CIV3ZYxzmnZVvex8S2/MeQ968Y6VCvWE/opvlNlHaDjaI8te6CPOqtm0UO88hw1Zf/
	 d3QJKlcEaAJGajkpGGvBeVtExsQ0AoczMazQI4j2Rn8MKGHfEpA4DG5Qsm/6pfrmZu
	 uDhaPHzP9WBnysp47MNQVk2XVcQAmZir5Yx5QdYFJrdf08MboqQNGxkZc4Q/qGoKcX
	 /u5mesOxsgDAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD24C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676526276.4641.8398259026099736285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e783236673492a0ea1b19087d31d9d537a68ff821a325458968f0b55df192f16
Date: Sun, 26 May 2024 23:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716765262
