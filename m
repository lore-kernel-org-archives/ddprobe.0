Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B24184D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719793463; cv=none; b=AoGNiRJxvYp0dquWkR0gChIL+NekFruSn30b4rl5UbQp7kOuT4HGxGYewhntnirkgGJUUtgaABInQkh5fNErijiEyAYSst1LOQkObkTZzFzEoyxSMfXfWT1mX6vP/fENwPdBLnQ2DIvT41HoH7tqZXgFg2p5WH+VJIE1zw+505k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719793463; c=relaxed/simple;
	bh=DkTszle4PhDveFaI8fBwYlWdazwKTTtnWUmTXz7gXXg=;
	h=To:Subject:From:Message-Id:Date; b=VeqIWk8ptTBTHtgkzBPHgKrVvBRTZH5bRB5e5q9t4iKefxOprfSqlMt2dSijFxJyQA3THW0zf8a2/s6OS3wxId8kkRPu1fZIxta4uryhwtr2ds3Q6RbabgTnuwyUie79bDjlvVxzwArFIn5cUjpbDTkCBX2G7o/Hq5ciArSNKGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewewMpqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewewMpqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EE1C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719793462;
	bh=DkTszle4PhDveFaI8fBwYlWdazwKTTtnWUmTXz7gXXg=;
	h=To:Subject:From:Date:From;
	b=ewewMpqtyeiUcxyyoemyUBUa6NKKhtAGoXyKqaPFZsEcfRTHHv8Ew1k82fjIBXdmV
	 YvPS22P7kBhMN0pooQMt7u8+qVkkMXJg1S7e8VDgnK5/amrv03Mcor1uurYwbeaJXP
	 DR0QcdzRWz4QenHo0uxqKJzrr9lIahCe1IgOnmoBo9nJ/53AyEGg+FVJxGXfl8hcCA
	 4oXhVzP1RKQc7XaWsr7xw8dJEKlKSF4RYyGOaeV3v2lokeTOLNdhcsZrqj3pkld6nM
	 OFM6LDKxh1lmGRVPbgZZvNYhD6mMEY/ypyAREflwnr2nQxTQDmjwXgfyx+copVE/z5
	 JQu4lgiF3hdrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9A9C27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979346277.15220.12809241145246174048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e744747c59a67d2b77139cf827753fa607733150a2b255e5caf9d2777fbc8f
Date: Mon, 01 Jul 2024 00:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719793462
