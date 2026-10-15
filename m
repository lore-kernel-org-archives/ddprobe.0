Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5867F49D5AF
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792062634; cv=none; b=WVGzR6x//EWwfmf8X392r/kw8wUySu2v+PJm3q6TvkuFs1n6DMv6JCnT9EYiBSD20+BcbACJ507rm66JpeV4IbQRFkD9CVAw/oYN2QufgyUaO4gFSuhLtEpoQAgG40aVTMI5Vw3M9kreEGq9q1GD5ZtOdiV30z3ALUg4n2GvNH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792062634; c=relaxed/simple;
	bh=5vb48OgsJNCzR4DgXSMttFj8yCWUvLgVSpuui9G1am4=;
	h=To:Subject:From:Message-Id:Date; b=joGuZxm1yF7xQsIsroqznZjp6nG1ShsRO3UIct6f/C7GUklHHJAKWa4jYGrIqYkmUT3SzlEeLXyQd5IGX50PzHCyqEQjyKMqTIP9bM0VSE4mxBrvsdHDBRaHYYdK52FrQ0nqNvLCyrrIMYJ0urswgEe7+QlUxkBorbBoRygFU5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dky0o4fz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dky0o4fz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DDEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792062633;
	bh=5vb48OgsJNCzR4DgXSMttFj8yCWUvLgVSpuui9G1am4=;
	h=To:Subject:From:Date:From;
	b=dky0o4fzl/NVhSECoiksn6xXwOPEC8NB8G+0TBb5ti53cADE4cJUvr/RRCmjP+g4O
	 p2UtQrNsy5Ow26tOGYH0zUQ92BuxLRCtnoJo4WaZSp0B/46oQGI2T+a9kGKd9vY34z
	 f/XESsWaalW0vgGA28okzmcavN52S1B4K1EPS59MNZcb9rUMJ4FAsuP4A0foDyUz+3
	 LC4wZL/rwHQa4AN5AZL0G9N6b3dEP5Ky6v9dR+j7VMg5r0ANrk95c0DkKus/eDJAAK
	 owjijGaupMsdp0WNfkDFwBYlwQ74Y89SGk8pWiys3Ow5CBx1AhyDaLVPTzxQpp5usg
	 ySmWAC21YhVuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF759CC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206263370.7065.18244463398888872515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6657f7ac47e4409d4a5250919bba6bc7498eeb68eee51331d45d89ac68bbdd
Date: Thu, 15 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792062633
