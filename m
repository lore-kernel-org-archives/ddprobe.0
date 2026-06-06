Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1193BB4A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780780474; cv=none; b=VNbM2VZlUT+yGyemMO3ca5Dp4SvF5qu0WOAlAFdgZqlSZpGmFIirF/YwUOwUzGir5p+als2aqux6V3iDo0aEZa2eWD/yHi8XGYXmaUAxB96GtmiUJ7R3+tuqmOROnHIvEHcXNSgdWK31m/89JnY/aOZMCNpnFGP4zPjIAX+sTU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780780474; c=relaxed/simple;
	bh=r/xpnBwTfQ9qclp1pv/B2xu/eymwpbLraN1+aLCfcaI=;
	h=To:Subject:From:Message-Id:Date; b=sF+6IUZNcd5l4dnfohZ6tFGXCaXqgr8KlwJ3HsqR6W2+YpnMFF7cC5BWbO3SMUm8rfHms1P4oG8R4khHplJ987iTfUA6dhwi/BItXwT78L/ZHSRF6LmohlxMScN0h24jz59u6FtU8TeIcJpNTCzhmkg1rJoovo08CRiwtABB0LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AN2cPxR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AN2cPxR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEC6C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780780473;
	bh=r/xpnBwTfQ9qclp1pv/B2xu/eymwpbLraN1+aLCfcaI=;
	h=To:Subject:From:Date:From;
	b=AN2cPxR9uurrVSF4yYIs1BcmrXBcQAaz2dS3zGPLILN35KKcpGysXbTc1/CMKkPH2
	 hW64bY4xQKhBT4emYYDIHpHbrwiCZN4DmkYfiKYZtigKqkaa1MfhOz0CgIRW5ab3v/
	 8Fcp+byTJXeaCa90aQ16jZh2JGA56JHWBdNJCvujqxz/bBkbEb5mIFl+eb/14h3/P3
	 rIw1zD0Z3U85TfV2Hn5ICycRPOvBb3WkTPmyPARoQKQSUlXrXB0LDobc4JmBbVC9v4
	 cf2YyxBsEKsAI7teK8OSCWYGd9qAPo+Pfueo7uDm5vkLI+SSrZR0LmQeLvjhjER9sT
	 TyKGBqV3XO8hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05BFCD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078047368.31540.14270902028705908486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f45b3d6e9ff1b0f5de99084c190c38a59a45310d90e01d953112a31399f325
Date: Sat, 06 Jun 2026 21:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780780473
