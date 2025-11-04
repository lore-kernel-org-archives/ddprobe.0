Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE46227E1A1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762228793; cv=none; b=Tq7mbeizpy/MCg/sOBvkh/mVEiz2FZcB9+bHaOlIJBYpMMeYgkZTc6coQ2KuzR2BEtTDBrOW19HFVatu/kPRwieioldhaxea1GkQ8bBCsIZ0Ao5ZGjlltdjCoow5r4SdAloq79+kqSR0HsL8iE3NgGMIEnpUjs3jPEmC8x0wsR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762228793; c=relaxed/simple;
	bh=ooDytEjHk80tCukwxoFmLcY7x7QCyg8QRNwzs8PA4VE=;
	h=To:Subject:From:Message-Id:Date; b=BkrYc9YZuVOUTpxCnz4tVLa9e0qAn3N29i3iWsn1FkMtuJQavij5Njv8UokWvoHhuWFpb4GrD/L84tDPLVhFwNCQB+q2kjB05fDYC0dx+GOLda3hBh9TS0dSxoW7rNCk4i87N6euB4Fu8+TjRn4L3eXNaStuOe+kg586jEl06+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V27jRzoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V27jRzoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56FEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762228793;
	bh=ooDytEjHk80tCukwxoFmLcY7x7QCyg8QRNwzs8PA4VE=;
	h=To:Subject:From:Date:From;
	b=V27jRzoAkyQuAxQ+i8QuPM/uHkrudOSgIaDV3mR07japlJSRi3wSXo/GEwYeNSUAn
	 z4/6BRf217N6iGB4bOakVB/1pQW+cu+LNqthk+LJ+zk7IvGPIFFPCwD3yNt76DdD5b
	 QBcOqQWKaFY3N3saHAyTr2iZgDZyGYYLF3lYeAkf8tVs8UoS5Mn0LE2DMvY0Qn4HQb
	 RMRs2CR7zXvlbn1LSIj5VX/nowX7AGSpI5f9lEEWMO+NTGpe5dAf026dQALw3IkQKu
	 0OkDLK+aYpuNuoIAvPwmtv4FNK7iSCRJt1lEv7hF3ne2ARRVPYI2BFT8vewspT20MW
	 r9Jb9Cm3IWnCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CD8CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222879358.10091.4691343886950589960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468742832e87b17ccf47dc1c2147aec359ba3a86cf0061818b05ef230159d5a2
Date: Tue, 04 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762228793
