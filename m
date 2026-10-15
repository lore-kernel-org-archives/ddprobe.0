Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDF038B130
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792077634; cv=none; b=Vv3xrTHeJX08BOWItagw0cUUdFvTp0IbT+Ut2M9mFTh9c9HzW2Te2b60l2BVutPTCyK/Bcuz7up+hnXfXD/20O5wfn57/3YwtHVS7GQbVIZkJE5T9ExLvr77AtLwL2wb5V97pi9GPMRsHHCtmfax5pbYugdkS32jcqJ2/jKgtMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792077634; c=relaxed/simple;
	bh=6UeKEVgRrX2nl2uRqoc1rAaeplpF4xDREKNpkK6t3yk=;
	h=To:Subject:From:Message-Id:Date; b=kEipB1WwFm0Jhujkxxayey+c8VUu7Kt/KcGyMLWDdNCZ0AU2MS9L44OtBHJfx+DAjyFQXSaQnK/qtQ8OdFsWlIq+pkwJ3wczPNC4uBGOQHvhYijiGr8xA459BNL3bQ/DTsbNcH9mMW7cmrnyMUStfTwJZ/wh0W6Aya9OlJdzWhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4BmE4fx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4BmE4fx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC96C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792077633;
	bh=6UeKEVgRrX2nl2uRqoc1rAaeplpF4xDREKNpkK6t3yk=;
	h=To:Subject:From:Date:From;
	b=A4BmE4fxlMV0ok2l+N1zMXPr29KJC1MRFFLTf3RXdLmf94YBna4DFf9pojNKSOTlA
	 9Q3fLCKbaB7cqysyAVS/YtnNjmzGDcZqdfHThHwSEw5T5gl5Mw8KEZ0k/aD9xOZtgW
	 1ah5V1EppXnwrJ38nebW0t1u6npcsNQUVM5CJ6GFoDURLsEQTBmVcrIHGyiPW9yAMY
	 OBGuowOLYSuqn3GdIOUAYRhgcy9yZCjRWbbyKjarB1unFk5leERWDhOjmksSym1co8
	 W0EdMQ7YHqfhUstXAWwUQmgO7Onj2Rvyg6UCGh5dl487boW5TV7krNla8Huh9bby2i
	 8sHGUBygZjnFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8DFCC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207763369.11753.9042682574631550610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7251a26b76bd090a49e22cd266d8f1b0cff487c2b7bc61f1ad5caf5e0c79bf97
Date: Thu, 15 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792077633
