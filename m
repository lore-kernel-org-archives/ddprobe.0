Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FEF1F1527
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748033394; cv=none; b=C5UYoLamOYE+HXERpX8AAKYXlIwH/ZZ5mWIy/rLYeCxJ8tV7JfrKm4GU/wtkR3afsWA3x7RJD77Zy0UVCfSEp2+G6h2WNtuLe0zA/1h0w6QigieLVotQdOPwmR/e/YyFR8fIfy773ZS685ZqESbOlLWZXtS0qJeWSKTCWo60IGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748033394; c=relaxed/simple;
	bh=MJqa1+ClNeKZRQAijbby5sPzZByPS+4WSAJvS8ZtAHE=;
	h=To:Subject:From:Message-Id:Date; b=X/5M/rNYKYswY/EFXGXR/L7Lp53iyU1vNpi8Rdl8n8GbHQVe/gbNKblWgmJr06cOCpYq3Bo2YiSkz0I9J364WUyAxpTF9h1EXeZ0Q/HUWIr5Azg9w71VI7cfXBC7pgUyCPu/fS5Q2WyY0d6kJDvIF6G6kkJs21i/rEDfqPG83HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4PIFwNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4PIFwNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3DEC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748033393;
	bh=MJqa1+ClNeKZRQAijbby5sPzZByPS+4WSAJvS8ZtAHE=;
	h=To:Subject:From:Date:From;
	b=c4PIFwNO3/idH2sxyUrTz0Z9Yp3XJXLRAUIXSDBTk6ofLflUqTX79TNd5K+xIyrxI
	 6oIAHx+TbywFBnMJ2OMdANks+7VLSx3HCLPb7Fg+SkqUITlyE6t7MlmIzLQkSSkwBR
	 Cxi4SI+DgNkGTLvoMgkqYs/XoN6ca4BYx3jdLCKvq+ad8lAV3M88ym9droI3tw/6nP
	 39nyUth9HHqj0AY6sLJx3nfPxVcotV5Zh09cBwpljAeV7V4kXdk0txrUdjLJmth2GL
	 BbAKbt6DHP/CDBL90IheWA/pVhTB2WkE/QR+BSc86OvBXHRMQGGUq4f58BJVnEh/ww
	 ypS3cSvSf6NuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3AC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803339357.14074.11142358492000343381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8abca87415b0234e7f3092d32b2b3e07294f0ffb2e7177f4b9b724b52adfca
Date: Fri, 23 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748033393
