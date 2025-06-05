Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA911917FB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749135595; cv=none; b=oXyaa6zTPEnbc0sIciwXrpdB6ht8DfpGGwOynCmOklrnae4HqMSw2qFzOy4oOrTKdtAMLGYCZEYEFlpxhexhfmRZBUweBlnPO03xc0aXjG/pPRnmTWxHU9pPt7Pbw3FYPDlHvCFVLmQAq4vizkrGoZZPtwAMQFRIpvAMHw4HIvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749135595; c=relaxed/simple;
	bh=SimiDAQgqnUCRqY/ZeIHrQtc8PdfbOFdv2K5aLdkQow=;
	h=To:Subject:From:Message-Id:Date; b=f7Gd4rjxgu1JWwA2EKG30OM2Nrk9fPfipLsQU8+kAVUx2JkB4YGIulS9hulKHJwGnxEwrmyOi9aLpBaoyEbxkmcfhzY1M/yoeWx7nXxNcOFyOnWWpChB1kl4Slbbgp0j/AscM616PnspMeCoj0ERyT97IyMS3mWrIRDmXFUknvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SufZ4byP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SufZ4byP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36B2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749135593;
	bh=SimiDAQgqnUCRqY/ZeIHrQtc8PdfbOFdv2K5aLdkQow=;
	h=To:Subject:From:Date:From;
	b=SufZ4byPKP7ZAw+Px8QB2mV6WYqyza3NM24TKAEO0G9wflrtMv+y/KNClEfgiQGxn
	 G3utt5XFJurlzl36ghoJhuz7k8OFM5hws7qeuraqP4adJSPY2TjEW1Dwj89yZlV4U8
	 aeZSp4/lL/mV+ZLHNawrkrSuV2y5SPPJ1jqwao3o2McZfsdU5l9QGn5t8FztkBVVYS
	 0pM0B+K1Et/OmrEwfGgDREq8cIp2TTuoz0OiLd4weEAQlPRJLCVRr2XzZyb0In1ly3
	 DdsyBB9iK5BpARKp1NiU+BBgkr9F1HeZbH+cT5AxhK56qu3c4cbAqUnsa75kOTuU4m
	 yyU9V7yX9kWGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E5C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913559358.15757.412101951613893170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dfb8412a431954abe376d11df8ac90c858b3b0855502a5dc5ef694b91a325a2
Date: Thu, 05 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749135593
