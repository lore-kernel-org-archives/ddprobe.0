Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2853C3128C9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760444394; cv=none; b=EX1037liAxqujHk4E+2iA7ULC67co0/iJdGrVQRtHojI5k7SDDVXDOuNjFILJBTLt9AS8vMFSen6LWAYoCO7Ogu2ectG5U4lmZMcPyHl2lxzv6ue4iaUspjRcZnvE2FcLez4f86pgkKRMf09YlXAceALEXx+fYSUakr1tvwVinM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760444394; c=relaxed/simple;
	bh=/zhEbO5DMoGxf8ug+p0/Wsv05a2wT4jcBIcQ3VUSBUQ=;
	h=To:Subject:From:Message-Id:Date; b=bMeEY/cE3farVPvaxNBn7SefEfB1Wxs4fe8oxCzxSl4EDuY9IvlqmahFeyeqdk/DzKzO9FvsKvWjKx/OthdZG6Lklhm43tSkvWgcahf447LX9HWn1dlKZUdA6oc1yGxqHYUGIl3f0k8MiyqLxiQK5KaR0uVnQR5bYcA3Cv+qt48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvUvMX4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvUvMX4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2402C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760444393;
	bh=/zhEbO5DMoGxf8ug+p0/Wsv05a2wT4jcBIcQ3VUSBUQ=;
	h=To:Subject:From:Date:From;
	b=BvUvMX4zKpXPN60BbJ4w3jQDqS9BdeXHLzMTgq3WP0mB0tcmDzS6O+N19GV22KLHN
	 tL+ZMZ0tEi3Q39rbRjJcRYd8PZdTBOvkiWdVge8+TsNgslDmyqHkBxqA4I1SY1xQgs
	 KZw0RD8DHxEtrdDpIFh2gqJxVH1zmGUW//VRJc4RupIgCb0UsRLQ/CyTIWXesvTyEU
	 m9ad7AP7KS5VwhDpfpijZ38DytpkbLauEPc5Rq45wJZmD2Fh8KdrJkmfEqp3qgq+1p
	 e2bVFTGUJBnup+26eyeafsT1QV7fpT5OQHheWiMUsF9GUbZ5Od91m7ObBWAMEb9eeR
	 r6VNrJY5j988A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8CCCD18D
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044439358.9991.16341910082304013362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d092b1d731f2880ce4f3c7512ae089b84ffba428ebaeed59f4774f3fa98587
Date: Tue, 14 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760444393
