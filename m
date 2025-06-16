Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C58F28A1D8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750102794; cv=none; b=lxTJF+9/gMGimgn1dpd8nLa9OJeXPZJF4vTt/UgB+8F09C9T8Mh5+vOt9F7wj02HCKRFOUxszN2Xz+wDL1Lf74eHHLBRnmYzAwcwoM0bvjukpWP4I7R7ntzZNyxF03J18KNI+bLOe9H+uwUwCP9V4JNQ+VDal/frn/ZiU8bc2ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750102794; c=relaxed/simple;
	bh=/TtUeVmU1LgYpu8+jBg7GtblWEDTWQyh+F2GtU/rjzY=;
	h=To:Subject:From:Message-Id:Date; b=rZReu+pytIlNiikXMFDFCWgpD8KD9LCIRTKrLSMe2hUKyF8MIK0bicsh5nAOCXPbbOCMoHGWA2MVQbBtkX5H4NiynnX4jPKfq/NnLz50ZFWzn+4eDwWXnWdvajQr308kPvBLkYE08mJrRfnnkmXK+36dUp+pz03lD/pZOhU7fto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKnjigMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKnjigMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0551C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750102793;
	bh=/TtUeVmU1LgYpu8+jBg7GtblWEDTWQyh+F2GtU/rjzY=;
	h=To:Subject:From:Date:From;
	b=nKnjigMbAKwiQhQLhYWrV7imVdek3S878LUnwd9JDgueKmm9pODelkEDCfL9uvxaW
	 t9ilGJUlnKXUx5FOPbfBCuJuGdJ56pdljh9SmHgg7WY6DgGNK3eUriswTYvkGqzq8o
	 CTC1LB2qOPdXKubz4EvgltJiWycRreb2zrLp9DrGyGL3Djj3pIuAxxkVfOlQJGBujl
	 P0Rq6HcXc9freqG3fD3QPOt9pT7mpHCSUZ5E1RPayBDMX1ZUHRjXgi6Yc2SWGGO+hn
	 k3fWO3UVToDIRsXhhj6fTCeUgyIX5qz2d2UpYedlyJ/90hZoHiuXqyfIvxkg0hj9NN
	 nwjNOHj6zaB9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73FC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010279357.23313.10863912161030283716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5cef35bc85cd0ae555ee703070485f661f11bdd72318b941fd587cec53d8d3
Date: Mon, 16 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750102793
