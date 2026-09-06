Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A3E371897
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788660634; cv=none; b=KdrR8yMXx5mkZoiH5qXjFDuKZNxc8trlRj0RiwZdZO8Ay2Gjsjx9xFc8odAVh2GzPNGNkbl4zuYoQ6kQSiHp2vKUQI0App8uNtJyuqnqtxz/kFWmbImGNV2oNY+Bz+hn0mfW393ZBao27/0GS0DdizwjT1sCE+HG1OV6jJjz/Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788660634; c=relaxed/simple;
	bh=tWcjakdeCwyEGQkzWftG/XcrK/hj7AutRX3Pd+Ji0rA=;
	h=To:Subject:From:Message-Id:Date; b=KxdVjRyDZfZbKmiWP0/VRqAXo5an18HNLHLvpxop41XErEboVIusNfbsmtwvr912mpD3bXq/l8jv0YdYC32kqoxdMKpuBdJ8smbABtuRIfnfc8BAGfqZ8zMtLpqRrM7x/CnRQI/32Q5PG64HIakYcHkgkAuT0z7Qo+EFw4Zu6no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkANuprA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkANuprA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4830C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788660633;
	bh=tWcjakdeCwyEGQkzWftG/XcrK/hj7AutRX3Pd+Ji0rA=;
	h=To:Subject:From:Date:From;
	b=RkANuprAB6jZmqRQZyPDvro2Xn1H9XlmBbrNR7vV0dzdEBam/HmoI/XwbfgMvzdZs
	 SWx+otfuoeI/p6svS/ZgELsORviudAVK60a1T3iBrFAWphlBhMx7mWy3SCIzVGHnZ9
	 ad4JriXMxaX6bVwydS9fyHyE5JQ+xQTJchdHzL1x0tbKTifz8jKlEP7tw+LTgSQvTB
	 1X1SZMN25xIKWakm06VURRRyzCU2y2TitDXO3QzxK+3r841sAfMOhuvV8d4JpeNkxS
	 XHrymIWXnCMA4cpXypK3EjF1iTYOUD8RoXxlQqnuhHwI5iG1NMtZZXpPHo93M+xnWX
	 LojL9KM0lFpKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF377C79F82
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866063369.13433.2060813060146717356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7226e9be37ab5c8ac686c4df31aa017beb420a34967f4d0903b4d52af665d80
Date: Sun, 06 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788660633
