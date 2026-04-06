Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F683175A9D
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775436334; cv=none; b=m8P5WFwWxGHYEacXbtZe3gp0fhTUn4il/C6fHEN+lt6XSIEw2MJ0R06okyzpsEA8xB/Fj4D5lSa6uUd/RdREZpycx2Aox4oJCwg1YuyGNDi9GHOrkiWMmCO5er4xdlPTi+eGAQKzQ2mGmWi7ku5MxQqINu+4spX0+ln+wp2H7nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775436334; c=relaxed/simple;
	bh=REdcuOXdpdFxV5kCPPre6EQqrOI3NUGJmgI5H5k6nVk=;
	h=To:Subject:From:Message-Id:Date; b=c5SDaLfEHtyu3EkC5InMdazs+gflf5uKX+GcVII1NABi3oylosfM0BdYaG1XAd4Z9Oz682ZSMXofxOCqE0HYdmNVya/kWaeUSH1o5sQZWY7eZnjjg6Cn4C0O8d3xvhP+F49bDID1y8ZVmTKVFSyjrlmyW4X5KQJe3fzkSFp8WLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DT8VxvNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DT8VxvNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2696C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775436333;
	bh=REdcuOXdpdFxV5kCPPre6EQqrOI3NUGJmgI5H5k6nVk=;
	h=To:Subject:From:Date:From;
	b=DT8VxvNHqcvfQ8m/v/b2jeZcMiEAaLa4FI/XHWn2s7rcg8QwAgeA7G3Y+rfHUiEL1
	 dG9cDkGznJM1OqLC+i8FwQNQ5/KoC6fL1/SyWOOiUcgg/jZpg8cYq8/bccHAeIQQ7C
	 9P6Fq0pBcDUY4TBzCLaX89YQPAZIUN0wdF939RKg533RpWlRo0v2pEB87HKXbWk3lB
	 ee9x5DNtpd0xEhE91wfXsBdlhQTL3OBMkWz41EYjknLhrYCzsF5sFHld1f8Qy1767z
	 P/uAJdkZsF92i/ZWUeVR08dsQG3XBSWTHetTMPDDO1gpbJ2CPQBORhywFPZpy5h2g8
	 nMyolXLMPLn6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF1DE9D828
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543633368.28882.7646748261264872439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b667a4592445d9477bf77664f8455a59d650dafc2b87508a229bb5b97063a5
Date: Mon, 06 Apr 2026 00:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775436333
