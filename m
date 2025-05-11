Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F762F2F
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746928795; cv=none; b=YmHCF2EADQF0FRbfR5LDiydmc2ixd2lj3LsJCeKHfXXFlPzAt2SLbK+fbCFmxlspCbq41T38PpbeOFXU17ts2yy8V/NYm5XfqHkwfssgzWTaI0INIThcpylRv9CWbj8rEs873PEYKybsBwNBR0FbZill8ZKcm3Rw5buYvaFIyAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746928795; c=relaxed/simple;
	bh=nKiSSLUaay+qm2z/samNwa1ap528K2rq9ZbloKr6vWE=;
	h=To:Subject:From:Message-Id:Date; b=lsXNsGGkHr5vd8REIyJDYyetZu3qxjJeRrnt5vM0wCE5XIkSaxDgpfQaDogUbyulWIVKTdHwQ+DkiIMmmJfIp6m62RVTu10dyhyBVoM4EZIZlfQsHh92jD2oTX5U08Y7dI09rk+cfflcHLSn5X9Le0A0P/JG1W02UsWBQ/LIn1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqSlxPQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqSlxPQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3710C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746928793;
	bh=nKiSSLUaay+qm2z/samNwa1ap528K2rq9ZbloKr6vWE=;
	h=To:Subject:From:Date:From;
	b=eqSlxPQO3jf9lAHBfV7Va8S6RWQP19FFcQdITofprA1zw/Dsteve4r7xCTrEB2wh6
	 F8gh4fGtki9U02cD/78hcij/Qg0SHRIK8Q79qqywNy2HwpIpTkLGFyIczhvYzE7VQw
	 OYq/beRBqcgKpQnfesif5vi2HT0etzLYTeJdm6yJZ+hXNwLlaX1SQZY55dlzwGAwPB
	 M9Gmy3X8eD4+M0yjuwNAO8eg9vJhCQm7i8d/D3xfreWB57XY1NDQpcbvR3ig1QpCtt
	 nxgIJ26g9k713tykzakOUZBG5YCnSk87KwHUZP7M7VJUbNJyuxKMDROqayrM6r5ZZe
	 lrztU38O4OO7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9145DC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692879357.23256.2651811603638699973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e2c490d8bd40ce86df45c3d8ed877105865f08fe0558091528bd343c7c4a01
Date: Sun, 11 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746928793
