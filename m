Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32721770F0
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727752554; cv=none; b=m1V8gHqQrgnaNLnZ0mtfULx7fCEExPeUvqch5hi3FypMVIJLj/ru9e6mpm4YZ05t6KFw4geio09JeRkGPtvWf5UKRb6ZghsBSz/o8Rz1URh3eYCMeYCDZntZycYI1g4/j4YJOVj73nzIllqMfALhmmQQKpBBuEcBB8YTtksQ/DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727752554; c=relaxed/simple;
	bh=gI3QplrbaPRqfmgHHaHG4DbOC5kKdrFnyKSYdze4BXY=;
	h=To:Subject:From:Message-Id:Date; b=fTLJyMZnujv68LtAT60A5dgags1KTfR+iT2FXk1MSB4avRWEulNOh1dpriU/sjWuclUxs30Jv0e0hFQ0zIZ4AIY3As6HV7/R6DLbn898u8bpcyvVxR4AMWM4HqlLXn9stuX/Qiu2ZQe2y5kIkCwT1cjYYvJTfoTH8wN8P/x/bkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldU99QMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldU99QMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18E7BC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727752554;
	bh=gI3QplrbaPRqfmgHHaHG4DbOC5kKdrFnyKSYdze4BXY=;
	h=To:Subject:From:Date:From;
	b=ldU99QMb2oQyErA7m1CaPw9F8WgDDnnVeQ9vjn3W5AnHzwBNkdppHqmLNp+y+ZmUf
	 73lfJmn5uMVYAqjZFpFPlLFtnGZetpX7BXLMGsy21kiv0gOjjQvb5Pt9pbK0TQg18K
	 EE9Zze939ZOVpuZCTkDH9TOZ7vmmvVix3TXjiTf5pqF9xGgbsBLcb4n0anZzLOIcEU
	 yiRmxm9/5KPDCRZ0qwFkvStPYGbpM8yz7dQjuRXUnr3jkADAslHfUhuEpoXG7RoyH7
	 NTRocdVJoAh/wOYZGOijAMjnDJVrsYM197egWu/o+sCqzzR2lDto8XNDNtJ7zc03lP
	 6h+oeG4ak0T2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE240CEB2DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775255380.22219.14813760751568705335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da45cd6d0e7e59f9aaa0b2b6f043b48c923c6e1452ab7eb667bc1c53f4eec120
Date: Tue, 01 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727752553
