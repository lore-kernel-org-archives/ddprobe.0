Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2030B263F32
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757799594; cv=none; b=Fy2IIu6sxXIuxeqbpSpg/jLL0a6+qjsK3rhoi0EeoiM/eS15qo8BYjFr4062aIlzRk422i8YYFvPn0HGXjpb+5ls4RT9Y/eYtatl5qZyfQcAQDEHrpHVmxA6cdK3zo/LZ/BTizp+WQgpw/mGRoSc9YaSaeW8hD0irp7D6vHXWLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757799594; c=relaxed/simple;
	bh=p1puJXlKf/iLA9fS48sSl3J1uSy+Uo4pCQOdUvKT52A=;
	h=To:Subject:From:Message-Id:Date; b=Os/CV6b5178gLonv038pxLPRTxCjhdWpQJAcJrn31JpQw1WWDn917nhfSc3xPbvS0X5dvH/sfQRdiVk2JvtTTY52mhWXws3K15Pe1WBt/FUmJe/xyVDPZjpX/+p4cX8poZQTvtjBaSiLzAJG5XWpsdeqynh/EcaEmfX4TVGKOIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcKQANIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcKQANIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8036C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757799593;
	bh=p1puJXlKf/iLA9fS48sSl3J1uSy+Uo4pCQOdUvKT52A=;
	h=To:Subject:From:Date:From;
	b=HcKQANIwveB/59DpeOZPgW1erVc6821Ix3fascwgdvwtBVmpnyXP3/lkwsncsuLdj
	 0f4faOiVkm7uz3nxt4T8COjfu0jibg9yeGRtbQvT5jVca3S/wu9bKWd1LLvf8UPKcx
	 IvbRcXqjQ/whOGptc7VZ14JOpjxqoEOqEEjt1NIOn6q6XPUdZHtvIM1NondOKjmBcU
	 fGrg6TYN1vdYkY0c7cNC5rF+4StPY0oHOQkuGPF6d4Qn9CI1/tnSzVGB372sTsuuNj
	 +CVOSRqX8tD7BTzk4uYREv3/i0P89kFqeMPgBjv2oBW6pcGformdQ4P6/ISX2M4wom
	 oIzc6osFUwkhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C3CAC593
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779959359.14651.2232724910085121173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d92bebb9b89f0593a75b0e8a54049ce166cd1d67f08f0c3332cf74e7dd5e5a8
Date: Sat, 13 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757799593
