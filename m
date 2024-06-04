Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CE4144D2E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717506323; cv=none; b=FpvZ1+Kx57Q27Rc+7ZrpG+CYt7UCKUR7NhuQh1oc13Xpt88GHnbyPTned62KTD7Bqeiwugm96hCGd031ohjNXoIPs+4p8kOonEk9dJJ6Ww64bgi80CtP9xFWc4Tpt7i321Zp4J66ML2hqWvtlnK0I6qUMxOzF8YNsVw+Kx3oTnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717506323; c=relaxed/simple;
	bh=wS5peO91RvY/zVPdcFr0bgtxNmtYSvSKKl/yPWfybIY=;
	h=To:Subject:From:Message-Id:Date; b=olxfTdWdrKewp5hCqP11b4AJsuThckmqr7wujTpK7ladQk+F5gdgrHuhp9oHLadkKZoJLjrk8nbqBcsurJE5ErH/bIck4LtSCrXP9Cb6eRWQBTiQjxkJdm2C9z8gjPAAwBbvI7SF8cx+8K9GrW3fgYJKMgGWy8xnStUYfwdhbpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEeObQml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEeObQml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4EDDC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717506322;
	bh=wS5peO91RvY/zVPdcFr0bgtxNmtYSvSKKl/yPWfybIY=;
	h=To:Subject:From:Date:From;
	b=YEeObQml4Ms+PpB2JNh2YawgraMPsItDw2WdQLktpkLgVQuTOommJzs4XcFaNfCZy
	 SmpsmlBi6DQcwd5AjcnSZgV46QxjWKLmETeoYCuPMvucnW41OvWa6wA+apfFJUILwm
	 apz9aEnhVyibR8tbYzIjoj3UfVGK/IHCzdb4dXP3W6beydzPuCylgkWITTpFMc5O+C
	 8U756m2TB6VXQttUryUARTZqb1VMVG2MDRrDiB5XueNTy19QpIFqBkfqbE/uqbDhrp
	 m4sstKztK6DCdoyLfB+kRrWHn1TKdWbxhXEVISSWoRja9pZH+b9W3xgUpxErfBUBjs
	 YHGgWg2ONgXew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1DFC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750632282.23751.7351722295447445381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0a065d0ca4791c2bcb91747b7c41dfeb7df7e750150c96b36b33471802ee5b
Date: Tue, 04 Jun 2024 13:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717506322
