Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169C12C324C
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782853714; cv=none; b=gRAihEIXDYQeCw+K96zObdXk4NWClYQ6N3nzYcAGJABwD68wI59oM1/93K6kGlZBruoOXkB57XfIeUW8+jAVGIq1HPy9iOI4bbrQY3MMCO26IQQr+wvRabhlTHuj3/OwI4ysr0Y8BZwsmSpT2FX/KcZoyHz9ltfGL15KjRvi1ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782853714; c=relaxed/simple;
	bh=2K1TtwR7VKTFwi4Q6jskZQZcpFuXIwC6Wz96cneiUXg=;
	h=To:Subject:From:Message-Id:Date; b=cm8nkgTbd5u1FPuG5T1Us1pwAyTnqMHpAtyUYlgvhD4a6fzvUA2M6bHuGXy7UmlhHZ5+YivxjdMha8ZmbxhOehGDbZeokZ6rOnOmrpnMI0jg+RD+bkb/dHcuWpVf6oVEHfkXK4Q3bjYk5ATEByu74ofr7+HHWdbo9TM3NxRBZbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHKbpBhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHKbpBhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C661FC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782853713;
	bh=2K1TtwR7VKTFwi4Q6jskZQZcpFuXIwC6Wz96cneiUXg=;
	h=To:Subject:From:Date:From;
	b=NHKbpBhm7WEk3BAzPPY+R1/P4JqusP8YkupvRV9/RJAKrfgofyIkU/PBygmqZjXWd
	 5PCv+xxnXjBlOtmCTuZNcQFZzzBLmQXM7bl4eOFqoBoIWIOaC8zR3T6zvqCbNMH/Hr
	 6Wr7DdCJ2d59foi1EGpUP9gOme44Kt/0QP6rFAwAIVf3FL3wd9+DbayweAq5pK3CP0
	 Gn51x+1yH+xhsiCFoi7Aidhwlrb8ifGT14zeGJ8yEkMsgCFHBWL1NfTtxkWiAjDrS9
	 hdmaOgWiceNs0AmFbtKay+PbSxQ3pm9mZIXENKVi6LOVP42RxbegcFa6gEG/0ndggN
	 rsljLXXjXpIRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1B3C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285371368.12827.4880402924811387126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ac27c89034e233f155c9f8d611f7d67d34228bbe4936c19cb0b1aa5e500292
Date: Tue, 30 Jun 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782853713
