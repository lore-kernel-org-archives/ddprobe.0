Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9153C4564
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774596894; cv=none; b=CtVGbT0JJdLFxXv+kD6K2c0UdpQOsZLxXk12KY/nOVPWB+L+qr7d0DFtEcFbSAGpUEviYCft2pA+puKadjEaiOMPk5N7D4yHcWU6Tvl6KJR+XrBCts+BUiPnG9L8H3qIKrEbVoS6FehnADBuM/AJsXIAltgXyIxNWZWKCNSvQCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774596894; c=relaxed/simple;
	bh=OWfxlTJxVMZviXCE3WhoLEgTYgEQ7WuY+M9uMXQXUlQ=;
	h=To:Subject:From:Message-Id:Date; b=SCIGTwn3M18wWMUhqVn1BbpOsKAHMi59tGfbUXzVipKfXGB3gakKr7WJA/iSlqV9xIM27DN4jQ3xJtWWVJMfq/+qEXwIMD1ub9WXZHQRkggNcsuCvlg5fb5VImcm/Cy9oEFgJx9Iu9ymiG0ficvoSxox3QP45O5qDafiJ2Ev+gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufAjjVec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufAjjVec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4571C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774596893;
	bh=OWfxlTJxVMZviXCE3WhoLEgTYgEQ7WuY+M9uMXQXUlQ=;
	h=To:Subject:From:Date:From;
	b=ufAjjVecA2kPzgrgfV8bni0pj63TxMu2hquCx6z/w0R9WeFfii0DDCrxYKVhrA1lh
	 tH3n+nKFLjRyIZ11H/EeQ8bdHZ3OGz0JxLQMtpQPjlaTp7zOOVa8G3ffOAKSw5TP2o
	 O/4uAsX5GYXDsofV4X1pCQpFVgtiQfEtC8o68VXPbPPlb4xuWpKlRBFitEYIB4yvmx
	 uxTWK1ASu1bnWFjUmr7oYpdhl8xRDVIk1x9rqobQu0Ad53wr938RTBCMHzv1WGxl6W
	 +tTsnQPX7MOf159bl/983KBz7UKevbM1yrIxN3+cwN3SUWKhhIGlwLJyGc+9Ifr8Lv
	 TIkKI4xByVJIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B2710BA430
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459689359.25864.45750041087288893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9290cd870bf94936e3a99906b7801c63210f69cffc1ff6d279b09bb5f9774277
Date: Fri, 27 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774596893
