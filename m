Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27718320F
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746335995; cv=none; b=q2B7xHgxEHORs5hqKe7eOQ8CV8aa5f5/uK5lgO0ai4/oD7I1UfWolCn3d9bopKcWrZCdok6P/kyXGLiEKruzLV8NsitjgUGenydozDOYSE01x7/GBSffz7kJNpwd4v9AGJAxmGQIyn6BjyZMioVQe59c660VXBafRRJFG4gfEps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746335995; c=relaxed/simple;
	bh=DMAqUT6+w2QQbxN7ndgEcgHX0q5CSlx0XLMcsLuLkoM=;
	h=To:Subject:From:Message-Id:Date; b=Q8uWmBre5onhcsYoTVrPvPuFr5awG6Eis6logSmeaMYaqNxKoolN8aVmCZPb+9vnEXG2qOp5qtd/vQIF1Wvp1j6mZteWODqzTTQW6I7eN7y/AC3uwrpGq5mY9JLYin8k9HQi6+CpyEmdvV5xekZGjgGteDQNdNFCRUjrXahlOKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/7tm7b3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/7tm7b3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A8C4CEE9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746335993;
	bh=DMAqUT6+w2QQbxN7ndgEcgHX0q5CSlx0XLMcsLuLkoM=;
	h=To:Subject:From:Date:From;
	b=R/7tm7b3gf2bzHpi8O6PilP2CgqQ/+IEIkHVq6fy+w6ypzIIuZDBTZWfninoAbHdh
	 FnnD0orQsFTyGr0I1niG/9r6P+EHL4Lsh9Ah4G+jYdgNWtw/GMdaIM3myqTqfqO2SC
	 QBf4IMbRplzt7CX3kyRvYUswieBoXmqNtPOTQpfNWP7DHSOprhF5+8102CO+5IBKJe
	 mYwJeK2txZJ0qYTeANRvL6JDMOXsv4XIiZ2t3wuTu12hgREjksqi41oBEiywFluk2P
	 X4o3+RnRMMRe9gXeEMsiF1fXBn7oIXSDNR2thv/W8SGGn1sodHcjhOhWZaeRIg/O/P
	 LjU9oiKuSEQhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D63C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633599357.30851.5256859469380542780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f513c3e378c4d14b68e7eb15eaaf361f42ef90cdf1289777663ad2845afca3b
Date: Sun, 04 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746335993
