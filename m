Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5066878F24
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746854394; cv=none; b=k1CSPK5+DrSQxrfRRkhFk4WsBin7wjiKIM/MfhkGGKLqfdy4u0WL4CkD6dXlieEDEpE2t6hggKqfrchoX5KwQ8o2fmmOzxGrVvud2RcRCNNh804ydRKLwUJFFX+hrI/7YbfHBwKEV1oR2Y8BUWDC5zHQl/xsZkcHm7UXN5UlvMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746854394; c=relaxed/simple;
	bh=Bk6oejJqnMpVDvZjDv5tl0FxGhaT7pH210DZDPCZLrQ=;
	h=To:Subject:From:Message-Id:Date; b=cxITkMlb83GT7KSbWPw+CUAlU/vY1PNCZp1PrD+2XCt6GesS7DODHkgN29MjomscthJ0D1cpnWR5lOBJY5Vl/cmOuv0ULCAcgWTymHz8XKI3swNH3qCcj5sYpi7B/EdlFrtBjQF1s4hBWCpibr0nfah/08s792I4ulkBN8Isw0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwVE4gl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwVE4gl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8621C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746854393;
	bh=Bk6oejJqnMpVDvZjDv5tl0FxGhaT7pH210DZDPCZLrQ=;
	h=To:Subject:From:Date:From;
	b=DwVE4gl2CecOsXVhXNWZtR35ODQxvWop1bO7DKE+iz4bfKyTEUD5B/BCyVYx78cSy
	 B6cSL1EV90HIgbv+55sJOV6wlrVMgXsDqnleBVhY5RSt8kUDlW5IyMu6Bp5vgnF6y3
	 ilF4sL4OXTbSUbF5LEVhLFKeb3XwNav6eOqF9rqstxUGaGWUCYL7COVjX2cbwFWUva
	 pgaHYgyJUWCxBDKEGgyGgqPVERO0Fe+qqYZFwg4i3SHHUo5/cwSH1bqN1WzxfctYgx
	 R6f/6T80vpeAtwduf6zt4psGyDh911g5y8aHp4WUZ2BDjktj0D1sArT6LmZdlpXLKt
	 34PeybllMReyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967B8C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685439358.17326.8748766859013669788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a01cfa45ace98b480d94584a4efe8b75dc8c30ffea2331dc6e434b5a128e9a
Date: Sat, 10 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746854393
