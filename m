Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22862139D07
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727217354; cv=none; b=RUBtxWnE+mG9QuIxv9oDQ9yPbh1q6n30YdALsOGxT7XvIjsfULEf/mYodLzlqCjGXmvlar1gPZEKZyMF1i2PGTCPN+u8l+uncC/tZb7k5teKhFUq4LMNiv2GG2wQOMPFo+UfImqX70DR1ieW1ST+dcnqFdEJDH2mse+lbd99npk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727217354; c=relaxed/simple;
	bh=6Tu5TVJNiV3E3OZA7j9HGEro0EccAyTmxgGSjREL6Gw=;
	h=To:Subject:From:Message-Id:Date; b=fCaEBoSwUkYxOACxkb7npK49/46fwkzlrVg012GQRg4yu+nD2BsKIjHVEiXy6/pApCwjdgnakmYbnXbqIjuLlXUHD//pC3jP5CJX3YH22PEjMgA/cpP1pqj0WK1m1GsCVW8ccA2FcLv0kFNEuQA7UTDt7cTT3Yw9YMidLEJ/ml0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+nkRr6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+nkRr6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8539C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727217353;
	bh=6Tu5TVJNiV3E3OZA7j9HGEro0EccAyTmxgGSjREL6Gw=;
	h=To:Subject:From:Date:From;
	b=m+nkRr6pESEtLC2ehSVzXaW/QNkMBzQFpB0dZSSKmdxawvmlmIDbdvzHPL8hoYaPH
	 5CR20vO45kW1Y5kM5QK9eCygKoyOhNRBXLHTyi+ESgrigkJE+14gQguMzRBHHDjrjZ
	 p8crxFZXs+A8QwWJ9n29NEICdrsMW+tZnaBffxkhsPMRzUJE11XP77uYkNus+8iRwR
	 yTbnmEHpcfEAffVWARRimeA4Fgx6fh530gRcoq83ziUgMFEelBvnuoyeSFuqMHstSX
	 gmInXNNS3NswGRpDCa9wNhE/SIp9QCgqngoKyNww5vUcaYCZ+L4NUJGhdXZR9OofXl
	 Y60Fs/IiPMn4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957CBCF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721735358.20956.525266278868696859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76fd49a4fa776ab7d7fc63ff83c5901901212185931d612f9ca0d450d4e91e46
Date: Tue, 24 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727217353
