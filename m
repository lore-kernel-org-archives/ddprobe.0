Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5515F274658
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790406034; cv=none; b=HEkH2Nc+chW4ztpsRKrm7YZcCsv2lYF/SgV6BYfnME1tlAn0SeTGbDwIcUP/BoooYZoUNNo5cioAZ22rnjB7T3WbKPJ6C5fjig4P7Jj2d9VJW4lIyOhPNDZxq3hbzvhq/9+h6oWMGI36+8h9RGhsChlOijw+hQ8AETypX2WZ2yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790406034; c=relaxed/simple;
	bh=38KZ+jP1TZudKx+CnYAKujB/sngrifxaEui002uvBug=;
	h=To:Subject:From:Message-Id:Date; b=YlrvellIefAWyz7Ydj0Jeey3BmmX4NVh5x9IKtImhRHZjiq2bXa858uNgq6NEJUyahaiM/sryFfaSbaoIuvu2Cv2cZXeGrfg4QtCG4ehIxRWK6GJ+OOcQHWA5FcJMfMn9xVK5lYjwo5KeTlqTHPSVeadT50YZLoi2ZAq4e/vRgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4ififRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4ififRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0819C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790406033;
	bh=38KZ+jP1TZudKx+CnYAKujB/sngrifxaEui002uvBug=;
	h=To:Subject:From:Date:From;
	b=g4ififRrX/CZrW/PlPbRXPTrTy653JkzFFU/FbeDkYL68PeW6DzTU1dV718eU6IkY
	 0KmZrwfOMiJakpjTdiPb5aMjWKccCqTFCpkiqA+YdUBULU2kUxGfibNj73draQzEmB
	 1XFhhdAy+AMo8MgAPV/OcpUB43tqFJLgwzd5TVXtbS6E1s/0AGdkZcOvr0xTtWmeSv
	 3XJdIiUMBzcELi8XFBBxf09FGvzPXKT90bZ/yEVh/Pt2emlL3zgN6D/doPaHjVpQtG
	 lfPZTW8ebzMrXByXnWy4s1BTkLH75+ZyZCv14x2s0NlX0LZndtjKi/Z4/Eildy//RI
	 /bTBX2VuEeANw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E23C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040603368.6474.6826279806855159076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16746c2b771cf2323b3b019bf0f9c844a69996d542dbbcfdb0a53a52492002dd
Date: Sat, 26 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790406033
