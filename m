Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DFC3BBF2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750126194; cv=none; b=E3oakI4DRRybmll2w7Qi5Mym9JaPX/hCyklo+4KfH9QrdW9GOWea5WmOccWiMNmw1AfqgAEHvS0jK+hmYtHgQFpAzMj385rggTMfGoehyoD0fjx3cRnpkEM0e6yooM5hy4pXsgXqhO9tMe4+WIgchTYEUuSBvIFsZX0XZ3Z8FJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750126194; c=relaxed/simple;
	bh=6BLpGT3H/0k39WtDAmEc6uNerI+F3ROIs2Fgei/qI1E=;
	h=To:Subject:From:Message-Id:Date; b=LZbfnnX9N4W5Hh9ibOsRMk3K4TYiL1eDKIOwjNJrO7QrV2rDSd99jKdGooY2gUDOe1rZqQs0pr3CNheELiDmegJdtSlG8nKMrqbUpdwa9O2oVhDuvIFAuVZrcMtAUI/SGYmo7rn5qEtgRG8VgJa9mtv5vi3nWquvKJHF5bDsgaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOWvsntC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOWvsntC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4033C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750126193;
	bh=6BLpGT3H/0k39WtDAmEc6uNerI+F3ROIs2Fgei/qI1E=;
	h=To:Subject:From:Date:From;
	b=MOWvsntCELtWicY5XUyUQwdapU7s+whSJMK0LDwBtWH5vLFgFtEp3Mq89RcW5m/lb
	 PmqZYcA4vYEB7QgHzwAGr8v2OVdT0serO/F/yhHSJ4YMyuzTmy96hh0Esy5H6ktgeM
	 mnMKX35it98FIHrgDebEXQasMt31p63XhI+kSox937oXSSR3OvG+zEO56OpQY0Tb6C
	 h7wsOYPCmak13cfYfKYCbxPTpYUEaGHHy7PgNLAYMJ7F8E9JUXORDDouW38qH7TDoS
	 6vt0kdMpT5XVeAdU+ZcWeXyhk9WC7+4slr3cNyPLG5j3EkqSpmuudXLcGeo2ruu/8c
	 CTopWqP8g9ZoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7EDC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012619357.12340.429974246677299854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0e2f24201085bc211b9433f40b967cace16077114900a5dc1e581bb2dcc093
Date: Tue, 17 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750126193
