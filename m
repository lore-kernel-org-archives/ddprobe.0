Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469C436AF6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779755554; cv=none; b=tGU6Ok97BdaJRBvCozGU+w75SSnNLgYhZtZ4V7FvV3nrGkUDyQabVqn3RHYLqLi1HQmxVecOpl9jfLaJNrJ00liDqZte6LFAsice6ZrPH4RvLj5y8VvKMwkBMq8ofbZTUVwZgb16zLR5p/HiELXzzny2dAYo4/5LZqlF5AnELvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779755554; c=relaxed/simple;
	bh=cOGO5IJIdpMbl+IdJVDyKwbLYq7Jr1cdUMR+6kZF6Co=;
	h=To:Subject:From:Message-Id:Date; b=oX+EffPFM9HgMwpQyMgsLsbEEMDZD9Q82tYi902g3dhhMddzdSLhxLkT4y+xwfzHxtj6p6K5Yk4Y8fPMYxZHFrTzLcj4TLoq23Y7ds3QQ0l33iyqEHiekolCDFysiH5syzsKZg4CEDYR6A/B6omP5wllWQiV4WcQD4fMfX2v6Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=da823gDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="da823gDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC80EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779755553;
	bh=cOGO5IJIdpMbl+IdJVDyKwbLYq7Jr1cdUMR+6kZF6Co=;
	h=To:Subject:From:Date:From;
	b=da823gDLAw6tNU084NlqmwmPlssAbz40WNgCp304yik9L8VOONCGlXtGk3YtLXWmY
	 C5cNscWNZjb4NtN4pQOmtpqfMor6rBJ/opytmxw+SHydScs84jReblKGVs7hqRnK3p
	 ckIYyxbLaCR0lBmNFZXVuRFVxzQ7ePlc9VpU2g1k1ouvhR5QIn6HfB/d6DkIMy2UtK
	 ePjPt2oB1x2Z9P7TSH8viDYB6UE/WiZF7BcNitfEfjdfCvX2xIiPkAePXpBtGdH7WA
	 3CheEQa9Q7jLaxzhA1AhHhmKtybqxhcSgB9te7yOif8oc2Y+WBoXMgCvKvWRV41mrT
	 x5QYtR9fXT49w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE7ECD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 00:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975555371.28903.15152990007374797042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fec4782a7bfdf0d4c42452ede8134835d13cfdd96dbd06ee2ca1cda46130d9d
Date: Tue, 26 May 2026 00:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779755553
