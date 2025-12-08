Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17636DDAB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765206174; cv=none; b=DXbE/aM2LGofp491STciVcnPGHOKqP33IoSP0S0oQ8qwq0F5DfTzKCKY3OmoiQq5YkyEUgm4+LtzmJD8cfcqnJndPTuZPYCu0PcWsLi9/FtktvPkV05bldwmTVMvIdwcgYe3mI81M3ZXP4HWtaTTWurXt7nU3qaYqN84bAmzHfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765206174; c=relaxed/simple;
	bh=q9FzbHxjrwd++2n8p0eZgvbtgUx1Z+Ze93c6ZJnVLlE=;
	h=To:Subject:From:Message-Id:Date; b=aPCw4pA3W2OAs3DSTgZDlwRSuioih6AfIKyCJ842ie6P5QE2hhMAN18ApqgHKFyLkKodILsC6Jb1OEMyaOpnLd9upzoiMoVzCYte1h2xXPnwyoPTnzHFf6VzH2URv4InCQcCKWvy7sokE9lE129/LX+dq/eJR0oQQoQ7bwa+/8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCTityZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCTityZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A11C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765206173;
	bh=q9FzbHxjrwd++2n8p0eZgvbtgUx1Z+Ze93c6ZJnVLlE=;
	h=To:Subject:From:Date:From;
	b=XCTityZLnhndnLfd5gNmdWky4SiMhE+SS7W1EdcJ/EG89ZdUeswYp6qMgICVjQAdp
	 fGpQ5oGrLHNJp9ugUfeLnigO4BDav0HlBPZ7sr/k4z4tes+mVrnR2iDRXZZhcb0rjI
	 LPvbO6azzpneVh44ozrRRLaW/U87GPKZ30aI9bCgLSDZ9b9Q1J5wb3taSZWrnTP+5l
	 75skKTHU1gRpmfV2O0qMZJIALvX6z+jHVHFyyl/fzIJYMIe9zLTkH/La3FK0S3DCcf
	 zzVDFur5/AEP52YB3JwxTr3zfgGyMP0CpbcsISzJ0UYoNzl7gG63GCpw+Y2SdO1PiX
	 rWmzsAUlEZYtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE4DD3B7F2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520617359.16737.816889255619519288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e39e1fabc5943936d00f657fa779a5f759f4fd272d363453c7ab9c5bb42c3de
Date: Mon, 08 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765206173
