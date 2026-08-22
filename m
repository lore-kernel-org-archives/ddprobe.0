Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D563BE172
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787394034; cv=none; b=HL3DF1vQ2C11W5Vni1a5JpJVs6+jpupYT9OckdT+USPuH15joYMGtSpRbW9SqBJGnM1tVcPwW+D2gFWk+welIjwTFsNJvxb1A8copOPem0SfIEFPTgMZckGBS0tbxDk1tk0S6ya5QEs5QIrdz0s4pJejSbrIdg+kUQ8BifBKb2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787394034; c=relaxed/simple;
	bh=tyqxmnaxO4GPEXueQb9UUXVmFJ4alCAeTQMdX1ji+qI=;
	h=To:Subject:From:Message-Id:Date; b=rHVMUSvtBK54A0PdP31IdYG6zYSBmIzM2P5S0DDBsk0cF77j0gs4PDoNF7U7F3alpO1YSqTMYjoxv/REB2N39xFPb4/yOPcL1d1UWmNKeyMXfVyAyhsGh0bwl54Yq+1Yp/ksOzhpaBE0kXXqfHzG+Xf5BxxY+1l3fKZLBLiX4Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YotPuIm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YotPuIm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC33C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787394033;
	bh=tyqxmnaxO4GPEXueQb9UUXVmFJ4alCAeTQMdX1ji+qI=;
	h=To:Subject:From:Date:From;
	b=YotPuIm0VxCTZ3WYk3XS1HiHjh2RgOE5t4T/hWiARVvqL/fs53ujXXO9d1K7TooVg
	 LgTLDf9ucAjwmDqyrnFgx1ZrLDnyXdNN1ddHauCnrMpm5EBf03mTBCW9wCJ0iUFIiI
	 SBytNh4wJOvJuYklf+PaWqryoukbkZEa05bB1sezHQYsTmK1bC5j++mG8nwV2DjE07
	 V2Ivb+YLV+L7dUjFsjlggiekd23qa6s6hcSGT590Vbzc4o14kS/DDab8Z/SuJS2FUF
	 0huIlyY3w+e91axfcPv2K5V5qct3Kj+N7PS4NMyfqRM+16UdRDSzXrjuLseE0j4c0G
	 zRXeMqAguP+mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D2BC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739403368.17121.12847473167695988588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d8eb154041a2b08523c2afd6c7e7cd38405b3913b36ca07b6ab01c8e1d0d455
Date: Sat, 22 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787394033
