Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D6F274B46
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791874834; cv=none; b=ZzGitoFOOZWS74/BnyCVad4MEGHiMIazgKEaxH0UUwRkXSSCiAB4V7NeZVcvLJaU3//SxLcD9Nxr2dUbR5duxITFAFKKSihq+mH1nbM810Yss7RmfZRJlllrJTd6cPxkv1jdXcH58YypFZSwkQCRSQmeq6sYF7yz0IQui3W+tU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791874834; c=relaxed/simple;
	bh=P8V6lZEbNfqHT0BCXU+9SN+D8HpIZq8JU/i7uoJnq74=;
	h=To:Subject:From:Message-Id:Date; b=Ibh3uopJWNEUX8bwaiwGEn4CcORBpWdknVW67vXkvWD/OdP/EmNuiipEiTu0Pwn1xpzWcngMiE90eQHbFyY2q1m0CGWA2gupldplSlioTl8wSr+IaspKlMOaYGpMg37+mYhuAOMDNp8AwOd44ieNhxgSFSXQXXHdP912K0WmVEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFieCX5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFieCX5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC73C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791874833;
	bh=P8V6lZEbNfqHT0BCXU+9SN+D8HpIZq8JU/i7uoJnq74=;
	h=To:Subject:From:Date:From;
	b=ZFieCX5Wq8rldWy2WwVtwFQ5Z6Hi2HqiIy+sAQvqYVjCnoD9FR5A1D8GkbLTnKgg4
	 h6jOa5v+fPf7SHb/3QaDYxPyRCzcYv3pCfdd9wBShXT8QajniHeUnw89s52HwBgimO
	 AwRMnBJFQacKs5A0RacqBBvJyfNQuK3WE40W76zpmMZ7QjznUV3b1h99LBzqdSPY8E
	 MqKZfyAckSlwza9qI2w+IMTD4VgfqpgBK2s08x3wU/UTkNkdBzClmRwpgC/O4VYjSG
	 FUIubSJ3kPNna0GA/Wh/RlH3HDD3m4nII8MqogKdX1ChZvcJGC/3IgJJMqFGR18uyN
	 LJ4vQ0LzKkGVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC32CC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187483370.19764.9235333890635242200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b169a7ecfe0a3ad82cb4034049f2a41ed0a5e50f193d1ce8844db0b693d041
Date: Tue, 13 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791874833
