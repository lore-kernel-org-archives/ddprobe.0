Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E501E26F29C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778968834; cv=none; b=VE/Wxm/EwKwlGwrcXC0/Bv1CxSbOr9Kz8pJX7GNKhrI8GI8JfbnqtrFZ4k5GCozG2GFPS3m5rLQk2QhErSj0beVwdIpAThrq+pydV+Av1jdr4ayRCCg2tuTFCI5fKf2DWmNL/1aaXvMMHdEamoblZUcVKy7KrcGEX5gW+Zc65BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778968834; c=relaxed/simple;
	bh=7xH/poonXhsFjqC0N6g3euNWCWfAFAA56s3YvRepOzk=;
	h=To:Subject:From:Message-Id:Date; b=jzeJGc1r3VD4eZGOincWEvTrb/k1Mm2BROG+EjZ0TiBwSfCZYYx+wesyIBIR1iANsSEHimasxCaBf1+u1Pymf8f0u2xhCYMXqXuoFZWOMcnJUR+eSp4vMDPfnqk3PtuhNDvykVeIdWe4ySd1IppM7pRWASwwUIcxk/v7zrcSkx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZH91uKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZH91uKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E54C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778968833;
	bh=7xH/poonXhsFjqC0N6g3euNWCWfAFAA56s3YvRepOzk=;
	h=To:Subject:From:Date:From;
	b=aZH91uKn/pmzknb4pV1l/S99rZKmoSMtDm3ZYXdp+Xri81ddKapeFw7aXx7gCyf46
	 2G8Z1P8XOclc7snW9hCOthFyWRi81k+CFzd6aFsV2xWIrMOM+IX661LeJgjx9WDmxn
	 FYDNWeemtzzvEExSRUX8R2PU8b2Oi5z5KS4GMz8rxEvzCdhQcIS4AyuRxxj0mG7+5r
	 4C/G6DQ8qBwbF5gBiGono9Dlk89A51S8xmbfKXal1yPglbFoYjqRQ69mnrLdoyrAz1
	 vvg19PU5NvFDxs71oyPzS+mnFEdVQKGWb0d4D6XM+pfLzEU75OMlr+VAU97nLJC4+Y
	 ttryZd6O7FDVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FCECD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896883368.23087.75532904747380080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c30a3a44b78635dcc7c738942c69b129035592150acca29775466e30e206b4
Date: Sat, 16 May 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778968833
