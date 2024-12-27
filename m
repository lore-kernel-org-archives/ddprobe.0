Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336E2360
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735274754; cv=none; b=sFb4N+gf8IpoikWLGR4LzLgQ637dDuzFryu1w5IKlSRt88FU2jER9h/gB5G6TD22cIH52l3d8S55FcnyO/MJ+00PmD5UeIh/8fz/NKa6/SAmpa/IbHgnWTgE9/X3AhGSI0ZrXlaIuDkajEymTHjZtPgWIwMH3NVtmKTz6ckrRAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735274754; c=relaxed/simple;
	bh=R+puk7I0Nl2D3Kg9jDAnTyX3wkpKlirzFCxnHtl6N+k=;
	h=To:Subject:From:Message-Id:Date; b=qJX4ON+uSdUXyA7SCXt/nemYsy1+ZrjraK14rqO9buQOKzGPBVucdN5wlRYmvecXr0t8/w3p5RrH0VFoMke0h5HPZ3FHY6e4r1NdONgvfoMOz/fgliPETLqjapnfARkHKDehBIB2ztG9plK6dChXL9pTSlHq1U7j0QBBT551UUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEge99C/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEge99C/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB04FC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735274753;
	bh=R+puk7I0Nl2D3Kg9jDAnTyX3wkpKlirzFCxnHtl6N+k=;
	h=To:Subject:From:Date:From;
	b=dEge99C/yiVT/mg1Pm2trz8Co/nN7uJoYRdpE2iANalBS94tAadPiRXwfq01oIPSV
	 ZrvhLdQFPTF5D19rnBb9dCPdGPMXv1mhM0LMiJScp/AKq1nhrrWfgnl/oRsBxEt5iV
	 49nhClgr0Okf+QPMSvDu99NrIn+iZVZ3w2psWpqYuLhE0eSljXZcRbIEab8dHboWuJ
	 1y0rkEHHSng3b1OsKTqbhIMDWvMX1ewa5D+/veoHkcNa18JwpVWFBod053P7tCdZYr
	 s641qHmfC400jx3jBNPDv0Y+GrPZreDXhObuyvxCNlFUb2p39KaMQqCrAMwZz0ocG9
	 OXZ+KcrrgIGWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D45E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173527475361.26888.15387631917531727327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4ab05e69e22c809471e3859d3b8ba0bc9f4d2d8270dae684478487b3aab40f
Date: Fri, 27 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735274753
