Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630D0372B5A
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787942434; cv=none; b=UHEMEoDzWVjdsQf8u+h2JkErj16r5ssWUvM+nTpTYa/OoeNTmr/aDJe2LlvQ+aV10xyqa6RZSTZXfOLXCnZc/Zb5yEMKpgzEgLJ6XjIelwQJ9u71lxFKHiyu8Pb4/mRYB241vyegYJaLeV7cgzxHZQ3qNcDzk1jq491Z6L+hEtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787942434; c=relaxed/simple;
	bh=DP0j0kHQ+kiW2DWiojNIq46sTBDvcY4I4sCRE/w5DsA=;
	h=To:Subject:From:Message-Id:Date; b=ifnno6buqN1tl5eM8Z3w+Fs/E/3jNlXczyTY457FHMsMHWUMvWV2cyJK0D4IW7yCl5ka20DXtNCVmkLeEIPPWISz8W6xeAd3ahsQD+6FebhqtbbYIKk1QjeYl2vArv2tCu11tBNAJug+REEFzJQRYXz+TjMw18iy+Ewuw0xy1iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpCCmpf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpCCmpf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0BA3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787942433;
	bh=DP0j0kHQ+kiW2DWiojNIq46sTBDvcY4I4sCRE/w5DsA=;
	h=To:Subject:From:Date:From;
	b=IpCCmpf7uMSsPtZkJZdwiWxk7bAWwQZRp9exStXcRQqzIikFC3pWt7vdfUCVXUzNk
	 G2DWeF6OWrBFLDkXL33tEP8XZ1As0f1yrGcUkDZ4T7bJm2eAgT+pWQkZTrIlGazqQf
	 YQ9W+HwxpPqEIzfIFvwLJNFE7l9IimtC9HQQAHNhpzald1j+7dRkRkpzK0aVm+oMdR
	 VEt2Q41N5xtcjYizDsAyYD2mBddXPUOZXEzLlVvR6k1ChzozHhNjbF1w8Uw3dDSF4T
	 A8ORK8/Hsa0OWI515TqA8lEhKjuuP/ljOYVmglODjYawTVMIM0Tw6uLJ3yDU1y0Du9
	 36QyyOJbe1hjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F8EC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794243370.14865.3483749676409431787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2915bc2fe436ff783f067adb73d62e7e284afeb01f54811959a708b30c995921
Date: Fri, 28 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787942433
