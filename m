Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408D317798F
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727733354; cv=none; b=KJhqF3cOm+9PBsAhldVl8snvZvY+DBSuUOTC6ARGos+BvkjwceJidpOi8jUpsuBNaEiNCFYBx+klsJtAbCIjiHp4nPakyGxRDQ3JEIoisy25kG841BFQaR7a3oWZhFDv5uzegCYTTSdU+bb7jrkV7VbpUlv6E5tD9sOT9PnLPNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727733354; c=relaxed/simple;
	bh=MshJUfC/Lhk3Jpa9MJUhtEPFLb5wDpp/a3Jx6vVk/+Q=;
	h=To:Subject:From:Message-Id:Date; b=mjTK8FaWFksY2XFDqwm/1XhLKDrrZ9g3vT8G2FMpdhB1hT9pP52W2cdWK49IsBJz4ALxfU1lC2roGNxhv0Itn9u40dh+2PkDryW736NraXMpPZ4tyIclkTp+3sL9IDPKWR3nhCws6Bcu7yhEwIfNdHsKu5eYtd7NrZp2g44M7GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDbSEVCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDbSEVCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEB4C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727733353;
	bh=MshJUfC/Lhk3Jpa9MJUhtEPFLb5wDpp/a3Jx6vVk/+Q=;
	h=To:Subject:From:Date:From;
	b=XDbSEVCUDjXfb6d/KO7/4QsaGhs+ZBvhjLNL+ZZ4ZV76MKTiTSRyx0pE5yWSg7Ds8
	 FazXwS8as2T3drYivD07Lu5DLuo533K+gVPSZWhCer0r6I2+wMwdPcOWGxefyBraPS
	 iz6jEvQyPhMChm3heDFxjZUzeDj5dX7Vijteh1JTnmIfM1uKtDMDaJovH1pgzyeEM9
	 tkNLLDv9eOK5LYnSiY4ATvUGIU5S2HbHCILn+8ynAwp1kdOXs7TUvb8yRgwEeXt6rv
	 xk41Y6lyYqcKAz93HWJdqFWG81zYpvIp0oLducAueC58GwYYYrJVI9axIO2VzkGro1
	 rU9NHaIQVDVdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C505CEB2C2
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773335363.13378.5649351204731512148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8672a17ccc0212fcc0f16a71e5813318f423970fb45128948d00203c2b4f9f
Date: Mon, 30 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727733353
