Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED8C18C910
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728431154; cv=none; b=XZKFojUuPoy4WU5arqFigeL/RQLopgGqvbKn1gltR+eAcWrCdXL04xQeH8VhdQCQDv8YOEdXzIm+gm0/dWt7y1Dsb51Ts2VvFkUte7zmW1amPJYD3END0jqYdGDbs6Rvfs3etudyk0W9pweDXukY685ajDvzvvLlrq1iWkGVbu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728431154; c=relaxed/simple;
	bh=BCWlfdKZI8VIke8ZF2FvbHkym6mChuShykKKstX3yB4=;
	h=To:Subject:From:Message-Id:Date; b=CmtrDgoqPOIDlXoR9DucG/3Obwc/JS2y/Vp0UBN2EvCQEd3crE66WrNPId7C35fh8sDFwsqMSgGKVwyEesDXpaXdwBgN4wSWnx7BywX1tXLmxdX9eADXH0zoNGWfy7yUAwNKf4qt3aypuxANTpFm0Rir7zfnZOBMQXoBAh8qgvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFoZBm6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFoZBm6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD1DC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728431153;
	bh=BCWlfdKZI8VIke8ZF2FvbHkym6mChuShykKKstX3yB4=;
	h=To:Subject:From:Date:From;
	b=OFoZBm6hpO2OyFVHot2pqqzivpF/9gqBZLkJHaILimJTIWxGwf/Jn0k8NK+OxCuEy
	 1vEiQk57JKXeTqqLyQtIPAiDcYdIxqv5jbEB/LOPE6sXxVIZACdH5JLU9BCPKryuZc
	 ZJfuEnFyjB+pQtlyfFBBMWvjNLj2DmyAPFzTY5xTd6kDNBaLhuVVg7GbYkrJCAoxCH
	 3IQ1TYwDMwTGC56b/K01a+AQbtHMZPHGJTQCqUi9PcfPZLq/zDetJt4dT25ZYxPHGv
	 KBlhbmY5A8VvoXTX6xWwhHR3Afake6NOK1z7kTu1/AvCtnMbBGRerGScH7mzThJtXf
	 qtr/7XueQD2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A4BCF0433
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843115364.3810.5824161358566278366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531ff9d1a85f199995a13d4fd30d2676a15c4951926b61ee039ae17472e0b54d
Date: Tue, 08 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728431153
