Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE211DF977
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728395154; cv=none; b=m9ItZ4svTL8tgj9UekMQ3tt0L0p2RXEiWDcKmMJiyI+lOwAyr2lnY0CUZBRYRaMIud8XMMG3OIvdWM21HP7DNVYx+fL+u6R2NoxX1psljVGiWTLv/2VQivH6HcuSYDfiGrPhf4LSRcMWsMULDG6OriB992EWQMca+K6wbzcbZ+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728395154; c=relaxed/simple;
	bh=fK+UyEOkGchHome0hqecvwFXZqZy8KmjPJ4EDBkEgVs=;
	h=To:Subject:From:Message-Id:Date; b=YiBGK3hrZEGvMXz0pftO2VdiK2fyjs/z73ZBS4RyRSiXdXxrGZyF24txUUgHEiaU7H2i+jICAKtQ37cXcEWR9FnGj/xH+ce5UsG6I0BXf0V0+slBhMakYIaCAsXTgvLHbuDVEdxPxfB8T6ZjD390LfP15WeRtHCUnrWtb6JRR8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT5hGGRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT5hGGRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0812C4CECC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728395153;
	bh=fK+UyEOkGchHome0hqecvwFXZqZy8KmjPJ4EDBkEgVs=;
	h=To:Subject:From:Date:From;
	b=VT5hGGRWOK4Q0hJHhmzYInjsUatEGrm33hZrmT0KUnuthSgQ4Zq8GpOg9Y0E7xJf2
	 agpbOB5rs0i4JzJFDjooEHFVrRQvAk7o5plw72R1wdx5arW5nYZgnCy3vlKjEyIpN+
	 oq6YqxGp2Bq+Ic0++11FqrDFU2SHSA0KAxNhTG1VCOWR+lYA2BDOYXCZIARs4/OqJE
	 mcEFNSFoYdrNPzNqJdxhTx2lo39bLHSXfMLc/DWGp5FR5yQjVt35Bw0W799qB9PopQ
	 /yoTq2L6Gud3XY8ArX3v5/Zgak2DjyMoSr1pCxHp6iMJFl5SsKyGz8NgkMcruKV6/c
	 2N9O9RNYl+byg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F7CEF173
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172839515358.23458.529733122455790357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3c3d952979b2f1d09c240eb34e179264cd6ab2a0c1ed84688b01cf18bcef4c
Date: Tue, 08 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728395153
