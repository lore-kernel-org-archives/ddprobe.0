Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289BC23B61A
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755664194; cv=none; b=W1aQlVqlDGz7b9gY88p6ie1fYecOZXF+y7Kp+7LvFQcTIP1OuM/Mcyj/WBiBCvQJV1ONnnjBNO4f7N1NinQgSV8410/ev9Q3QKrk48yyvzmlqaWwUEm125w4/m27F25+RJhyJO49TvfPLQ+0/vaa+N85yUQpFjE2yOwBj1qbIfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755664194; c=relaxed/simple;
	bh=2qk/tTNBRSAysRNyuZ5TrCrEFukNeDUO+E/aTo7MFH4=;
	h=To:Subject:From:Message-Id:Date; b=iE0qMd/DS6LaIUu3gmlzjgjDeSEM6TM1NY7hpB+qHTrCD5mVE2n+bDH03kqKpHaT9BW+OwCTbZGIzSx/7PC9k1aEogQ6uhH6JtEmo2yDBE5pWom/qrVCbZWhlzec7aBgLXCJpgPXIJJ+fuem5CrIS22+dBtVOebJvSADJwrFiXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXpI35EB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXpI35EB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4313C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755664193;
	bh=2qk/tTNBRSAysRNyuZ5TrCrEFukNeDUO+E/aTo7MFH4=;
	h=To:Subject:From:Date:From;
	b=FXpI35EBi1S4u0v2FjlGvuYlKXGJJ9JSYIjLHnqf5NqeduPwo0BCSOzx5kbCN6t3y
	 VTO2qbW30XQo+XCX46FRUvOJyPYQluNSkI14L6aBfWYRY/WxaxEWuvLqulNMxCLIT+
	 Z2FFMeH1+H3D9E1dMHYAM/x7ZuMDHl/vpA8Jhwe4JQCYyW3NRyCQ7KWDyHAL/9Irea
	 QXhyR0ShPUA1Q+Hxyvbrjm7oYUgmV3msfwZ7zS/ljv+pPhwbBZNoxASkLjRiZMV7xE
	 nQ1OVS7J3tMTre7+1YuKRSSY6QTSNUoKEv5yWhsts74LBRtg1jQe0x5UyMbDnrPWFD
	 7ZSKbrzTyGXLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9315DCA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566419358.18843.18329105055571517491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c01f1449b8f3c886ddbc728d766f7415a6e44540a0b574fb138136fd310d5c
Date: Wed, 20 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755664193
