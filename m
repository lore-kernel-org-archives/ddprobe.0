Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C20321B9C9
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759058394; cv=none; b=jKTGIiFfMz2bUYvS/7sCNTv9VeNHZFl6Rc2ucguGqZcIxsp3gQu2hMIq94K79CVf1qmh9WYrmEcOfn7OJadNQBkM2yMX4jd/Ib9jV74GQmWkhw4fYt+RRPl9qhUluZO40kgWLu8J7CP2WipRzkHMNk/IOPQ+q8jpsPCWi3imAEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759058394; c=relaxed/simple;
	bh=Q9hT+DJLtuAvzN2JoyPEamClQdiRkCPI0qEAJioXAcg=;
	h=To:Subject:From:Message-Id:Date; b=b+h+IUXzskOfZPI/DW31AjSVwmgyQ0Sn0bYZMTn8z5/HmBAICS7xves8aOSxZBXqqKEz/1DkVCK/cq0CFC+K91DlLtBYlpc3vhZ2adn2O5MRuoESCyzW08hHWgR7LXClQzUOsqnGHLZBek9GdmLs3GEyt9UnSUW2es5h9lRt8Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ED/4ykyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ED/4ykyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A45C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759058393;
	bh=Q9hT+DJLtuAvzN2JoyPEamClQdiRkCPI0qEAJioXAcg=;
	h=To:Subject:From:Date:From;
	b=ED/4ykyZSfeI09HMTOowqF6mQsC4lkShAwkoUZuZf2X+J7iBUNi156hPJNPqD+fy3
	 OfCryIv0gm0+yrhrXW2UEcJHPxi+CmeZmLZKco0aA1IPhlqOEO366qvlMbTRtG94R+
	 uvix/nHjriLQ3wxMKdQj4oXJvqt3/p4XXbZPvP76W9asCsY956DBlfVY4qjsXEuhJw
	 uBBWc8113BQY0R8pHrCgzssMHs0hCJ/fhbf78ugn5vy6GnSWZthlC3/k/tUJToacx4
	 koFwlogTDR5hvXTVoXrQ/gc8Ixq6PO8nBE1NRgc18CX+k8I10N0croqRXR0jsDd95k
	 QXWzSebDgz3nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FBCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905839358.16809.12740149804352949812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf2b7d11a94de9bac75c2a52747cef5f71da3cf7b9380afbc7aebb0f70da49b
Date: Sun, 28 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759058393
