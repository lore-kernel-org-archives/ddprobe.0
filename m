Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A61F220F2A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786333234; cv=none; b=KgaBXo1TpWoRdCZ0Qw8v3BRtI2/20j+/0zEwhVT78PHI2QrPbDQR0v7gma1flUAprrD3U0fRS5Sr4BRtBAgTBd3YaBPL2VjDbvCBs0V/t2wWRWevjev/c5lnkB3ha51H7mVAvis9MooxV/uLmIa4Ww0NTft5Ku0zUQfqfT1xpcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786333234; c=relaxed/simple;
	bh=JQHD34I3NOM5tH/5MuO5J0g+s6R+g4tiV6bP/Ym7GG8=;
	h=To:Subject:From:Message-Id:Date; b=G9hpgjnTnX+C088/pQ2shI9J/AvaGad+q1b9wZAcsyjC81la34bVzyN03BtZ7tOh5jHS+W/QhiGFPIxGbhonEDg+MzsmGkp4QsY4xNHmUzeoQyxJJ2tnivm8rdulj3Q0bh+WkGh6WCzJ5wzjZoYIErW0NJGrQLyKUv58arTIHw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQRbMW+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQRbMW+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA25C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786333233;
	bh=JQHD34I3NOM5tH/5MuO5J0g+s6R+g4tiV6bP/Ym7GG8=;
	h=To:Subject:From:Date:From;
	b=CQRbMW+fU54QabJ6l33vX3uvjIVPLKsoR0Gh1GUIvCYJHOyVWu9XxuilkIH9R/ASG
	 fCtkc+p8nbwCBuNlRoog/tzwr3d0mGtrAaRV84jtc17tnKQHACCgtOfPgbQs2ZVIJm
	 WWKXAF5qIkGrJwFkhTVm2XOjoYuIGkrsMr3MUUnCce30i9kbk2n22vA9LKw2nUOQfn
	 wTwek+JIPqTzAyr8q8l+eNIXqoQMzc06tD21XFJ37APraISyc5QnWVYQDTiC12pBar
	 s3MAwAHakY7zgbHAZFbHVKVFkNveNhwzE9q8nTiQCS/7MBJ6TGloNsMsLxy2b6f0Uc
	 Fp/zUmCksRKog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB589C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633323369.775.18385266400819887112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a62a2d1de881f32083d0c8323613d3740849dd1821c632b2bc62977c3f8d44
Date: Mon, 10 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786333233
