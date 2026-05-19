Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D621B2628D
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779199833; cv=none; b=YLq4hdI9QRRU6aeKd2lsbFVVdjZh3sXWEE4KpF1SggHB0zBJBmNF4CQY1lIHTaWSo6qupCsThBHvAf2R/XCqrNXbAVYgpkrIb7596ngSYbSxaoWI0+YzquScK46d8/1/U+rSzrrKGOBblV0ONEEaCQJN8qNnoEPoKv4VLGD3p+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779199833; c=relaxed/simple;
	bh=fDTLDmKLH09W+I/X85arK65ob7AqBOCtHmwa13EQ+CA=;
	h=To:Subject:From:Message-Id:Date; b=L1jZAqzE2LZTtL1YZXecZ2c3X9Ith1caJfXHO3knZeI7iy7QiqWnSWLn/S4vqQ3bidjAllgdH9LQ1fq2gfpI4P6ZlBhkWSHkOoBvIPuvbd2LFPoa2naIRjB9DnkqN6DZ9ko14/rFm1l79e8D1Me+fCBKYdKvwCPeI9IxwDe5KmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnWxMrKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnWxMrKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE78C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779199833;
	bh=fDTLDmKLH09W+I/X85arK65ob7AqBOCtHmwa13EQ+CA=;
	h=To:Subject:From:Date:From;
	b=VnWxMrKUF/90lq2Yk4jNRKTNoCzlWFZLh43XDGJaxkdfPGO8N5qq/V4tmNTpafFIr
	 FhSRc+qtLBuzVh8xozvcxdCfRHBUR68Q1VnAeVl1lp2OzHVVoa66cq4vhyDscpcFem
	 Ed7f1B2Z7KI3Q3VMg/teL0zVqrNJ4yURoxTiGtN/b8Mf0jO6qz16XhRq458ytXNdLQ
	 7T1N5uUbNDxifTa8q+DnYsU/bZvCXZqIo40q4XYAlLBoPrWGUergZrz9l4wh4w9Wbv
	 pOl7NReW15ulJxIfGweUgJuND/1sg4mS5uVbx4ciwqu94sJWgam7ab9T1CbyR1lA5T
	 KYHAbcUHmj7zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC004CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919983369.28461.805859749985816596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13363fd92be0786a8b3e8cc7a14c6ed28519fe106c162d98f2796d6d92c72bc3
Date: Tue, 19 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779199833
