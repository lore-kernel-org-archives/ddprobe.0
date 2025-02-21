Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA8B566A
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740097134; cv=none; b=sSfOC+3a3ffQ3SrR52V2Ibp5Yp1DijzxRDGFQLlYe3r6dNNMQvUgRrD2R/6RdA/uqJxjqkDZjGOcsODNibEOTMs0Pz+oyLL/dJBTuhaDMVyMDYTNNJ5x7JJSk719a2wBYeIT2QzjBMvNo80PyxD1WOsR97qVc9QcN4i/U1VdeNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740097134; c=relaxed/simple;
	bh=onakFxbN4io2liEIWXyBA6I7G4fxgPspd+StXZzWP5s=;
	h=To:Subject:From:Message-Id:Date; b=O7w2/izSqKZLRBzrsmyQ3+TYSrUDvreOGw1UBqIN0748AzHRipgMfdrJblFZhPKm5WfqWENX54k01L8fvlofc/13eQrx+JHKVrltjC7jTEIvjYZHusxz1F+K+vvye0UgQi4IV0HzL3GsbRKdoonwzDqpoh701Jp+80zVWHI7B5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdcPiB6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdcPiB6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C14C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740097133;
	bh=onakFxbN4io2liEIWXyBA6I7G4fxgPspd+StXZzWP5s=;
	h=To:Subject:From:Date:From;
	b=sdcPiB6+PV0ukXpgRkFq7vFQXZeIOWB5L4r5Gj6mgYYaJFV+l/7IawY5wnvybNPnM
	 2umqxHPNPuN54hbGHgL9Pc2SnrQb1rdrjGIixp2YUSs6gdiUkIzw98ZT5jsbFWoBUB
	 dHMr/DMTzWpnIPcl3AIzMfxw1HGOyi+fPwLDrNJQR2wczBSsCotq8CWWIK2IRHMyH/
	 +hQIbKTfRLDrrAJnPxbAljUcUSrc2pQQvLyfuyk3bh7YXyH8uMwtPRNsOBor81Uypp
	 hhf49NcSsJ/dG5I6j9wOdcT//VZ7+faQzvY5JUgQOakBkgtkwM/oLnGt82A5Z55Vxe
	 ec0dMEsj5Gcjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B692C021B2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174009713360.28624.16738008582109786395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899097774a29785cf2436441f97ad1bc648157a46b6f9916e5215bdf965e8731
Date: Fri, 21 Feb 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740097133
