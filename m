Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAD9318ECD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784020114; cv=none; b=q2bgTJDikzfpy9lVp/SNIe8rXaGxW1hbM/27Jbtkn9c3fG/fJcoUEpxRBdK8QVWNIEvmgnNBPtj+4L7A+4luWoki08SEHup+obH/fYzpdpS7pUuPTPHw5We3UWuG3sALvox5q3eii8Dpl5AsbBt9AGSxZU76/Waq6p1SqTKPz9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784020114; c=relaxed/simple;
	bh=wFoiOFwve72szolUWBejNvgt/3fui+dC0uhsSSFAhZM=;
	h=To:Subject:From:Message-Id:Date; b=EL66m1zKIDILP4VPqvu6jQtWfA9Tt5Uh1p9o9CBwznUUV1SVzttKKhm4DS8Oa8T9/DUIPZsrgvf+hKW0fZeYoh1Ivaj/EP9YyDsO2lOLGhs6438aLRoY4taoWn4cTWs2QUEK5WNLywq3d6ENoVKBsSMjwj/FIyrjUh/hIujJ5ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GURHqv39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GURHqv39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA691C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784020113;
	bh=wFoiOFwve72szolUWBejNvgt/3fui+dC0uhsSSFAhZM=;
	h=To:Subject:From:Date:From;
	b=GURHqv39EoZkqblsfzwo7ONpi14O4xQU/1PmEZUbwToB93tZKnTKv7s3X2f3VrPXQ
	 GaWT+pRoVLNZpMTbS+sWghKqSKoCZYPzi4OfVDt7UfaTYBPXqY0slYScNSoJM1Duww
	 OaY80zfd6ZPxbaNrGLuhnrpuvPUSVpOXFFxvCCySExBwKFrFfTeF8d5cpSAfP+kESU
	 bHPASmpA8igQp2N4O9wWIMZ5MCutBOlOt6KfwnPjFufW507122dI4C/V7qkBGQvCfh
	 Xq4ex9D5Q/vKbqYztlOA8L7b9xbtwKVUgSsBNpwok6x51h/kInZTdhW9kD2h0jQTBy
	 5cOD1EKvBNKpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C6DC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402011372.1284.10395277856490719585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d86853c9c8769268e5a999092aee987bdd48aef08b50c11b67996adec28d14
Date: Tue, 14 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784020113
