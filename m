Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABD414F9C4
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740508134; cv=none; b=Xpf/80H7Ic/6p6a3J62u0PMmhIVXfaLvD4Ul8lGCRLUIZS3T91m4cPa/lJ+/1wY1iXKnMPNf5OCocEckFXqIri8vHQ86zvNuWwFvaea26XqrHxv1CsqCvNj+003TaTaihmARNv7k7OMuZug5rE0/roWwFbh6U1z9P9zsBVq3LEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740508134; c=relaxed/simple;
	bh=BjIQSUtv4DgMyrMNpL3+giQ5Umg30YnIYHY1DUn0hys=;
	h=To:Subject:From:Message-Id:Date; b=egmZV/NFfLIIxG04fwe0oh7pFw5kylKtkLTFu0IHBqjWNSr8JRXUkvarG6GghWFovXo6q26DGwTosQPGd1b1tkKcHuS+83M9oQiLF3b3Tw/+No8a7+CPxP8cSwYr8X/XOz0jCigiEcvqJQPCSbrgL/l/WyGbmmrTWTag2koTGVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQqtz5fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQqtz5fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFF3C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740508133;
	bh=BjIQSUtv4DgMyrMNpL3+giQ5Umg30YnIYHY1DUn0hys=;
	h=To:Subject:From:Date:From;
	b=qQqtz5fylfjV/RkL8qQ6ItAlA0gXGdgeeumiIQxCdvL/i8dwiQ68F6ZDo9E61sFyG
	 zeDm2KBA0/b59QlE16/UoOmyRnLi4L2yj935QVbOMB4DJ8BNlcGs7glPh8T7z8FZSG
	 oyYo/M//2p4nzh4GG3d9xYfGx+Js0a6klVXBoM9a74BaTQefgQKswdHHeqf0kpDCjr
	 ejiWibJNPbQ+zVZB6xA2iqDvQNtkflVQHp4+HWNSOve25aGnD6AHZTiZTKkxP5AGsx
	 T7uzHDmSa+npTNfFko1opiygdyV64Qv1QhoFwbF1b2etlpIXtUU0vTSjuEYlSblvSw
	 fK5GWIWTuXdoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9718FC021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174050813360.19417.1590855230630518749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5530519918be83956dd49c7928b3de90bbbfea96f953ca8f14b496cd6ad2cab6
Date: Tue, 25 Feb 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740508133
