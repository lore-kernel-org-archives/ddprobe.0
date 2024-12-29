Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331A64D8A3
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735470354; cv=none; b=HU/MHpqdwSbJjYf0Xxp8U3FEMBeZrgnYRq9l5agbXpWUFgaDhIOFQEP3iZo61dqBUCJTXJ3vXJwtcL6ugb/IZobomcP5/RuxOcc/eNJcoP5U1p8jSA4wFgIIAPQKd3aMhdm8btPnoY15ZlTfg6CBvzVEeAs6agWBszN2DhM+sgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735470354; c=relaxed/simple;
	bh=PStu+9OdlTBjKXgrL095Y3XqLWugFY9B6i29jcMUwz0=;
	h=To:Subject:From:Message-Id:Date; b=SHwRE7ria3XapVIOVY7Aqa3PTr6r9wNRWNzUzwEQxo0MJLNwGMK0yfGTic/7snU9XlebVJbFDdOpfdyLo+EBOleyaleHvntvAW/zAN4fThWXzdMztFfMb2POM+X3Gbhe+dEre91t14Zby4vN3/lersWlZyykI/WCFJwoAxND0qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2BIMXHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2BIMXHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB71EC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735470353;
	bh=PStu+9OdlTBjKXgrL095Y3XqLWugFY9B6i29jcMUwz0=;
	h=To:Subject:From:Date:From;
	b=d2BIMXHFE3i1N9iksEHr6FvpluXfrmPj/9hZ3Hb63XPSQ0KQGQxDZOR3KFMOkfF3/
	 13lZgTPKrfmNVuFNnGyD4LpdkDr+kGNauwPZfvDZ3WbOvbBZeZIF0WKgC7yFESxotP
	 XlaAHspDZuNoiyIukI6AJvDUZilV29xjShIRl96tU0BfCp1J3KWszzThFxAwZfnxC5
	 foFWaZdz/qfoRF7Nm+fUml3WPzyutMtQki2KptiADqU6oYsOEnDfCzXIi3il8TMcAn
	 rjPd/vbVVuOy/7jWgsUR84hpxWPB9Qog5LvNLKRD5I12V8dPvlKJTBDusqqN77QA5i
	 bF/cRt99UrEiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964D1E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173547035359.27533.2167089782708096680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d95e20fb346b9f5eb19ac661ade15bea912eaa6f2cb6bfd20bccfba7455c65
Date: Sun, 29 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735470353
