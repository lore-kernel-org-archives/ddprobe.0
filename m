Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FFC2F24
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744895994; cv=none; b=VGZ28KzCCT0AcoAxa8s9ibWeJErN8QGLWfr5ghmvWHnYf/A+1tEcKgML782gWg6nORIVymeF0ybAeVO7KQ6JcAwrx8308i2vfr/43p3X1hXEdLNlXRBpVGMICaN+GEYsDcBKf3b7HNOA2r5lGCAef+6xyfkFZ/7UyYh0A6/lzBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744895994; c=relaxed/simple;
	bh=X0vFlSeKyg/PPafe2PbBDAlLWcaptKwrEScRtf/5dao=;
	h=To:Subject:From:Message-Id:Date; b=F8lGdptnd7qABItwwdIUegKatxx5gi4CkqwBctISWmjv1GD36iFhzZKwuXyqSzbWiS3zJhEMOl0S/kKF66ONQhzzB25ZmgpL6Hs9dSXv2h2n0RRDrfSwfTqdsjy2X8mTZbZLgAHjCnAjdrGyznipHVdcQ1U1J36vOeqhBxqun+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PENvuIGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PENvuIGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B1DC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744895993;
	bh=X0vFlSeKyg/PPafe2PbBDAlLWcaptKwrEScRtf/5dao=;
	h=To:Subject:From:Date:From;
	b=PENvuIGQ8BVDTUIaUjyaMdWv+IkKyOXskt2weeLS3BLbwPnD4vgnr00wxWTlsDg7e
	 Ldn7+Xu/2SYgeTUtzZrXr2hu+hkC1lBACCJCog2Y1AUvCQMn4YM91Birwf3tcFdI2U
	 CblwqPpdBlOcAdGuXBpawcvnKv0+QnrDfa6IY5TEh2A+LvF0HwpdnHngBH5KO3BCaE
	 hK7SECzEiwXZfRpxWDZhw1QmV5uZ3afNm6h0LZ+0YoSmZ23wKbTtcpxFOaYBQq7Hpo
	 wHvKLuVuVK01V0FRjLDDxqX6kwnaSx9copm9irmNHeiU5/6XpADXesIJNVktqr/3Yd
	 uU39iJDjAqFBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DBC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489599357.20964.795084548006011052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d33815fa711d875a1cddb19568ab497243be31aa16ed4e72e3f849b2e095294
Date: Thu, 17 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744895993
