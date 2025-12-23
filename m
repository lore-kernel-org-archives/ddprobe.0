Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283812868A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766502234; cv=none; b=qAl/DDL8WsrkUDUzOUKFqFqFUXxV1uapCzZ3lonbkfuBApHX3JgezmwQaoTUKF04B8tBmAZU/I1EexNnEzvG/k/qWjM/w/B7WoMmD2qPDSXs9zNtSxgXZgkiQdTt28MFP6D2cZzSqBAZim2+GjUjTu01A1mEwKehCKe3R6iw6oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766502234; c=relaxed/simple;
	bh=IxvX2ApYrmyFgf2dPEn8hvhW/qZwix9TtedPS2FQavM=;
	h=To:Subject:From:Message-Id:Date; b=TSWfxeM+1eqpeLB0kxuhDHgidNViwYWd4uqLFmxOrmqlPnm2nB4YfJmM8jR1k/4JCRHj9ZRWZ5ps9nzfKfzwsWA1YI85UNYkbOD5FTofVnojLIebcGn2UEn/6ovQjwFJMM5rlw/mEzFJC8cxitgp7OHkj1tI647oE4pW1RecCOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZJXFZQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZJXFZQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FBBC116C6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766502233;
	bh=IxvX2ApYrmyFgf2dPEn8hvhW/qZwix9TtedPS2FQavM=;
	h=To:Subject:From:Date:From;
	b=eZJXFZQrSogoboTjTYJjkwYlAnKhYIL3P4tP2ZtipU3ZD9LVPAe2Q5yZv44ePyfzt
	 /q7WOCBDh4D2gNBVRpa7sGvkMF6aJhCVFGmj0i9buqxjZNJ/yhJDjlc9nHXSnI7Xe/
	 c4gNne+118qJXCkuZNrD1xR8P+IA3CuDWtrXZYxxkgTiMW68eYtY2RlD5PUFZ2u1MI
	 VoW9F32QDCBnnQpWt5XUP1qZ3OdQUCII+O34yPwhblvSVewr1GvQdPSfLFVYQXYU30
	 dYCdCPa9HLwfRqL28mrREFmTWlWU6OknOAXA+2CodxB9+v9SUhfjTRo+UeuKSJadiq
	 0crVUs2CU4htw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96638E6F098
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650223360.19335.6419496660069175094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99a7dc6261793dc6e33c042c9bdd553c07315dd358b7bffca75987364c7d9379
Date: Tue, 23 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766502233
