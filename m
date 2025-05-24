Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CA7DDC5
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748075394; cv=none; b=gJ7yFFfLXArD+DhqyxZGD8NAw3nRtN0sZh+tKomW4vfJDIFGzw9qyxKL/6s1Et/+RiwfKAVp1huoFpDHND5HKMvRVLuZKIRnJJoqPCDBK2BYFMSe6IyhnFr4VE+5xlWiTWWLXTN3Db7B+U6AtsRVgfek72D5X+6q1s2mrigZA5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748075394; c=relaxed/simple;
	bh=bMPGohs1sPysAizl+JaIJdKICOVfvivo22AiYKjSqAA=;
	h=To:Subject:From:Message-Id:Date; b=A/LspdQr7NWQQSasESZJUEzxQtuDH1te0Oaf5rYLmD6dinIr8bin4RE4d30LuLE90/NVqRlkBY983TTIXDtQT1Wv/DKpFkchlKS01ik6wWb2JNwxcq1sRyjPDdPKKinbYq4NjGG70foxolqstrgTdvGQIwlbM7u+5cABYgaZYyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZAqPkeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZAqPkeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA578C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748075393;
	bh=bMPGohs1sPysAizl+JaIJdKICOVfvivo22AiYKjSqAA=;
	h=To:Subject:From:Date:From;
	b=YZAqPkeW0N3iyNuAZvqisbtkm8VMGjjUS+8dMz+Bx+VMXVOiRAg102PwTk/J0nAnm
	 KIvBwL6OmsXCv+Lh6XJTj6qg4B5foOK/nr0lDqxhyhF83me7lyKYRpZkFqLmaYt7cb
	 4zZmuh13vx/juepGbaPR2auRTOmIE+b8hf1mU/UF8bsfihUKpF4Vl1vVdyS9edyQuL
	 e21WWDi5Pf1X+66jvryM8VeE0M36faVlgerb33+00j7kMZ+TLJ/s5eaErJKKFggxuc
	 9t/godxo71r9Dm0fk0Ja2fz7vsEqUP5XYfjOw0vln56u940PvoV2ecCO7oCND/hbel
	 1nbYYyzjoLMsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91030C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807539357.10092.3642414622240377968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e64996b793bb47485c7b105d6448fac7ab0a6a8cbad1bc10af4c623fa7b3472
Date: Sat, 24 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748075393
