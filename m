Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1091C1F936
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756514994; cv=none; b=XZ34X7sTKXL6q0xHRxGkyhfOD2FGKafynsIiu29hrjs9OPpPx0ps+VT3KDJ2O5KDcD6rMwRV5yRkVQ3BqS0FKvEis93R1cHiJwmVZSe4pnbrVGUZyQss0A+9Mex0qkMr78QL6C+/sOTffukUl3EV72kSQxWlbKMMYsGdn4qKOGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756514994; c=relaxed/simple;
	bh=vZVGaA1JATZFm4QApWE065LSav09lHr7JUQttHNOfJE=;
	h=To:Subject:From:Message-Id:Date; b=bF9wYk/17dzsaqC0EsdMqOovXGgnqIiE9FMYmTFHvc6wzj4kE0sdv8+8oLFmCerzPMbNTMpciUizVIpjsvn8PQubU+qDnfH7iCzpSqMjtcCCEv0wpubttXBbrEemH6cu4MV8nJ+ufzDGtTrAxNuTIjIkInFB0we98S7PP8wlLio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWo2nF0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWo2nF0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCB1C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756514993;
	bh=vZVGaA1JATZFm4QApWE065LSav09lHr7JUQttHNOfJE=;
	h=To:Subject:From:Date:From;
	b=JWo2nF0yZtG2dfy+xZhJI3NsSdDdn45Co8OjAEOrhlks54yWIUvTo2h1sGbtYJGAq
	 9hqYuRbLGYUwg/tCurGvJCmZ9nZpHfO2TlNLUnSIR+VStp7bBWRV8Ij9JcAqqT8/E8
	 4M/CI5+z1Jq0QxFjeALJK7DR0cTlBiytO+K1RJohd4HG/1n5hV2lEhSyFzubrxKZwO
	 t1M2c+yQDvNvdOvLsO4bTKrhzgKf56VdMra+imBx9o/mH/UdxcBYs22v2jmm2a59kW
	 qsmrvpb8L08oKuaNFKzxdFM7wkxbJHBCTp4A9gp6j9jLIYQf2VnF8jmUtrNgbiS9U2
	 DBzph0qlNlETA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F5CA0FF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651499357.26687.16833997987970157169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c04791376a95176575c81898dd4fd8bab17379a106bff68a6e6d09b64bf6ca7
Date: Sat, 30 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756514993
