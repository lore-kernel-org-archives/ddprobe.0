Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2077A3093B8
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773872694; cv=none; b=XwPL9t9OSBPsf8xqemzOAZaihGT/GDYw3I8+RcIPA+kwZqcTN+v9EppFZaZYlxVUzeUT77i0jSoZI9sOxpgZl73z9Ei9LhhbDSROmMZewsc1Hms6+fF0BRi2pfr8LL/Saw3g7BK6o8Tqo+qXWPn+k4McdBBOy+L6hEgVKF/HPoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773872694; c=relaxed/simple;
	bh=R4wPG5RNkUPRos4CeFn9Yd81ME7vFQZ9IdzCAnFFPG4=;
	h=To:Subject:From:Message-Id:Date; b=OB5Yc/7frtExP1hxrJmhUQGfb1BROj4vGnWiWms5VHPIbSuzXXKLSkYFwONZLMtc6VZJshHFiGxwQIzFcaWmAunGj1FY4F1urz0yb2xD49QjxSS3XpUQw2Mvlq1pGhzSJVFSvD/+9v5HDkXBR41p5jifU4aGo6nZMuJsn3v3jD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtEmPX51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtEmPX51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1523C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773872693;
	bh=R4wPG5RNkUPRos4CeFn9Yd81ME7vFQZ9IdzCAnFFPG4=;
	h=To:Subject:From:Date:From;
	b=gtEmPX51DxJ83R9VAXYHUHx0V50qtDGkv3mtkdCLdPbzDyx9udmdTVRxqpJ6crCGV
	 OMnvOSd/wqR6n8Hf/2xWZXqjuTnNylawfuD7A33ROycp7U89ofZCniq+9xmSwyBCO1
	 5r9oCE2TYTQqtrYGavapxkU58TgW9xr8YrIJ1hs944Gnv6mTRZcnaeNlsN7VmFyubd
	 bDyvqMhu2pKzs/b4KWiqijtMe/KlFofxGMYU2T9jpiKry6QuTb3RD47E3+MLpksXF9
	 tw1/PtqZZX7Q/hSdxTc5dA+S5q3gAznmuRX1eDqV8B48WP7Dc5xCibvNPm0KoSVwxq
	 mt1bDrp7f0gow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC7C1088E42
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387269358.22188.13036108015401887436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42eec33c69b0e61de2ccf0511575141999472c45ddc6a75329ee04b8a5848de4
Date: Wed, 18 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773872693
