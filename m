Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AE6182B4
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 04:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724475354; cv=none; b=KnhhMoHMMy3mspHXZfKS34KYvetdzHhIK6vYlogfY+BTHjfl1+H5tP5/ALpexsEMN8X1SdX3tR46Chi6rbzSyNBgV0dUH3cqK81GMawTUr1SC9Cmkd/o6sCu93yOAybd9S4GrXtsFUORagQoR+v8kLz0zsueI8X6s+G2w0rAGlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724475354; c=relaxed/simple;
	bh=VQJ6whaz97xTtYeQ72hgy7hGmItZvq3M/GiwGzGOyQk=;
	h=To:Subject:From:Message-Id:Date; b=CpHe9zaJmTpbzFRdrju5urJ2f2Yv4TPK25BdwfAIEahjO6IZbYTdE6+8mxoiqQp2IrueZBz4GTfF8rnPZ0ItEOExUtd8dv1XrIHbGVkxhijPmxxPHRaN15zA1WibuRaWj8M84NZmMdm5oqNcakzyH8QBrTG3WaNARuGNGLDu6N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDTwitrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDTwitrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE073C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724475353;
	bh=VQJ6whaz97xTtYeQ72hgy7hGmItZvq3M/GiwGzGOyQk=;
	h=To:Subject:From:Date:From;
	b=JDTwitrAZoAjqd+PwObt39XSoHJkorekcj2mrIB2PhNWpyyNbIfdWXaqeiQTixOiw
	 edPHAmnigXU2YePviJsNy+IX6jGtIgPKYIPWopObnboqAg5+GF+ygyF4f95QwqVEpe
	 YXEdtkP16JmBMm88pTPFE/dhZ46RGwRm6j1EYuTbI8fytiTOLWIA01Lh9HRaridWJ3
	 x1l/F73LglMvLQC5fhI7AB9HzXSNzgypI674xmO4EZBt9F47tyZBDv2lFv2c5XyP2U
	 vn5ivbhJa/aj5qS7tHOTNiClmS7EPJryNAnRBKMIJlx5Wi4XVrYaMOrQo2Ykrc8DBK
	 GxQsro/y1SF6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B179CC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172447535368.32242.10594526045682832136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3462ac0c668fd77ebe7e29e0616161a9b5cfc4ecafb89d1cf171eb5461728a2
Date: Sat, 24 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724475353
