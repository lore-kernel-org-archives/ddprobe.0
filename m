Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143ED946A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768013634; cv=none; b=a9R5u7NnuX1RZDmy+Y15wvRmA25dmFeud0ZDLtDDPejBae+boBcpZfbC0TApq4dPga9IJjfxDcWW8sZMioe8HkwKHRCPP0nmzP8puxzMxZ3udd8jMgozvIhRIV+sOYAGnSmTMw0DNLRJsgENNjt2D4JEpX3NmxcGY/rdgHhJiJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768013634; c=relaxed/simple;
	bh=ChKQd0BJXoA6h/+PBGDCMLWm6peF0uIEdJmsiDdN8JA=;
	h=To:Subject:From:Message-Id:Date; b=cUkSSsOXGUEayd5WZVg4Mnebq9+D/ymhCT/tQNuplZCtG+JGLWfD/rilpEKqY/pAOxDh/ce3YUzdwq2tmbNBO/uLQZVRyzNkLUTWu+P1tfRtvogz74vTrSLJyasjuYn+BQ6SDG1tGsLs3XQh9KUyBA4QG6Pg7POuklDPwNs6nrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtLb0p3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtLb0p3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CE3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768013633;
	bh=ChKQd0BJXoA6h/+PBGDCMLWm6peF0uIEdJmsiDdN8JA=;
	h=To:Subject:From:Date:From;
	b=BtLb0p3MLQifo+ofuNs7Kj4H2KZNrBD9GkWxxyIa8hETygdHXzg0nlQQhnKLomRxJ
	 5zhvqP+5aUe1MpMRWpi9v3ua5H/0iGGHi8LVzIXnUXZsXpVoK5uGRf/EvNjNXBwfnV
	 GLyOQ75TkxByl2yFA7zSd6vMX5iCRU1a6sa2PPbYeWjjyIqIyF4vIITMkTRsVNEktZ
	 0XzPs4B7WQbasCP9PTkMpMIlDSrZZ5zvGie8oD48FUiVPofAx0VSSMlz+vLsdauIaj
	 vsEi7YBSeMhzwdmlaRae3+iYzHKXLlRDNGzaOIJ63WYct75S8S0FYJoiUQ4yv9FKt6
	 74uszdUMFnc+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C9D277CD
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801363357.18919.8134943472154299956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5399e9f8e935805b54adfa02da9dc320155d72004ef8191e4e3b304de18e185
Date: Sat, 10 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768013633
