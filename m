Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41568156C4B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718818163; cv=none; b=p8exQr0TCJHyySETXJP6Bp/MJk+eAiPuBqAHLvR972K8xFHwI87KiTrf7UncnyYUdDeBkJplQ/kxDXztIdDNQFHbbCUkYt3s0KyCWfrDJ732TdbNFwF9A3+ozmSWb6XBkDw5jsJmSQ/7ucUakB1K0TpKCvgVo65Y+PpTeJF7Zgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718818163; c=relaxed/simple;
	bh=naYmRV2fZZsV1kDF0mH9Gvq7rStskiSVEoEHee8vXZI=;
	h=To:Subject:From:Message-Id:Date; b=L4Q2rPGksbeHdKsttwOch/B2+ElxiHA+tEqrpZNeHWBDMipB+g1tllLkRDMiGea+0Bqo3HFd68+UoWewDfzUsidWhZWhzg5msKuEgqTIMW23eCCdu0Q+/X32KW966eo043G88t8sVZzbcvK1Xn25ymsh2LeJV5pfdeZtyzrBRm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlMnuQk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlMnuQk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D205BC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718818162;
	bh=naYmRV2fZZsV1kDF0mH9Gvq7rStskiSVEoEHee8vXZI=;
	h=To:Subject:From:Date:From;
	b=qlMnuQk14bjqvgtns4wLgnMQUeWTUigPD4ShLgKglD4xnOLbIqqYlenKmgacUkrZo
	 hXom4m/NaeQpQzXXoCq9PQRZViWmJhK+rPQ2aKhO3dhgYPYt0V9L6iVDQ0LSLY/ZN+
	 uh1THrDqDkEelLI8xNLrALIvDMKK/v3RqbOyP4ZwFEYiGIqnqa+GgnTNrpe9sLpN27
	 i0vZAg37debh/7mEIS3JSzXt9UxJxqgJe30iwrhEQUEGGhNY0JKYYy+yYF1ec3XpXO
	 21V6r4OsAYzhRyvY9SZS8PTuwhVt/lvBqLVsRMnkGJ2Pc7W9z7EUQ7SbpLycXAoiLH
	 P5kv33t86M8cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE24C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881816276.22786.1183034779412011804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0661868cce57436eecb7bea0740d53b997291935282f6f1a42ac07946394acd0
Date: Wed, 19 Jun 2024 17:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718818162
