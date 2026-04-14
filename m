Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5313E5596
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776171454; cv=none; b=gCWBq24HqHAAGpxdoD9ozHu13xi+ELecocI7/Z5wv3HGUI5u4h59HFj1Pm8Ymyew+OF+8r/sGa3sZkYKdlizGYaeD7I6FSpsh4UcdZ2hlJWEbky+ZDNb1Syk7I5BG+5Y5jzuQIVKgbGXbG/+/j/wqkmfWCQo07mSu/N63YPBPow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776171454; c=relaxed/simple;
	bh=XJYOwQMHsBAjJ2lbeztjw56AqR+N5MyO33yoHqy3Od8=;
	h=To:Subject:From:Message-Id:Date; b=C5NujKw3Pm0KZY33uQ9MgbHgNkMUtyj37+CXHNICU3vgruanRkWh5KINpe+3MlNa3KewgyeDBtXxVvSmvTck+rqaF0uLg67QRhl+i+navb7vMHbVz8jVM8g4Cr6LGNsVQzZoJtLnoEg+AftdUV1aR+zxEAyJL94FOub0u6sJIpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcxbVsGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcxbVsGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1E4C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776171453;
	bh=XJYOwQMHsBAjJ2lbeztjw56AqR+N5MyO33yoHqy3Od8=;
	h=To:Subject:From:Date:From;
	b=BcxbVsGFuX1k3xmEaUO2G0J84N1J/GEgzAlsAwilyga8PWLW5nBiVXYdVudAZ55wV
	 gmptjB0kOEN0b5h4yDr/nf4YepQfv5pIah0YrCCvk29yeQ68SLz/Qd6VxujR8VC5zp
	 rEmzy9rFV0mymAmW+0DB80mU3WGYhE3l1b+5bVxXR5bRjKGxdfSnJ6kiuRvpv2lc9N
	 Ca+mFJ20p4cvOZzVKPPVxkAIHOiOhwPXxqMwnhkUMuBGWl0B4N05+Pd2W+8C3uRoR0
	 8OGUs62JmuU+hPoM0fFxrn1ytRTLvy38p53KPoTkriufpbnL3od6K8TjBFnKOMlPOl
	 g4t1MomvYXQrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F12F9D0C9
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617145368.7835.5620440572281704032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8932e1f100ea9e660cb4db274538e6ccc8d7a38eb6d9aff79bacfe3a9b04e14b
Date: Tue, 14 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776171453
