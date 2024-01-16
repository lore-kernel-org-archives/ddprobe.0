Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD371CD21
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705430297; cv=none; b=uE4YPihyg21sRxKPM2kuTE0AkOHc1PaNGkUHrwU1I/UdjSAfiUQrH3WLkrPA0r7I1YlQPFvXqqt2kUIAnxIBS8W1kuJZJFeEnHgaBxiwS4ynQamxD1pMN9izP/AmBYj+14boOxEGInXxo2Hfo72dFMlY44/ACNQporbZvodvLdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705430297; c=relaxed/simple;
	bh=s0zksOB/mK4C8Xaa9TzXIwFRrCtCoyr7bqoLDIay1C4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=IbOxRsgQpNf8Zc/VYRIsn/eYyS8u0tLOgTIZocCf5y0mmKK/BLAFv/xDh+SqToM3ns4Oyv7QTHiyBMuW+m0iYSE4XDz7RYB7FIuU3DaMqLj1uT4Fb9Iislfd+2xK4fWdM9hT/iVejvJ2K2oqlvTmS42DwooIxi6kr3/8HmCyflQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmGMuZZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmGMuZZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CAFC433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705430296;
	bh=s0zksOB/mK4C8Xaa9TzXIwFRrCtCoyr7bqoLDIay1C4=;
	h=To:Subject:From:Date:From;
	b=tmGMuZZ/PuI7QrZ+PV13kFUVHZOeAUBDEXfZ7E9kQ/gloBRQukS+j1i1L8bWKmV2U
	 ADTJS5q5ttzI707pzocOexUU9cqy9WJL1svbGTGWeX5XvbTAiNl9TfaVYfGZXjiosc
	 ygVK+kvxpWzMMz4LgD1YaRZZwDRnJpWwSWQG0AHORqGRv14/kqh0EBGCVyeOfICwZN
	 tJq9zeUZf0LOw05IrK01+joH9b7a4zK3JbjJPGqvVJw4WLFFr6qAp0ZaMUEsAGwOcb
	 kEuWEp59bVtFgeUjnb33ImzxjHwWdizE1K0K++Ih+1OLJyqNNq7SoDZ/cLJeY+xhRa
	 3iC0XoR8nCIMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB31C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543029637.31709.689017319802198327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8e8344d2762ef4d24dd842b20410b27e6c0e18e664dd3bcc1de3ecc8a0c131
Date: Tue, 16 Jan 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705430296
