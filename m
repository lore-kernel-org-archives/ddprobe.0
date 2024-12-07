Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281E982C7E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733561754; cv=none; b=G2LwTx14c/bSoBREy3j8P9H81saUIcs+ow2llhuzl8kvElQ7VYyyGRR1s55vjQosDaUXiw0U81zX0eNQeE+obaQetneiAqr22rHoYzA54MBKC7zLWH9RUiNT1EvRY1+C1Hg43PUUbnmX2eXGaQhjFTVdwCzgy/jDIEBnLS5+DiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733561754; c=relaxed/simple;
	bh=OEhYciSOn1cZEpMI1Rf9QueIAmp3Tt+Aty6ADxiGsRg=;
	h=To:Subject:From:Message-Id:Date; b=gqREGfqN4uMC3u8B+Mb+k60HdFsZqFw405l2lkoa+ZEI7dM1+Su7feXj82LxvvEwqLZdAb7FQOm7geIe0DV4+6rrDBzG1P5dr4K52a+OO16tdqFEF6avKhRPkeVxOf8sXBrbM0U4Q+9G24oYtJ1hyfa3VhKm9t2Tn47CBJhPTGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkD11S3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkD11S3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81CBC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733561753;
	bh=OEhYciSOn1cZEpMI1Rf9QueIAmp3Tt+Aty6ADxiGsRg=;
	h=To:Subject:From:Date:From;
	b=dkD11S3xlaKdcL0W+AlIblaVzd6grGAf2GAdfXpANWcFEQiRO1e7kR4UI25mL4C1i
	 QOtWsE0GSHq10+8Pf7hEOkTe8yNAGeA2wDHU41/GMWJXvbAlrfmVA5d3VUmOq+BxiO
	 S3FP2xi8wFA6SXnz3mZXZgJVKswftnP4mgtAeIRe2n/xw2NN9o0aiFtRVTQbVkP2kX
	 2cx0fdLTEvNIODYAPqBUt7/+EHJrJI3Dfbd3NQu0W8B+GWTJ0aa/hiOj+GduxcwxLk
	 oh1m5h20VOYoq5n0p9mFgwc6lcSuxDr/bi3jTtEiRl3jXAjgmo8z2b4ttwTGC8MJJr
	 aVlDQpfUVDL4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C5DE7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173356175358.17058.2502682251344996417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181d83e1eafd4a7b11369729ff2c993fe861d5f4a4b48fed22d74010d969c350
Date: Sat, 07 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733561753
