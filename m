Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C9030DEB5
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756379994; cv=none; b=kmcJuDdnZi9BKfs9VPSjzx67kqPHL48SCgEFjWk8V3izmBZv1/IaV4/I2qtYLi1dhRg67GqoNWBq2wcG6jqqEGmoXrnTUTOwIMGz2qPMZ0eizQrKFrEP9RS7MqATZv67K34fx8nfE2IPoWDXOwvpPJJ0O7F9/Ax45HMHxc3O7m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756379994; c=relaxed/simple;
	bh=e/m/H9eX/w4xHC3sDCYbJeqMVfyQ44dz9FO2M5n3LAw=;
	h=To:Subject:From:Message-Id:Date; b=V7CAB9EN0g2BPOdEwJ7IoZKCWw4JB1cQbWCRTwiC6BGBEyYC41L3neZgpol58cRBuH6iSYlhCEaRMjPGcXY2KzYCZSzR+N5kpHd73/x5HcD7QxSSyFt8MiqzmsM/MXFAQYp2WxYVFNSwX/agTqwfjlxDzTT4iSoWYgyv1AM25FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3tIMrCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3tIMrCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43F2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756379993;
	bh=e/m/H9eX/w4xHC3sDCYbJeqMVfyQ44dz9FO2M5n3LAw=;
	h=To:Subject:From:Date:From;
	b=g3tIMrCj2WBO+2cCeJezIjck6wpBbN19fz8XGKKAGmDI5wLCNYCJ/2JIfek53nUo7
	 yF9GorTMQEz2MchKIXd+XycQLjCS+KOHPHnC+rEyGFhrtpVi0+j3JngSe0XaMbnnM2
	 P9Kc7HekOcANuM1GRjLGbkaLPAnD1yAQQi3POmVJR5IHz56FToGWFZtAqb6ZO7GZjL
	 pnneQkKvCtAHes+avwJxZGIJCrBHW6bK3teUMfVSsHL9uD089T/kzmn5J1en0D/tES
	 5WqOqwINEkcbTw+3IH9CbZ9WcE8N/BdAcgxwNw6M+mbSPGJsRKl2qIArQgDAwoKt3V
	 8DjidZnQY2lVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E3CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637999358.21442.7910000434498220998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eeb58792d10287cb3b15b06738f4952f511289f85024a682fbd8ef3f4091707
Date: Thu, 28 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756379993
