Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E15F3E493
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713368363; cv=none; b=XhK/ooBsK5xDmzWkGMlr2JHH7x1JJWVacVl1ma6DzfDvkJ35Dxnh/u7a2Bufud+MrHEoPbK4WOCHPredDURQjvl3SfmqQIp8Kt3snvmsaK/0pgDU9pl2xP2XjKkmA2tOa9InffRiUzgte2FYAqDoAvggnCQZv8ukis6KNi7WUfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713368363; c=relaxed/simple;
	bh=HrBk3tjxarB6iO67j4SCUBroXa+I5unhglRKCczWWtY=;
	h=To:Subject:From:Message-Id:Date; b=rJTdLrzM0ct8OLqsDTnJZrssQW1cGfKM2kolOOGqtVjskVAMFD7MaCWQvOj9cwssqt5Z/ZXlSu0ol2yw7Ewke2G0H7OT9l0OtVMe4BO9/KrPY86/pQ0nXNJRoG6K1XFCFbPavBV+SEzJaeFp9YYiK0fb2Q3T5Yt2cWahx+BQpXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvDYeRL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvDYeRL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E24A9C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713368362;
	bh=HrBk3tjxarB6iO67j4SCUBroXa+I5unhglRKCczWWtY=;
	h=To:Subject:From:Date:From;
	b=RvDYeRL/+QUUtH8oQT07WfUgZoMpnWCLOM/IJOUzURGiVACo/+BA/UFL7tRTb2fOh
	 RJlS0gPmscnlL9xeWCR40M4gt0/fvjaKBDA3HqdBIX07aJkIi6UkmU6Rd0WdJ0vmUE
	 O5FWW/BLxo6p9C92Iytx5bTkTfO4F3vnoyvNDmD6toMyE0s8E6fW/MzXg2l97RMz5W
	 TkDpvNJLn653iEtm/7MMAYaop9ELiBxtUUXCiKgsMsnQ7sSR3vnOSAJH6pT4/HwRtN
	 8UNzISFcPAIsY3GvkitkKUnTIO05qpr3hPIRhvTwr2J/rDTKBMr0taDOAJbcHSBpVm
	 FHWIrmFwjr0vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCDF8C001CC
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 15:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171336836282.17161.1271163715545142607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f63063abd1887c2696509e8d530738f64d9bacf56c4fd6736d864db65d9a0c
Date: Wed, 17 Apr 2024 15:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713368362
