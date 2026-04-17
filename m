Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E05926E6F2
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776437254; cv=none; b=VrgUuL8qpEOZSK5pGPRlwvmaSQOwCYbWoJOu9e4iO2VCeuhK71llWPjxi+QN8bPvtl4edpPVjDqi6goH3VIBGqdPy4DqQ9VYg52AXvNi8E5KXBgPmuhebolA41OkCXmnAT0Q7HN1MU8f3f1hK/q15aO11FuxLlAylUfLD+soyEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776437254; c=relaxed/simple;
	bh=LBjCyLMEkGBKWV4VmysSknRvw/FviHY5j7WsZYFAplo=;
	h=To:Subject:From:Message-Id:Date; b=bAHkhvX1XPol1Bu2mIPrmbyFdmKipEKb12phJgDy4D9J8P9iKGJOTDLRrhGakVcQiMU92J2jBsAbtaYlUYugUFHp059FaokbpjxQnZabkxk2WiS4LQM/G7yRnyVmJzoBLhZtOI7bR47Gzwp9gn2VE7sOUaZMh1PoXNnNMaBUdZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JP3tQfMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JP3tQfMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92D2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776437253;
	bh=LBjCyLMEkGBKWV4VmysSknRvw/FviHY5j7WsZYFAplo=;
	h=To:Subject:From:Date:From;
	b=JP3tQfMRTEt0bopFxE8HJOZ5pIpbWgS9XHzvCB0IaMaY9MvMIaeEp+TrCbZdlCO1w
	 3sgL91lQCg51HuK+Wy2gU5mpMSCYrXISrwJeShhqa29g2K5MKMLFksOcRmALfZa2uC
	 nPPM1U06NDOWItzdhXzFBMnfJjQ0YmxjEnkV8E/xdAfO2mk6bUStbF7+ht6XV3D0AW
	 ESB+PMbVyl/V5IYNve2hxKL0T8+Jc+7/4IMxUidb2tM8wGsD23rVfO3N9fUe0gPWnJ
	 bsGeTwkytfY6QkL1OvzYIuEwlbP/rG0rlVkUujfJxzF0TPWS1qntuTuVADK5VlRZmU
	 7HLns/+Z3hXuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A4AF436AE
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643725368.29494.10609298408274662840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8348adec0718c47f8471c2f666b94e739a12806a66b3fd713cf62dd1ac880605
Date: Fri, 17 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776437253
