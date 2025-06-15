Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248C91EA7DF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750012794; cv=none; b=cWj4HE6g8KNv5s5AsLXChcY7t71ko10SNRNYHF678xaLhzKgjsifuQIcq5no7t6jAFarM0596tNnmndU7RCWUxjgFiSAUEskhEzeRexnPXkX1iXaS5fJJu3kyuL4EnXnqUXJNc3YX+MWCbB0kzZj5tCRzV2GjI8q25sOoIxHSoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750012794; c=relaxed/simple;
	bh=PGv+a2DimLZec7oUn3ipQxxIt8WT1HCvMiunVFVMjWM=;
	h=To:Subject:From:Message-Id:Date; b=T7UtRaxVX9G2xebuN8L2Z3o7yRrTeItsF7Jhv5KlxKFUxtrjRBYuX9kdiV6oCyMhMFUYQTmhvMkho0sfUz108S2wXlA6+3SBqSNq8fn6WIWZsDg1RlNp/SG7ZR3DJ8qoI1s3Dg5Z5YwuaouVOb8NmSpzD5lJjbtjGyQD724Nbqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBB05pRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBB05pRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8043C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750012793;
	bh=PGv+a2DimLZec7oUn3ipQxxIt8WT1HCvMiunVFVMjWM=;
	h=To:Subject:From:Date:From;
	b=IBB05pRwHDjQ6XtLuq5rjc3h5GYOttyK6fPlyMyFUmNENdV6aH4d+hQGO2cpnJvGp
	 te0KsCHQ3WKAwWMb8Lv6CK9wbHxRZQVLaZ1SMZ1CZtRMbPHpV55vF4fVWmn7C+OdEe
	 kz1CWUZNbBBgAUY2epy6j1XnnKVBhe7d7k3hkslCjw6K3UIorLx8n7I01CkLB/mewK
	 EjK6f/I21xcBE8KcGQEk3SYAre8A1GkkVg+MW2U09p7pwruI7tES/HqpAIewtbbvVs
	 yW/qpPl7TECs8shpSebuLFNrWIzow8uGQoZmGfAS3sXx1Kb4oDZfUJDBLP+4b/IHam
	 OueBOu8G8zvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93295C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001279359.22571.11834223139627394356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc11bf6fd8651d8908aa3e7b9b774775a08e1aae6f39ad69124e69476c1c992
Date: Sun, 15 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750012793
