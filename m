Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A4C14600C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721774154; cv=none; b=KmqdEuc9nwffB/F1rkZlbusdET9y0wrsn9SBsjPmLZMQYNeTprulRcxv0KOcVtggZ3YURNsit9dw3vuur1sRlnJ0V7ellKfXnWXNqXgeTDcoGsfULExEcmd7HIP+Jk5P4u83iapOtHX0hzfci96cvPCLsRPf5Yr6pP7Gj95rXxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721774154; c=relaxed/simple;
	bh=M6Ql9Ejt6ZQB6/y5/dSZ8b89HLuUoIIuOYsMYzKgxLY=;
	h=To:Subject:From:Message-Id:Date; b=RWRgV2GpmUznPkISZYW++d7kV7IWtBYz1YM0AVZWGy+9W9k5vOxXz9o5TqbsT63w1GvAoxRM6UZ2Nu51alxvuD+xffvvKPamTaYgPQFjGdtIJHuAblFul+hi58s782QC6N8EFatAbgWPW4E4Q8l9K/EFUjMOEX14MUDY/qRrkCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEoaUPZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEoaUPZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4F0C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721774153;
	bh=M6Ql9Ejt6ZQB6/y5/dSZ8b89HLuUoIIuOYsMYzKgxLY=;
	h=To:Subject:From:Date:From;
	b=ZEoaUPZnjoN4drCb9oXAdm51x4sHMzaEKRJ0wk9IP4MIL5WjBYsuAfXRxoeY4Cftn
	 65xHNb3hqh9cONrlZ6lVG40Fvryi7mnNR0xurZQrF1H8BqPzIwpjiZSRjyyNad3w/F
	 XUGYFJrfc6S8XX31okyN8RDSVlaekzdyd463D3oLGiPUhR8JV8LA4quHwOmAuF93Yn
	 QlkxReIFZ3lT58d7VJOdcLyETascOjG41LcZtEvbQnPBKo1ZPw6nFZOs7hpra4PMAD
	 BDzoj4WvH7klPty/o2wKxs9q2Hp3mh+grzOQ3BepyymtSIXl05GuQRUhJ/r+Xa6Vhw
	 1XsKfgHYJUZ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A436DC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172177415360.4011.10964712563052156129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e409c23c51e2c4fef9dd316f3ed2d68f4b33dd2db8a62750ed32691f25e186
Date: Tue, 23 Jul 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721774153
