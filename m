Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EA536E496
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768835634; cv=none; b=FMOycrvEsu8MWI6FqbHh9Lq+IcgO/GnGX8tpBg9Zto3K09tgy5jbr5IJBg755ccBIISTUYX3lY/ozLjEc+E8Zntdlawdj95z52sZVaoCKWzUcH9TSCy2k8qMcTbG9f8RHED9Ura0aPRZ4ME119e7OGtF/M48whD9ZlurCqnjcF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768835634; c=relaxed/simple;
	bh=9Z8bxavGvDhcO/x9eCxKrmsiN6Ax+I4P73oGtqFysZc=;
	h=To:Subject:From:Message-Id:Date; b=KtuzfqObv9BmchXPbg6+l9Ej39uFb7AIfQCjYX+HE/rFrRmpLQOusdO5rPBvXEFFYhoOMZrCmD93sCsr99ViEY+Wm8fMy8dLQCB2viN4Q0HTFezS8FSMXOh9zzuwdGw7jObRdR+f4SxC/SlZy57n+hxSn/iQsEzOjNIRmfsew1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loNxeebV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loNxeebV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 966F1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768835633;
	bh=9Z8bxavGvDhcO/x9eCxKrmsiN6Ax+I4P73oGtqFysZc=;
	h=To:Subject:From:Date:From;
	b=loNxeebVlYG/Pl/JZ71SKsfFnICIkQeNyMZND9Y7JP5j+90aN3AjXbKh1F0EhEzvz
	 IBLiT+XSNFDRE6WkNsYrQhboS0WVzDePDhnODMzkpA/DxuLovS3eJOm9aEJ8bPet9J
	 xyGC92z6VVIm+PWvOaEGKPkehxRqcZnpQi3w07HahDy+ICY+rxHVTKHdSb9Ki0njZ6
	 YniTXyymDFF7JC1mR/jY4YvFTFF8MwgfL3f2AxC2m753O49AVmaqEiK01JhL3+RULq
	 3ZwKxzB3SRgQ4q/QPqNS37xxMg0WVcPUWLci2lb1GowyV0azy5kgVQV5qO1IlY5uvM
	 Ev3Q5pkn7e9SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC5D29C33
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883563357.10894.4318845531785769290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e22c2e5c91a675f7482f52ef53c49bec667bb0ead7f6f3df6527da8e7aceed0
Date: Mon, 19 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768835633
