Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3113B15CD74
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760062794; cv=none; b=cmBEI2fDqmg91udigD1DDNNY4HpXDMArB3hASzDnjw+Yo46Kz8kVgCx2Xsq5qZvTt4jy110/RyRPldzF2J8ztaJ0Y3QPUOBuHfSkKU4g+iZwtKGgis2EZz7kPKlMtzp+TCph7YfjavhYQg4AqYyIxqmCDcsd1yVEbmWtxB+XbCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760062794; c=relaxed/simple;
	bh=6PXqRzxomYUrVyhkfSAZsiwrD148uME/uLPGAf0LtUE=;
	h=To:Subject:From:Message-Id:Date; b=MvB7LwmTIqwpAowIKW+3jMFr09FERqXEvd2+IU1GQXiAITYOf+Ajon7qbAX26FwIOsnUjA3IMZ1oYlQVyFaxHCLUQyeTZgRs9uHCLYtiepZhZyXJF76qJJ0QbAmdgnhDPL9Hbxi+9aGwGtBHVbRBrdNjdlvhFtomWKEJFlw2ORE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjLoeSsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjLoeSsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12DCC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760062793;
	bh=6PXqRzxomYUrVyhkfSAZsiwrD148uME/uLPGAf0LtUE=;
	h=To:Subject:From:Date:From;
	b=PjLoeSsHdLrTYvKct6glCfSuzIfQVdOw3Z6UUBr0BgF+vvNOjZXACBaQC72mSNgDj
	 sY7sI3jpvCaJhBb80kM/23yqzPRosa90mTWtLXWD8mmXlMcVjBacmJDPG9tTczj2IH
	 n1ZgnUhb7vKJpndozvLmR8O4wgvTw4bgjnG/18sXLF1mn6bCDUEzBwMuUYckiYFjmj
	 7Mwniyds3lNhpAdssHiDOpbbvEnQyA09ta7UwAM3XJiOkSzeMkjGqJVMcPLCDIFVUS
	 jpCiEBcwiwLrB3PVr/v8yuCAgnq27ectdkdW2O9g2KDGwlkOPm8dlfcvL+P4mpFKmt
	 g3glJnfS0Ch7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D428CCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006279362.27548.14696200864516963973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c48e74cb80d71af1c211cdb1940c46dded629e36c494d81333e248eda8b4528
Date: Fri, 10 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760062793
