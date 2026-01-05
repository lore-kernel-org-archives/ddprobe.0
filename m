Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273642F0C76
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767608034; cv=none; b=I8WXctA7zTCid/ff4Qkx8QU9PljgPmWD32/NrWyxYtqwX1GRuz9zg3tsL4lZfKzanB7MMlxYD6+CymkPYSMqqN3tIg8UWN8Cm7Dawou7d5rRzrdEFXnn0qDYLPZenUCqpTMHJeSNWGvkBSDxc0wnajTslEvddD5sxkh+URh76yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767608034; c=relaxed/simple;
	bh=kNjifYzbSKg5A40EX8/0bafwSnVqyrZaYgumoBwsshw=;
	h=To:Subject:From:Message-Id:Date; b=SuYCQ0COaaZlRcFTEAQAMtiQ/Q76ZlxQ4A+QEPk71v2u+fGZ9B9oNcBfsgTrnHZp71TUJcZJ0r+Ec2FpRjd2TDslAxCnL3arch9ZSp2alnhSa/wNfo7iNYCwlvyUfxu88NY3NXIzxZ4QH+e0BMRHmj0lrasEZeU0fV99VSD8KPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVnZwQD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVnZwQD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28AAC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767608033;
	bh=kNjifYzbSKg5A40EX8/0bafwSnVqyrZaYgumoBwsshw=;
	h=To:Subject:From:Date:From;
	b=RVnZwQD0LurMMJeaJISoyj0JEDSL3eYE0teTQLJgVymnnVIfVTkMwaQpWp3Kt4far
	 rVFBizll9KKMW8ohaho8jXTfwHwZ9osIYl+/WDe3bsN/ytwa4fIPLOKnuGPwNiaWm6
	 7IVRUpiSZAD7oTB9Xs5fOdZGL3tZ0JKmIgVWwyvUL2MXKpdVrIJmvp5wBkZvDoXki4
	 V0fGyrcYGZQgIQoXrmOkxjbGaefRxn/gts857+hyEg9ep+TO4MCp+ssYKA6edeKugB
	 B+zdh6et8esa2p+f5p3sQUaDw2BQJfOYb85clkUwfD/i2+1tAq77UmgRZb4H3v1uMW
	 cxxoFIZaDLu9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED36C2A08D
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760803362.704.2632833500760776698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d30ab61745a50c618d7b764dbf6ce16ffcfc770ddac290729b369d61647ad3a
Date: Mon, 05 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767608033
