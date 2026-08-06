Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422CC125AA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786029634; cv=none; b=UbfJWimoLRBAmZ3p07o+nTaAudH6wgMaIJyWZcQY5GAyOri4N8Pf/CfcYI7sGBEWxOIgVCc0xaeAg3v3p95vd5/wuLoy/3Z58gyhDKEEu5VUXTc9FHrGL7sj7PZanyCYgmSDjTGNwvdh2yHabNTxMyzHqwsK2L+UkN1fsX/weic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786029634; c=relaxed/simple;
	bh=WAOE63I2L3y7mHhe+88QFqDSt4JyAHgnipgDNbtf0c0=;
	h=To:Subject:From:Message-Id:Date; b=RqaBY6N7AkLvIeyI1nDr7UR+4WhlWsNmvklDr9oblJfgvrXNoXYoeIsz2YsKUKQyKiY46NM9OUn4krm+Ufn4QG4kVFc5kIVrFDLBZRVxIhZlG1tHum7KFoP50nCWR9JH16mrVBjRM8k5LrHF0tFpJ4NfmsTB8mSs4+fX7tVKlfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDmT6KXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDmT6KXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BBCC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786029633;
	bh=WAOE63I2L3y7mHhe+88QFqDSt4JyAHgnipgDNbtf0c0=;
	h=To:Subject:From:Date:From;
	b=uDmT6KXyHh9oOwqoqsbFvd4gLnm6x+mp/CviqQX7dQYeiKrx38RHIgJYVLSBSJfcX
	 zo6zwIjrZe2RQ8mPAMmpvRtsXLmY7cFz/CtpKigsWX5NRB6QrJ/NUKaX8C4dtuSiG6
	 UoqJvwzuoax/dnd+Ciq8iKHKoFUAAgdKCFyU8S17VtyyZtTmX8vRsfXM8GsWcTZn9a
	 eh6DQZ5ovfB9o5Kytn1SH645YWaOf1XvLZbmzW55aBolJ9B6vcI4wgkpBDMX+/2tEL
	 3vHVTE6fMduM5Sla/prgx3KgOtHWL0q0R6Obbv6N1kEKdIGGHYZhOJKXJ8mYIpObtE
	 ZKc2RoVTKzebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF1AC56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602963368.10700.9670185594486829176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50b1baa535b2ed61e992ee50c96358c04eb01e363744a5a770e4d9f65c88637
Date: Thu, 06 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786029633
