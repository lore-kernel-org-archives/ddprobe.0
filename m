Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484CC322B8F
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788601234; cv=none; b=aO7dADYzvDh5e0SooXybI/tL5fhAblDtoDSJvYNCEho+KMx7vnDaYIPj7Qi/X3a3xFdgqQ9JVuSUkzNotcJKMcsYptkzzUSpeLaGAKbJYo/SDh5MpIYsXicjJ6Z3TKP7XuSz6BtaoA3ImoZiTEgJfii0D7VgtlDxNw2OIjbJAhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788601234; c=relaxed/simple;
	bh=JfHN5HBIxqqfDZ6RbuYrnYjDn0JJSfgbPY00yNvKoIc=;
	h=To:Subject:From:Message-Id:Date; b=WSOPq7flpGo16wLj/PpGF1fQEbRupTfHSbhWpMJ8nhGqmytiBFuGluVmGynrXOTiT4QvKTp2yJcoP9ehXfeLXIoS0EaWU2deemCtnuNhD+5THY+RAnVRuykDS2gTat3Vq2PwkWWA6hDLtuZZWHutNF5EgQxU+gi1UDKz6JaatfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i98O5I8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i98O5I8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED83C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788601233;
	bh=JfHN5HBIxqqfDZ6RbuYrnYjDn0JJSfgbPY00yNvKoIc=;
	h=To:Subject:From:Date:From;
	b=i98O5I8Mjj6adFTAIQf3k0+6mDVuseGW74F9P4RlziCU1xYgM4FW7u+MbbWkQhOEx
	 znUvsqvL05Em6E5WmVXAp99lRaWSCUm3bIkPT+dofTMkrzjNqkItEYLZ5CLAipMuWT
	 5GvwnOV9mvx+FJ5sHVyfjcBajwhQPNUbOWYHQ7yhUgx8TvVxOdcq4PIGLVvzkZtK65
	 m4MknTKWkQZlQMi8ZlbYDb5Tat4yJS7ipgudTykrzllK+VOm/sj4BPOr3eO+UUVWqT
	 0rmAvQPdP6t7ldlR1OwTPifi3NQyHZaiyb7sc41eJjBuwxTaTy/WWoExwDNcHN1yPp
	 HT2oGn4K383nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDE7C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860123369.22395.267332364582427964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175feb99dcf8ee225f496c5fc0c0fa64e136cb53e902f4cba46410e9b27d8fc6
Date: Sat, 05 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788601233
