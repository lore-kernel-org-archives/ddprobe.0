Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36231306D3F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766572434; cv=none; b=kXPJCB0JKRmcLa7hSGzZSVeduK+fmHKev2QmawG70Ep6L8LK3vUb8tGuWLexj+KdRjmCbSPQ7hfCWcN+9WVTFB5Qah5xB52iGH9bd5lseIJF7LlNN/UgkSWCZ/c8gtrWitvwV+w4uLuWbd8wN7nsi1TG4ReM03UeQ0CRGV+Mor0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766572434; c=relaxed/simple;
	bh=efB+UMgyGnDnUSO+WwnPOEOReNOxuLQdwd64gsYhHek=;
	h=To:Subject:From:Message-Id:Date; b=NeSbky2PA33DOLH3trdkhAgPI9sgEQRRktpisL0yGn/wWnS9TnVwR0PMjzVvGOMLmokx1siStrB/4Iccx2w0otmrK9EAlRxxOp++tcQS9xmfpOaaQhGWjgdXoF3OMRqMMyGFZijTlGKhcDlLeb/9hGsbBl1nQWwVAGXSqSQf+iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIkf7SLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIkf7SLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A028FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766572433;
	bh=efB+UMgyGnDnUSO+WwnPOEOReNOxuLQdwd64gsYhHek=;
	h=To:Subject:From:Date:From;
	b=KIkf7SLbjtN84694o+6cgokjQagNhLSTot0cDem1tkLaO98O6IsutzsS+TC0X71NM
	 29A9axdQ20LrsIrWagy0FK8/RBkJiTo4neinPwlY0pbecVg2RB6z6BkKGAfDNtLvXo
	 wS2Vl6Gf112/6ld/e2NAnZgpoerp1jpFs7OtH7TLq6v+ckoQco6IN3yRKwxZzeOTW2
	 g4BMDE/0DKs8byzyR9+POlrZu+/REYhvDkI7MCJHngo0BIyfqde6QIPgl+NktQK06v
	 47wem1cWYe/Lhf+Jc9JCCfpQZozkB99NL8tvwIdJ3NgpYNEDXU5mDDHvvv2+8FUbqK
	 +/Iitl+1/DqeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92210E75448
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657243357.22617.8234325820342699252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5816b049697ff85619a48a374db5bc3254a5b137deeec248017b4a5e45a98e
Date: Wed, 24 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766572433
