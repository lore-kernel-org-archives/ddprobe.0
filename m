Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338A3222580
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760117994; cv=none; b=cftozzQlzvKKjEWTumpkPFIKT8bnhjSlSmmkZVBPHYDa8fHyVQehMzfgdDlqnuV42kC9H2+gwKhrGyNImbnOuDGrweaxQDIbEi/5aDrRaSiLkUX8nAmVd0MZ3x2Hn+09aVpM/bRkWnywdtwb2vPkJMGWNsa2ctfHaOuYlaQlq8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760117994; c=relaxed/simple;
	bh=sQApD1JmiChqs63En+ORAydA8+cIK8Oy9JWzVNw05mI=;
	h=To:Subject:From:Message-Id:Date; b=ga0ps9m1KB6SSXcXPMbQ5Ee/K3U4TGkU1ebjA46SFO7opqy6uP+knMMhUVPhISoaaTfgWvIfVJepcOCvo0ryRW1t6fxxQRLRCHrRPN9jGGc9chz/V3d52NXLG1D96n5lAQzWC8u6CB7GPu+Qq33OW1Tl/6yYMVdnyi7XAvRRt0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqAhDbg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqAhDbg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ED9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760117993;
	bh=sQApD1JmiChqs63En+ORAydA8+cIK8Oy9JWzVNw05mI=;
	h=To:Subject:From:Date:From;
	b=BqAhDbg4P62dULai7lsBdZkkkdwmJi2Bn8PQJdGQSasSf53DdcTD2w1akddMxG2tv
	 McqcOceqIy8oXzTONta9q01qYv4MTQKcZQfPJlvB1lUKoQ4ErrqRvzG/PAPIB2FrpM
	 hbf92poGesMRp5yXUO0UzuTLlhrrIP4TFi7ItY2w5krQE93XbqXepXtt72opZ4GZqc
	 YvY1lbOYLcBLuhVC33GdApev8ijZfdIDJ0RUT6h4cRQBA4f2Ll4jR8R8tJgmDfqjZm
	 eczssqnMGsMAEjqUN4r+rkGZ/3s/iaoqH/44EWNWPymn5g+tI2bR1ZFB/EsMJlNAyw
	 rvIEyLX4Q0Y0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9015ECCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011799358.30727.14083562638293615358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1117e0156bd69c22fdacb626212ddf1ccce841a26e454890bc2f6e681e95d122
Date: Fri, 10 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760117993
