Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40831385D72
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786381834; cv=none; b=Ewq7AbTMIggpFuzpvCz+5IcFDh2ctLR8/2jinyGA92IjMWecY6pfObyXG0GvwwhA6kdr+lvWDRnqOHC9v15pWZCsN6NRYfNTbjMqesLD5TMsRCifith8qGlxlYuxxbj/fZ5tGDDK4rcYepEhOn6ROyJmfNZWYlf3LXWVYpuPlIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786381834; c=relaxed/simple;
	bh=pKB7TSxoitfKDVaVjKVVt90llpvQRbXRZZlFoDiFXR0=;
	h=To:Subject:From:Message-Id:Date; b=I0A5ZG/dUjOGPh4IbnHPT0rXcT7ygR7I4CmeZyCBSRJQ/dstYGd3JeGmP6+flEo+OexK+0UsZCzf1KA3iQP3CyTUOQQTUNO/fh2xeehM+CGfFpP+UxBHZzEmBTfGsC3pQ2PIuFoTqaJb4Sa3G4gUwC3VXIiJl98Hxqabi+zwUCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ta+B4pSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ta+B4pSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DEFC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786381833;
	bh=pKB7TSxoitfKDVaVjKVVt90llpvQRbXRZZlFoDiFXR0=;
	h=To:Subject:From:Date:From;
	b=Ta+B4pSPYPr8qo1X1M2HVe2dZSB890KRSXBy9JnC4d+0rpQQrWpYzbFZWDHWV9wyT
	 m8fRwjejK/yjCq5m5R18JZWnOrAVrhon+JFYFWAKiIP2xDXhiSzBgequEhSiAs0rV9
	 T+PBlpfq6AZt9oZ9VFrI/j4/lcqs4G2jtl671ctOfWnsW+u+4IZExOxmpetuSyCD8G
	 Kq7O6xWEmWz3CMlCQhYE+rQpSTGdcKIokH4DO8t+awB/Lg3mV4fCbhCS1EPwdbPTPm
	 W2YRbiaOnCRB5T8L0zPYlOwZp/RlZx5juR5vzLP+WtfgQa5u0x/R/c9M22Rad9DYls
	 UN46L/V4quMjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF46BC5B56A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638183370.30003.2969006281566559395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cea17233a210e5eb4751344609cffedd206b071ba1e9887492dbad94779ef1d
Date: Mon, 10 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786381833
