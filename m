Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC6476F17
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 03:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714102943; cv=none; b=fXE+z4y4+ZXtFrnq8fv1hzUh/qcAcesEYiTmeDPtA/9wKscWYna7UJbSdjm/KMLkjZv1tqOdL2GvuG1dQkzYwWvuj0gmtvZ4Qs7ZFcMW9NyRUOc7CvArYtvbN2Glh/fsibijbFsTmCgLdGhQaBoH17YL9262CJ8U+jIEwE3GUpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714102943; c=relaxed/simple;
	bh=Zeudne5FUDC2EK9xipi3Mu5mBf8vhSohYggYGe3hqN4=;
	h=To:Subject:From:Message-Id:Date; b=OM4DQv7hbldvgicKKEFDYXoT41+gpymXNp/6DY7EyJRVRNdfr0jGEY1f5oeLz2aG2lK6ApITCkYcxW8dqK0SP+cQOTbyNpFgw3iI3FyetJcnePahscG9Ht1IDzn50I0/A69j3DsqcRPVLAEbn0aeoDyNXw7VOQoSrY3+6k0m4rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUgqzIxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUgqzIxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D414EC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714102942;
	bh=Zeudne5FUDC2EK9xipi3Mu5mBf8vhSohYggYGe3hqN4=;
	h=To:Subject:From:Date:From;
	b=BUgqzIxUH5Qg20zCM+fDrEl8AysU8p3g403uAEy6OWH2G76kkzDlifjJMn93R7tPI
	 gvncZOw0G/Gk/KlwSPxiya+egfshOhxDVKXvH8RGOMbMMoxEpJjV6B9kEETxA+0xzS
	 nCzC8SRG3jl+a5mpAm24SoTPxNJ3FzP08kuecdarzRZa/vskkFYuCxAEvXz4oA+k3q
	 kaVKRZ21RBKG6Ood3B5NP9/5FlhhNUD5f94uFaEUTzwjyaFCCR3YVjLzsEa1vRU79N
	 6eeTOBMGunekJ55skiQCCo/U2kaEu3TE8V8G8kzMc98FrsCM8rQGdPdTBHWfrjKyTP
	 BMkQFVGNl2xbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30E9C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171410294278.28227.724220422234599163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f447811cb8263b17911bff2612d27666504689064308e293e74e8646fdc44c64
Date: Fri, 26 Apr 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714102942
