Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4658885266
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 23:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714780343; cv=none; b=HaVnyCyP0SF2eHJzRkh1QfITfbMBo7jZXD7XbyrTiYhxn095MnUZBUDylG2/wvDtqzaPghTI44ihk/7lKpG4apUCj/ReD+EKOu6NgkKILijgAMTQhHNMkzFPMFV4h5nqkN/5bo2croEKii7PrAihFvGiJ7co23b4PhlXj8tK6jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714780343; c=relaxed/simple;
	bh=w0koeMm2+9+BEM6OVhhuNVxKKdBtH1qTd0qa9DFZKqc=;
	h=To:Subject:From:Message-Id:Date; b=EnY5mf+g7grqvmRhz3tnCk3fYZNkQxpWgJKmTn13rh57C2i4wU/HLsQYuGVxJoGIOiPXQZHnI7OnzCMOkW/Gl/ZJKvUiYsCZRXjDo2AsW5z93EQXzlnUeE3oZ4raSzBRrUq5spVcEne7MrDu31mS+xMGin4BLbC+7EWKiHKc8+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rseMnGna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rseMnGna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1675C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714780342;
	bh=w0koeMm2+9+BEM6OVhhuNVxKKdBtH1qTd0qa9DFZKqc=;
	h=To:Subject:From:Date:From;
	b=rseMnGnayHY5Wvu1viLQYLcXoFQjA7BnbueYsbFEcupss3EzNRx3C9If/ZXX9JcYq
	 44e6lG0iJoqmv22pF4tXRpsGev7aeUYq3lwV9rmp/ZF6ujeVF8nvq3+XlG+z4RAIQE
	 8eDOvd53y6ucplmE0FQMffjLnlRzAjSeVm7sEpRspbXTD59HiGuSZ3YyUSDuiSrMlP
	 993kNDHTWq3R2CU+pWk1yoVsDBYCfpw40+OfigPkOlxoYiGp4V07+6aNEMfPLGYL5T
	 73BmQGz5+BW4u8hT19KMMdLOSaG+NhbW+MSDPi5WYJEAMSii5OsQccXMb3HbficIfW
	 qYWGaOoaH3xzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD235C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478034275.7371.6682034400968823391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152d90f6fe9c7a9ae28a0efd389fd9a812afe8e9123a1e2e0f1597b91a0b1bdc
Date: Fri, 03 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714780342
