Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6F618E2A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719545063; cv=none; b=G9vnw5CBAxnJOkofRiqUBsDnPs3bHiSLQI7r8t9BI605EK2THoOIu8I+ab5dRKzcLyDphRvs4Deaoh5w02+h4wCQ5IzCQXMaJpkE3X0f2K1rsMxjYJe4XKmC1HSXvccW8VvA0OOGc/+CvxI/tIUSuxSNfQ3EXPgg96IBiFjKTFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719545063; c=relaxed/simple;
	bh=b9stZgg40+uWRJwG0bTLFTm+8+m5KrNgp8NPIW0XW34=;
	h=To:Subject:From:Message-Id:Date; b=HD0ha+VjW3MdoWMKZoRC5uAKEJW9B3EprgLpGzdknifYOBOh5xPAGLeYnqxRoCg44nJFSU4kwrzovCry8vQStYg144lJdIAZtQY2BggMKl01rrhQ/GuPOpQ4a8oJmslbnyLNSlfr+/reOERCp8bqogL0cXY8I1Qf80Ww9cZ7Lzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwxL9SOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwxL9SOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E10C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719545062;
	bh=b9stZgg40+uWRJwG0bTLFTm+8+m5KrNgp8NPIW0XW34=;
	h=To:Subject:From:Date:From;
	b=bwxL9SODD13wg+buAUP1h2CLLSYcQaJsinUfz6Q0SBs60EimzrIsVKd/l56Pke8ET
	 Z43pQCrKXd4nwVJuQ8DDegItxMYCyiaUFqs65azpwxWB7ovtV9MpYIBaeg77nNlkuf
	 9XyE1iOLiwCFID1IfjnnR8dWdt9qnA844qbaf8sxl0YwkESe3Haj9jyP0r1z/puUx0
	 60yw61IUibSeMcumY0bfnqGcgR+dlrRVsvSeVi1rQK0NI6kV0+q0Tvx3+iL+pSt3Qp
	 NDlfqsvbvYoLGMdX27xuSjym1EIM7IxSdmBQ1gmd0UPPpK8pUut7BMMXDu/XUl5+uT
	 ThfFWgWwlhpXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC11C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954506276.2413.9682187992369926998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ddf24bcf05e5f9e811c3d1698028398588fa7b4caa809f7a1a2d06ac902d00
Date: Fri, 28 Jun 2024 03:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719545062
