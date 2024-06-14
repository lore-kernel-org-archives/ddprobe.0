Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C99519ADA6
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718383103; cv=none; b=nio5GFqY5gawfvdlGRNoObgUVarIMY3sw7gTON+x3c6yKXUpdK/2+Ch9tMy80PgSF9L8ftfdQrg06Y1IoHR/RyKuF/uS4J2zPSnmkLriLqq8U+ytuNYZFBb14j8Y9ROg/ZEUs7Eg85YcymuoEWDywd9Z6cyyExiRUHUh7fvmX3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718383103; c=relaxed/simple;
	bh=D3iZNI9bFKEOabzli7Bwt8s87xFzFxS+nkkzYW+iMzE=;
	h=To:Subject:From:Message-Id:Date; b=bqUthDgT/z/n+g0tja2XRC7vV0vwRCuRteywFpGGIAcvnQqnA+SSrnG7uXD7xWDwHOEFdKdCUa+8UchqP/wy1OTNyiHf++Z4dZGVtoE2QRTlGuHi0JIzYPRtWVRwkj/ZG7UVrfY1wBDi9oMz0OAiyC0VKZF5C9VY1anzzVWUUf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k44lGCwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k44lGCwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D5EC4AF52
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718383102;
	bh=D3iZNI9bFKEOabzli7Bwt8s87xFzFxS+nkkzYW+iMzE=;
	h=To:Subject:From:Date:From;
	b=k44lGCwQE6ytQmvBo1utRSyP4a+rl0Lh1JiA8WZ3v8kD0LjOU/fA7DCWHIx45IhR7
	 E2JJpw/PNSAWw9GwAgyFMonlDhpK1hzkFZ7PNuxRc4B+v3Bbs1Cz86ZE9WqKqM2v2i
	 iOucvUMvcKKa7LasNQuAgdsMp6e264nbzzb5fA5lZmaKltdiJZ/KSzufvrgSdeILPM
	 QowD2PrspQjCEtWl/nLhkWHBmYZsWhvFvWtxWLw9blq9QAc7uYuwlaFsBjufqhFXBj
	 B1nHMC0XeKfHiC1XLqh4UpBOUTxsOk+UvvHclF+krdd6YCev/k/56vTHfuZ8mEwXxm
	 2ZFLAWoNcA0kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE02C27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838310277.11976.10827627451946776797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5405fa4e5dd12dc8b5e579e95a798ca6c873b265a94569655fca64d4a609bd7
Date: Fri, 14 Jun 2024 16:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718383102
