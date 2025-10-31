Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111A4176AC8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761889794; cv=none; b=sNQC4LdsdNqnf3z9eLNhch1suB2C4AV6cq0A3RP3dCeuhNVzpWtE7+DuhSEmOa2n5EQpZ8iPCDAWP3IDTFhYhey0XXirefWq850zXRit7iIe/G+Egq6HRkbTPzMbjgP6bLsXvoEqFVIPHYaomUt2EG48xziO5Nr8vwJKlvbj/kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761889794; c=relaxed/simple;
	bh=iQA2MXoIHqnDNqmOeIaiGxggSEXeJ3I2hEXePP1ePG4=;
	h=To:Subject:From:Message-Id:Date; b=lF8A2Hj4Y5NksgdbFsw1kY51qZeUdHzgKVhUsnvNscv50Y8DaayRjmbA5pKZpXMWSQu+6veDAyq/jqO/qJ0Anw6q+t30I9bjuBhSifcOU6EzG14agU/zZTl8OdjcGJ//sB8+qWFzRoQqKehYrEDMdfsuyljEs0sJc5FPYjLD7M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odwcsr9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odwcsr9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A678CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761889793;
	bh=iQA2MXoIHqnDNqmOeIaiGxggSEXeJ3I2hEXePP1ePG4=;
	h=To:Subject:From:Date:From;
	b=odwcsr9UZ92wRBPGh9ERUNdg1DCjbNLqpc0Zu83sOZY7gGy0AjBxAbbx3Iw0fWVEt
	 urwXpxQ4LdaqKrDTG4vszIE/AivNf94WZFQp10zCFWXcET9RLJJjLV7INjZhtNT2TT
	 z1xVaZnXULz7neiFiPfiNox5pIgnYa7WpNiklaUG7wVpyCRWm6DpM3NHKMyELSMYEB
	 3TPnwfGGYHgn50Zy98g6y3hHyiXDHpp91VIuwZSaHoIaUNEE1ZQgMepF4BnArIO3Ds
	 o7uAWccBOblOhbGZfTfVM1wVMV7ReDEeSn+6zqFSlZtn0mTTd7noQF5iN6LfEj3n7a
	 P3gEGvEA/lqng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95581CCF9EB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188979358.23581.9658408516638177179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89ede608bb1baf5eca7a306cea43c3a966a135183e056c3c8346fca8b63a313
Date: Fri, 31 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761889793
