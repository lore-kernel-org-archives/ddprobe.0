Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB2C430313
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783342114; cv=none; b=llrAw6YIHqCYGZmOsNwyzyDo/v8F5kjqXuWCkw4Tn0YxKFXbdObG9jm5LcHH9gULEnLwh9KP1uahsymjqXi9XC83pNPkULDE2M6e9VUJtaSXLPAcC3qa4Z4wURroIWDkSEF0b1SQh9/2kmHzuqWbkRkT1ebbmG/Y78J/h1fY4KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783342114; c=relaxed/simple;
	bh=cAxZ/lI9tDyQDCnxhc6otWpYUWdbzcEAM7vLL/UbKDs=;
	h=To:Subject:From:Message-Id:Date; b=o/ege5/Ps4ncPWpd6mCR+892NXDzLmQ6ad7PsYO/gYk0tjU5UMrEVlGGIJ/Zei/LQtKVGWHQ4LfSrlhAQzFao7zA33orDdJ9EkR3eKhySCWpJ7c+bQo5aVxplq/Nv2ReBX5IH4jZtGkd52Qvehu64iiCfi6AGi0uUMr7VPCXhQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AITDX5n+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AITDX5n+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACE6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783342113;
	bh=cAxZ/lI9tDyQDCnxhc6otWpYUWdbzcEAM7vLL/UbKDs=;
	h=To:Subject:From:Date:From;
	b=AITDX5n+b2h2zaefGb2bcz8Mjmbb+EvOuiL5NOj2IpPzF6pB4rypumoQj/5DJiRh/
	 HONQpTsLfguyTNRmU4t1/NJPzeYTg7tD/jXdWsPDs2LyQRCIjlPyM7/o4BKY2ARM1T
	 Fhg1StvpcnLt7X67aMHMwx2dM5UKKJ9iVnWbfSpnltFc972fgc+DfWHhBnWBW7MhUR
	 UUsQNQKIUsu/SCB91hHS1o2hTCz4V2Ie/+ryqE1aUDsajIRoDfOsQpmH+0HY1c0Y5p
	 BIdxZtV4he+RRhbTR/RGlMVxLtUpmh6gQEu7c7sil8/vRqOg0cSRPVTEanG32zfohF
	 4rKyZDBSRMT+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94AFC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334211368.2262.4263282146729990310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0ba8be4aa882602c7020ba8fcd7cd770816b76f489d6d00395d4bb014dfa0c
Date: Mon, 06 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783342113
