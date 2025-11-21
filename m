Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C8633F8AC
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763716315; cv=none; b=n7S8xO64u3PiCUSNrytyf674U84mnjam6UuJXwQcq9S3n3pSn+8h1u2uZNY3rEn2PBc11VTUt+m8q4892byf6C769divdWgjRp1LD4qMGfUMlOTCwxIZXLGIj5gr7WtIg9vvn5qt4vpKjFCwh5pidG6g2PFRb0FrXN7cGyyn6wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763716315; c=relaxed/simple;
	bh=3iJEjhnOrcsuJ2+ob9XiZgBxfWd1+SEfXUj9QP0nkYQ=;
	h=To:Subject:From:Message-Id:Date; b=sc5ZTHQtCM0Q2/FW94DgL0V0PvbwBEcqlB5uQo5JrfVAlLi1YkT4edYYmC/yjedASIzkQy/F2sgaIaTYl8Ws7USnDCE1BAG+CJW7o+dP/ErkqdIwtunO+XW/uFmVbFYagiJ16Yjt/Vtd/XnTHtI0isNVusetDNOYOdKWbSOunlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFl+q4zC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFl+q4zC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6837C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763716314;
	bh=3iJEjhnOrcsuJ2+ob9XiZgBxfWd1+SEfXUj9QP0nkYQ=;
	h=To:Subject:From:Date:From;
	b=vFl+q4zCFbtLYZKVqdKNRnrGxNsztFPC5oNQ/e0Pz854/QMYU5pwPKfpzDvE6v6+r
	 RmOldYuuHEG2pGFIJM6G/3KG1aYVX8yKUGaiMO+83q199QefaDSrnghZmFYQzoieSf
	 jt6JodS0tWLpnCAQe4meLfVIC6ybBLXzLm9r2OSmhZIqMMhLPQ3TpJu4MsA3ZWciz2
	 VJd9vHi2nkquz/jZo/W02AS1rfS/1avqY6Bmxb6JNqUvPWpKoEJsu8ZUXE1pX8B/34
	 dXSHsxWnwpLm/0QxvkSVmTgRu1iRWT30jV9BJ3LHy/zKqsu1xsUYNzwVbsbLp/wp85
	 d0NTQnV8x0mOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9274FCFA759
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371631359.32654.5178177008200061227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7945aafd9d4210214ad0a1bcb0430fe8cd5fd8e65b1e73a0e0025ca4ef058c53
Date: Fri, 21 Nov 2025 09:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763716313
