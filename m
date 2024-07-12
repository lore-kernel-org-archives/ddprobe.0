Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4098A14265C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720777703; cv=none; b=K8hMG92rGPvauygH/EYRYvwlJGOMuvp+LSmbiSgrljw3/IDmsr2xI3VeJSn3he4Ioee+Avt34bxqwVNpP4ACdzhAFQJ1wKQnS+OAaQtS8oeUUdIt/X6m6sb6pToSKv4VHg3UeNerSCffGd1wz8kDjzc9MGQzGoEvbnvhaM6X9lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720777703; c=relaxed/simple;
	bh=Cl0c/POygoNaMLRsqeFhvi3QMwzjbM7No//F5lL1yRU=;
	h=To:Subject:From:Message-Id:Date; b=k3ms1igws3z5PHGZ2h8zMfs28NcFcZMRr/vic42XtC3XfpTgdBCLRIKpa0QDDwsym0WrF9Bb3q5PLhcGYokFyGgXvX3MdGha60uKLCd5MT4T0U2fcO3yT2/aXGo4vKGF7b8s3pkhrOc8urxvRNgopsVYaPOuh7fEmVoJMRfQHAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1bwZAx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1bwZAx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7997C32786
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720777702;
	bh=Cl0c/POygoNaMLRsqeFhvi3QMwzjbM7No//F5lL1yRU=;
	h=To:Subject:From:Date:From;
	b=e1bwZAx+bLASq6eH99xEyxUWri/+NbjvyGROvThHe9OVEqIstvHqTjUcX69+Z+cV8
	 jJmsuKbNL1z+niOzjC/zF44y6biJvg9bOMQOnBo0R+vUY5p0pA4RmA3deHNPwH5NG3
	 jkkiq9Cd/HwXIJ84xS/Q2bGBoiWXNy8RjyKaEi/B1lutIoVmq12yqfjDMwpBp0y2P1
	 lPRV2nEqE09uDD6Rvdo7w7EC7HIPMMux2vS3sZf8/LKk9rPvPp7o2drAz9akdAeXaR
	 9eicyhCqRnWB1ncTWiPDPWX1BuV1/gC0OT3rXifBIrSt8J1z+a8U5ud8LN78eqUYqk
	 9EUX7s8hGjDKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD0BC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077770277.18847.14442503037989670936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622ee923a2af57c3aefdc1ee2f2d95f9f3e2bb85626773ef990c1154e0b1bcbb
Date: Fri, 12 Jul 2024 09:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720777702
