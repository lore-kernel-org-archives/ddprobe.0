Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074A71799F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771949094; cv=none; b=RjC9CKEEro9qvXfQJDZBgiPtpMtvcajCuABdhefZCJ8zRolMuqW7lmYEVUpxoNeEn7QdfwXERdSRmKnPOUwJOCSZv3P+OX06ICVy0B/OsjWjxmaJ2+cSZeq5PncwUDd2DYtWe5huTFVucDZHG2vI0ti0mfwpUp+nG5gyLHRhSqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771949094; c=relaxed/simple;
	bh=2arGBDRRWLhFRToBucybTtNjSAmlDuLV0f1LL/U92aw=;
	h=To:Subject:From:Message-Id:Date; b=ZljpOKCTF7n/lRgpNmLgfehc6wtMJkqVu4pqykDXjtvAoPgmXT1UVita9GH3thsBkV27Dy9et7VpvEow8ySa54EXg5c56bgH4PX24w6wmMaxNdcwD4nH+YpD8/MHbeQack6x096ZI4oMWMZUAdYKBY7a+VWwrF7xLjCXGPYAb3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJQ0OBP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJQ0OBP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F7BC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771949093;
	bh=2arGBDRRWLhFRToBucybTtNjSAmlDuLV0f1LL/U92aw=;
	h=To:Subject:From:Date:From;
	b=vJQ0OBP60flW5ewtsseccL/MoBul6kDgQrfMl4Ivp84FTGH4FvO0bz0FUQ317jo8Y
	 Gpw5P/KjhBhKNW1GDDzPsTU3nFM4uyNDNMz061bG6xzEsDzHTu2hYWOJmko6zBG2Ie
	 AeV/pjBvBDu4wZfErZRGMIskSmdkGrSidY+N387bgviABhqQ7t71xguJ4QxJ4sbSnC
	 TiEbnvnZun24JR1traKxIUX85nhEKmvP/NMancvASgbuAhJi2sBkxu3gBJnAH1+1xC
	 RlVG5eh1CT8rrzwYFD441p/JYEeLOnfMZI/jANARWC/C03+XnqTys/cLi97JcbY7h9
	 luP0DoMdVXIaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D56F3C9AD
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194909358.30643.13313282874082916234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05673f0162e723d6f3b310f809254804dec552866dd7dd83123e48d3b623db11
Date: Tue, 24 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771949093
