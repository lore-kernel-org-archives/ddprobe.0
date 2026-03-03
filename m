Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BDB158535
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772504694; cv=none; b=IsA9Arq+tE/NLFlWzy6RycESBg5RYy11F24kk0RJTAlw5idA72UjdGeYCaMie8RxsXztkoDgKeUgOdIhaHlbiIFiuFTBtD7XAHocJh7s3ngOKkqJr0sjLpdvl6mARD67owTcSI/kIrZo+fJCyVMq6r9E3+tmb6NP+T+HLxNnYDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772504694; c=relaxed/simple;
	bh=oNLrKQw934pj4LXhcdR4NSrBCbOr8MmdE4BdCh4AEQA=;
	h=To:Subject:From:Message-Id:Date; b=aHGsUIDM/0myf/y2GFZi3+pV1wujbjt8J8QDzyRv/UBrx8fFlWAkAFv1XaByCnf42yu4wn/0SwR9GRFpLn8D8XNHIDFHENKd6FZ+m76IH+CMpnwQxJiPLPYxLFxj4hkZHva6RZ3j1cum/GHYz3GkFMlZEzlhXXTc85/0HlHsmCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9UHP9zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9UHP9zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CF5C19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772504693;
	bh=oNLrKQw934pj4LXhcdR4NSrBCbOr8MmdE4BdCh4AEQA=;
	h=To:Subject:From:Date:From;
	b=r9UHP9zvvZeXFLkXCIlRlvVHGTTjOHTtve4qFkCDgFPCPWa0T2J8PsEuYJkdRbq1K
	 T0NZbALCjPes7W0YUDo5HN6oz47FKZho0pQpvSaKWUdQKKCXd5J6ZKX+mNtUjrjoOo
	 FkLbNAAZJg54A8PRZ6RtddDH/CNcLKZ4JDtQr85WNbffg+nIYXq+1kLppPdA2c2d9M
	 pss5cka19qouaEtp0n1iXicGFnRU+iB3M+M1MaZxUNRv7bYrCVySmUejbKGjsvGEWE
	 HrsV7sl8EG74FhMIis/GIujXBOZFwCgplG8uTl70UrpjG4r97+eHpH9d9/VSBWVjLw
	 r2qPjvGz/I5MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A56EEB3648
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250469358.26955.13734824866860645036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c52fce2e9855ac0525d08be9511cf847b1c539a2e85613395775a3a3ce3db4c
Date: Tue, 03 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772504693
