Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C991E5B63
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762661994; cv=none; b=RePajO0QvOW6BL7jRYrhLZVknOoFezjApJ8WLF1HUrMDmVd5Z+weAtCjyna0ua3ugoZtCeHZUyLcrFO96n++i5xpDZqpzejo9Oby4S4kSDpqRazqiqM9Mipp4LTA/qEBA180GGAGx5XTisc4xjyaB1+UehF/ZiHzlEHOELga5n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762661994; c=relaxed/simple;
	bh=Jppjngh3odS/SfR1dnEgNkXx57yNgc7HJ8Ijd8Ojrt0=;
	h=To:Subject:From:Message-Id:Date; b=R1aO5dMn1dqr49feQj9R6INKruEumTnkkMJYds+F40X0NFrcewWxi61tW5xtvelgbsixjredA90l9usV+nibSxAj5txmHVvFztVcjj3iH5jAE3tNMdGTWhYJbeky0AqNB1kp49JbK+mQ1woeLN24JQtg1DgutUaOii3Ow6t6+uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCfNCb4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCfNCb4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CEAC19421
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762661993;
	bh=Jppjngh3odS/SfR1dnEgNkXx57yNgc7HJ8Ijd8Ojrt0=;
	h=To:Subject:From:Date:From;
	b=qCfNCb4bnqkTzyfk/pCNQpNsiytU0UnWcC/osyPItlvB9dspfkQMWymWd2vtefAS7
	 Kk5qgFzuv5u7ixxsDinbdzyheIehRZZFaWO7H5qLysNASAcQPBxiWXEpbLOv9i5wiC
	 RWDn/Y+/RvOohp9U/LLMRXoMaq/h6XklwZ5eiC8KMC2K7zPESZWlGZ58p22ef/DEZa
	 C85gMYFhVTdNWyrCIAZGcoz31Zsa+AeEyA/u87vOCMEK8nrMY3atJojgjvbJjzdPba
	 f43xBz8UyviImWwdOLHE3ey6oHQp3viN3S5NfHlzJIzwalMPfhPrJM51Lus7HWyUPN
	 yHeNU3rpezKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22B7CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266199362.29255.568691149157831431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbbec6d25d58aaadac17335b0e01608710a350295082ad1f2e5657ecb700b0a2
Date: Sun, 09 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762661993
