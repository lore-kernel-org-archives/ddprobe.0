Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A02A16B751
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718384903; cv=none; b=bsCeEMnUUfBsn6puY50ckcw0xiKJru5VLGMfuWd7dH6QM2Nse+/ZtYY8vLgoQX/cxoyI+J/a4k+EOA/sEF16eBbrWuzqUXgVyz8DsL/YsBEJef30Au8YyC+eEXeeCoJDrY5b9mQl22jvQ2rnbC6Xvf1Zq3Hx+rp0RuAT/39ZhFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718384903; c=relaxed/simple;
	bh=noxTKkVXrN1K6s+UJJA6HZuGbNp7ocD5BldM7rniIcQ=;
	h=To:Subject:From:Message-Id:Date; b=iw0xi8Vp3qH3H381wwDNVhzMSpXQCTQZdwCoBIU4fxI8jWOt6Xu/oI+9BSD8jJRiHuEdbAsCZxLs/wdEw3nKvm9Ot8StactYiQOcJa6CG5FSyVKwhidAT62tveg0z/PY03xs2WxQ8h2J4iTU0NNurO3AgZbS/DC92svf5c5PjJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIGG019S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIGG019S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6940C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718384902;
	bh=noxTKkVXrN1K6s+UJJA6HZuGbNp7ocD5BldM7rniIcQ=;
	h=To:Subject:From:Date:From;
	b=OIGG019SOzDMk044nfhz4Xq4XLpzJ7Tu0Etdhs4dj+3cOWyBTCmYs5Qpnv7TSQtwU
	 uWMBZhjwboTTbyi7/9LKnwCm2FM+DaHClNo6hFsbUkrhQ0/WPZEYPQiJGxZ9Y0y5FE
	 Ce9bLTvuA7+c3dYCaaxz+D0wkZgC+s2XHWcBFpw7mjMYcz7DSinxWXokAoi65UMIpt
	 cvVvI0GXOEdGdNOtlO592MlX/lr5fhOhuAlr2HNKhCS3hrXZRkBr0yOR6mEuA7uDMQ
	 GTFk2n/lZjTu0EbwluoKAnVnTtxNFf1XTtlwZxJpZ9Z0/YU/YWPJPBCnoB2hRMlsNx
	 hBHglNyyAwGyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75AAC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838490280.8937.17024923725133808630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad1f247333346b0e08184638a0ad3d80732bc7c706d490a288319411afe84f2
Date: Fri, 14 Jun 2024 17:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718384902
