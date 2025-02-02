Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409B32F3B
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738532754; cv=none; b=e+Yoe/Luo/dHE8O2+vmYa4rPBFEB3c9qUhyIlnPJ7ZFI3d0IcDLWabrrL13wz8mMC1IU4jwA1ADSJugNOsvvjbMTaQIsNRjvYUDtbqNyloXvEh9WbtLys9RhLxavn4qMOV+uC4fljAwSyXxa8FK++JzO4e51cQh0jnNQwWwBh5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738532754; c=relaxed/simple;
	bh=8Ccqm6Jdq5qIHpjqLjTtADumLIxac2438in4OpoZKHI=;
	h=To:Subject:From:Message-Id:Date; b=SdeLHFGbf+j08FAY8tmwXs8CTOV/QNCL09UsCn8i8/jF8E+e48leX3s/Dsw+vvMQteuprg43dxI9/tjnRn/qDZBBAuXOmqOrCIZRgXwuSs19R1Jw5TlKQCfF7Bjsa92+AlqDyHzYNfvItsevL2wLJ4tkeQsjE1acX6SXgRpyZtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeBZgyy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeBZgyy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75B5C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738532753;
	bh=8Ccqm6Jdq5qIHpjqLjTtADumLIxac2438in4OpoZKHI=;
	h=To:Subject:From:Date:From;
	b=DeBZgyy+AdrkF/ySNIri0E62np4H1FLns0aa+gAujTzR0eV8UkFpac+YmY33kUmwh
	 zEOzf5O6MNtFMM4p/ZvtrxmD24SPPgbh//1ibOHXgxfYGcbSWpISanROQ3lcHRxZ63
	 LfaW/4YD3PE2v9BIyoz2k3AMLZtzJvGd/tIdX8k7GFnFsvW8hXOcItII1spfE/68gt
	 pyvV/YtepMpDBN+SWuFuCmDRNjhCtDQEbyeS1/UJ/WM1CQk53I5Z4sIL80SG1rtAdo
	 iDkff3IZZ3+1M1x2u6Q0kdS/NmMBOpYasdjtJN7/kx0ohxRvEW9Rey6Kd9DCmQc+LP
	 KWKeqwO+49Q1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D24EC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173853275360.21603.22114718859318672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb023ea25d280820b610658a6c627155061668c28036f181f090117c1fd05697
Date: Sun, 02 Feb 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738532753
