Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F19B3F326A
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791822634; cv=none; b=Fz7itAMoloWekIGh46cCnwrGQivGibn6nncKSXQQHC/WIzdj02tgFwmE5e1VWzB+/kTTJTzjpxYdrpn53NcEnkQnvk6gkfHnIkofmF1OI/24fDl3MhD+fIp6pkK3vAH78hJbdbDomnJZWxleOsKXIbFKh8iVZMUwNAnDfvpLb6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791822634; c=relaxed/simple;
	bh=FoI3jju4imptFdtLhR+SiEc7ZLE0e7Nz/sZFMnm3pcQ=;
	h=To:Subject:From:Message-Id:Date; b=c16XhRiaXnLRq8mH/GLYuacNydx14PixLetFlcFY9/fpmK1QJiTy/nMjUTXmLIcUQgnj+l8TM6SEZmYLEOohrXV11M4W52bBFBX68xkUPh/i/cFzpQJTOQCHbzd41XMn9LN0KOcnIPwwqfQy6n+gTGiWrdOYnK85Ui+0jhTbxFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgn/3S1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgn/3S1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DDEC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791822633;
	bh=FoI3jju4imptFdtLhR+SiEc7ZLE0e7Nz/sZFMnm3pcQ=;
	h=To:Subject:From:Date:From;
	b=sgn/3S1/R2OGsDVlR5kMSC7aK5IhxoLj/8MOXJnXiiayLw5svgEH120iU1jzPuQkx
	 rbLy4QHxykrhkpTwWk2mYJ2sbk7oy89kFa/Waon4SmDUomNNcHIHvzG/9FfJLEXl+5
	 sQUCcpfqjHhwo7SC/EpN/sof5T9nPCKeeEdaFnB07KZXxrdjnnGjEu9HjFqn/J7AIN
	 PWBvTUVmo2U0SQRioQoiUZQPTxWnRHkcVq5Hpk6vqGBLixBNGmFEXp/kPwuzvuOejt
	 1cLVJ+d3I0rWzDIuCWlIlqkGBBBqQWbw+/NHJCljg1Eiz2C0FI4AwuA9I/KAlHi3+f
	 GZYnDfwAHofUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1699CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182263371.19263.13110577148782800832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fed639dbf00d8882a47f47324378c35b3b3c57647d1c4bedd3c80117f7c6512
Date: Mon, 12 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791822633
