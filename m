Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272861EEA28
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747913394; cv=none; b=rQglzY5KNAZHabMULSyvHxuqNltER2QQkjPAMpcQCObJERal49Fsll3wW41Q2MbYYcZEvBE6PZHlSVzKY9xPLSps8bEpiEU5lBwMZ6Ix6wvx22v21IIaOlds2MdDumWFkFiR239tHJ4fdU35cBOHbe/atP5IBEnGoSUXsAaw8ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747913394; c=relaxed/simple;
	bh=L4YAB7z3DOM8gHA7HdqaIbtuM+VLPOTkaKIKUkMIuF4=;
	h=To:Subject:From:Message-Id:Date; b=WZ4h71ZjAw+VWeIgFMBUrFy5Nl1TMBMysSppLtDGqQW3rV+VwGgmw+aus9c7cLe+IcGeRtapwO7w0muJIPtioFmEU/Wtl1Ie0KYKueY0Qbmo3SCKZOlGBUZmy+QUm4DxoWZYbdOgzzWECjZsEGUIZ1/iPtnzCdU5BeuBMGUTdWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTWFV6iC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTWFV6iC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E310C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747913393;
	bh=L4YAB7z3DOM8gHA7HdqaIbtuM+VLPOTkaKIKUkMIuF4=;
	h=To:Subject:From:Date:From;
	b=cTWFV6iCsVebU5eIBdKv5zoi+vk2VNA5CKO+8NvYFqQ7oLqrem9mPRhuIAZvvvB2y
	 NsWnIKRFAZam5l0rVkK8BKEZLH4FHqMHqVHQyniGnSobjPI2HgoYExcURKf8L8Mtn0
	 dt9VCa+GkvnTKIg952c5eFGb4sobTbk5NQDdydQMQvtwXj8okTQQ8n53vi7k63FD5m
	 DrcdgWo4T68qUL0B08Z/Px/UvIEcZSuWlZH7FqchEGHrFmKVzdPFMyHHczq7DsZLEk
	 ZPtpVknHb9NPCAtdiccRYcKkX3kORYTZHG+a5zXN5DiVMcyMdMnLBSIEpgw2fRhfYB
	 ENrvBHIX5ah+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED67C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791339357.5533.2310963675174393553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7308c282a55146fb8b422bbb5d76f085da80ea0be180b6c735c4b3411a80686d
Date: Thu, 22 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747913393
