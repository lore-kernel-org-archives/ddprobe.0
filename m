Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1C88BFF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749387594; cv=none; b=docml0w2Lz3kcjvV1KLvbmw5tMv0y1Tr5tcUK02KaZdAwI2Bgyw9FC/0/4hneYR/LWfrYHwGmXOhds87HjxYZcR/tNiyQ4FYFJYJcvD7MT+oTF60M02ENjj79pTU8s7f7bSiZkZgvh4S5CVHqOht8sFw7Cg/iur2R18/yXWPENI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749387594; c=relaxed/simple;
	bh=1xqKPMgEs6YpA9ijXMXj1uYZX2NHK5678kMgmkBpGrY=;
	h=To:Subject:From:Message-Id:Date; b=mcBISi0MgLsdt2bmQ2TjUWUMyrNVjKiZdgcmm/BrsK8cOIaUa4AXfu0/N0xceJODKtUa7QyETE5ncOR8+p+Pjm40TAR3EYZBPanTWiQ9lfiGhpsci3VkeaTe7dNqdlP46HKovzLKU9S4BtrX9yPJ58WDuhpRELH7mGE3oQnPzNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gW6QsunF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gW6QsunF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A104CC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749387593;
	bh=1xqKPMgEs6YpA9ijXMXj1uYZX2NHK5678kMgmkBpGrY=;
	h=To:Subject:From:Date:From;
	b=gW6QsunF5luHjc3SZ42bFPGeZMicJeNJx02dPADzYNDGIsYyEP4EoGESaCbEmo2Tq
	 X7/VmMWIWVHXMdaCt9faBXBLYBvFFrwanx/UlFzfJYSh7KUDxp0XtNq+mYB3W6runN
	 KzdBstjRUSvfdrvSFrvNNRfZy4M7phjw9ZVxlXCA6SwxRabRIPiGdIsDi1EigsAMH4
	 f9qgTeBXPpXElkslpCp+W5nLLqYZvZ/MQMIO8UhpDG+1kJZCZhOgdqo+7zgQejyx/q
	 urlFjdhp5Gn2syRDiNa8gKXnoReh/nus3DiFnxMW3UyLcajA8mAK/YaJYUvPWARTEo
	 QQXtoV4dsv24Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E563C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938759357.13515.5918429367086003769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbab545d3d564e22a81e5a5d8e730a406cbccfa77afcbd5d628846cf960f52b
Date: Sun, 08 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749387593
