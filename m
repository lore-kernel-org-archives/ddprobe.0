Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF67358360
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773311693; cv=none; b=p4Z92NOU4truyTQXL9kvE+QSb+Ly9Q2RLaghK6DV4FW+F63AIYXQ3qKK/BGIbhiuege0QofDzFCHHbo2VrtrsAWL0AYC2Bvy8RG6l7Mc+fIvA54dPO1E3yKFpldKQi6v4fy68aNB/ixO7/b6lpo6UnMelbZZEhM5fkJ3Px2n1pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773311693; c=relaxed/simple;
	bh=d4J0YtdNbF8QRzKkTQ53dKbJ/n3ySPt31fe9dAlKPYo=;
	h=To:Subject:From:Message-Id:Date; b=bMtevUW8GN1YnZGYPxKPGLWvEYfU8WpaKpe85IQseWiuvQGcXusRE4KppiDw8pBG7zxyeSLyYJLjod5NhWLKYRPBsiCSQRhoMUHueA8rQh5C+awegzfTNUlKKtSPjpCN2jlPFm7eaOs++yoDQy1udNm2CE9q3cG68PyjzH3QFv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKQzgH8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKQzgH8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCD9C19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773311693;
	bh=d4J0YtdNbF8QRzKkTQ53dKbJ/n3ySPt31fe9dAlKPYo=;
	h=To:Subject:From:Date:From;
	b=MKQzgH8RFV7vUadeHEtbyRNSDik/2GK+9f3T4029aRf7+8rtPGGo6vzJ/32if08pK
	 qAGKnjhhRNNucJBCQWRxBW2BAWfF2Oz6TuKnu9nhrkaRoEIXVol/hpc0sX1ZhY4bbR
	 Hr1a2TP1fdvKURBPVyHkuCtk5aVl8VeKawxO1z5s1KzHWApamg3fMkc7PKPgREokta
	 FJU5qDp+YY15dNE8+C786YOyz3LEdtB33Z0DIwq83F8sa8GeQTcvCuSBBzEZjSz42D
	 ARfhnUed7wxjkNO5REXmVm8sC0Fe4/iTOMF4X6FIC9IfP1rwG4ka+S29KZq8ELn474
	 idT3Y/OH+/E+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9162A103E301
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331169358.17497.17906114240683241902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8a3b99c0579d54beee637d91b75e8a88a0cbab2ee49123ac777035239511c7
Date: Thu, 12 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773311693
