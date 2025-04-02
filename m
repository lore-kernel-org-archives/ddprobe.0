Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4770E2629F
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743569394; cv=none; b=cyeC2IheHE2w5RxJCMYJIbeMqzM+cGdxderDDVrSSWorK4KR8F+Jw5MDBIzSNAQvJqnK27HyYQY8cJiULhGMkgQOf6cr8R1PVNFeChrw7Ju2HaCqSdm7w412PkivaVGw3ZiuHDlX240wcUqdloCojnG4end+mo7SfJMd4YALBKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743569394; c=relaxed/simple;
	bh=DGy5+U0wrrnx/v3qV3tXTrNSmj/Kgy0jE7XwBdnr2LU=;
	h=To:Subject:From:Message-Id:Date; b=t33uuuxGdYVY4WnNNtU1wtOkyfamz6V9J/uCWJnGMbzLreUZHWfWBoF+e0PacEoJisfQh7bMQaWrAUFKfNJlnpqaHkmMJyy7fA96i8HttRXeVCi4XUW/VFCSeDWvvTakgUb7x+ZwYLUWwDmrGm+Qpst8UgITu0M3Tq3ED5EAJ2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukjL0Bcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukjL0Bcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA35C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743569393;
	bh=DGy5+U0wrrnx/v3qV3tXTrNSmj/Kgy0jE7XwBdnr2LU=;
	h=To:Subject:From:Date:From;
	b=ukjL0BcpUa6FcDMO1ol/ZtTjGy77geEUELy/Iu3E1OZvE36jjGLS8EV/8BQBMcLCo
	 unjB5jHFDvFqRmfGtL4dtQ+alShiDPwrAOK4BQHE7Uo1m6fZxB/dX+ZDUksNUVG1rH
	 Nr/E3qKzfWoXL9Gedo+JiONPe/pw4+EINbFHQ7CM++vNulJRsMpZ13diPLBfNHc6D/
	 GpeOR8A7uivWz1ntpPePcgHBnNPO+jjWKe232pICqGR/gaHqp7lcrqFgK5IpzmNrzq
	 nlhBG1LOqVp6rtWKSQFknOk6qGHb/jtuNM6pY8Fu9dN4gknGRoHHfWl/q0XC5GSTHh
	 1Eo3m9oH3kTeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A338CC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356939365.20925.3479203784944389574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e1ad1cf9171d1c3c51d20401083032d9643eeeaf5b4f64ead841c674cfcf35
Date: Wed, 02 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743569393
