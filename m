Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCD630F533
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775406934; cv=none; b=t25oq15qw1eZv9FdNGVZbDhgWZ4Gd/vGJ5iUOVtg17arl2GQmXviOsn34UlduWLQcaKnMcjZ3s5fMIfLP8dmyTUULbEQMjFVLA1ijKIM/0BdV9Vg24q6ddDpyG2cgZojlX8wmRW4X4sgx5ordnkBsbP0UNldgFuZV74eII0jSWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775406934; c=relaxed/simple;
	bh=d5Jva6gVW0pmBKxxebLKLPtgdUwJ3e3I6jQ1x7HA6LY=;
	h=To:Subject:From:Message-Id:Date; b=rQ7DUH2egxLj3aOT3rrtZN+3D5SjnULgXBPZBa0dluiWITHMn4rID2Ew9yWv5ssIkC80+0MclmhmojlIs7JlR7ysonr4HKw/JbbZI8ggeoP7JSNaQ/qxKdIaFBVczIlGnTB6sSvn00vwldPg/AwMHsUHWfjFTfrCdfbRQW70QUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgRjtEu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgRjtEu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5997C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775406933;
	bh=d5Jva6gVW0pmBKxxebLKLPtgdUwJ3e3I6jQ1x7HA6LY=;
	h=To:Subject:From:Date:From;
	b=AgRjtEu4GSCW942Y9OwuMjh2aVgXkko7mUAobN9qxqWnonBC4/Sqe+cm0oY0bSM9c
	 o1IsMfycBz/H5IQk8cpeYJv5tT+jC7FXhNuVhCBfhEx3btkVuVFpoeqo5yk4CTwlAR
	 GdbYayrOfSkBwTiYD3qqDYXYU1j8WY46IKY45lzq86bpQXZO4ipDtCtHdO0mj00ScP
	 iSI0oVjvNsv+jyk7my+srFkF1KRctKZs3A23Admq9Z2Zc3e9vqwL7VKoWRzko/b9Aw
	 Mk3ohOnSdq97izxZOuy++5r7IfKxp9DjSIJSUfjVv6HodHmyF/Q9vxDa4lINvMF5Ql
	 dC5OIdI7wUIow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B3CE9D80D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540693369.26410.6567426362770794323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e9d6e4c4cf6ce29a79b6d1b8f3283e23b573780f9d2343064650d61116b618
Date: Sun, 05 Apr 2026 16:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775406933
