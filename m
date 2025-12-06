Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AA0824BD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765011175; cv=none; b=Yf7PfyxGa5rz2vJZcsYcTgcL61S08Ztu+ElDUb0sSd1JzyTyANJ9I/HteKgvL5xLa3OEgQysW0rczQ1WG6pZV7V2RTLLImzKIK2hkSle1fvDUbcW2Ks5zXKzGQfjrdKvOlbKptUG88ez01yGUdJiuwrs5C+KThbe3nNIQsDVRWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765011175; c=relaxed/simple;
	bh=BS93gpvGt/dH5IaX4ieesBKOPM1SJf3D67OYtf2mBYM=;
	h=To:Subject:From:Message-Id:Date; b=qhjzN1HQHGLf77xxdPTGfuEJqTHUfIHbcfZ7d+6ez+6aevnUPdNaAEhD5/deXOw94TLt50Su+Ke1N/uP0YodIigqTSDm3SonmD28rPMaEvCJoGBJ2EyxPENqg+4foCwRSP6S4inO8VIsD4BMFT/3p6agXID5Dm/SUHoaTbt9WXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txOLSl1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txOLSl1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC68C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765011173;
	bh=BS93gpvGt/dH5IaX4ieesBKOPM1SJf3D67OYtf2mBYM=;
	h=To:Subject:From:Date:From;
	b=txOLSl1Le0fKsLJWrVZrJc4pyPju6MJYZ72uGZzqArKysc5VTf1FLxnoBDYco1fkK
	 SX5X9tuxqqjiissJZlpJbmB53GTE8sO/VFB8F5ShoXiJEy5TM2dRMfuG2AgfB/xzQD
	 5eSLXXntyBWwDUlgJx2JCXXs18rviBYRFpv5bc9ynfwBDvgW0C4ab4B2mQzM2g7SJE
	 hIDE87O10S1yY0K2/dFCO6k6hC4ATBqTIMHOmjSD0dkwkS7CWi7XjeGUnQr+0PFLGJ
	 WwaO1EOgB9ndouiYqwyGWOcemR9oh/I1yCvA2P2uWow42T3oH74sETxKNxO71rCLYK
	 SgxIEIhf2dycA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9083CD3ABFB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501117358.26490.14925014537394938780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bc82f03f909056cf213d9e24c658c2159f94706966a29f2d4167d3575736fa
Date: Sat, 06 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765011173
