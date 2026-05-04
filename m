Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1070738C427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777921654; cv=none; b=snKUzT1tuebnO+n3UDZg7sNxyhRXduvrPsKlzCClADjOZBo7rXy4VVZmoBTKn1LxzfwATkAdOaaRJLPX5kniX++ZAHlMUGJKjIzJjFnH4x9zYBlzN1W2Q53wgamu1tFb3/FNZ9w349xT0dsOav9XG6x0H6BPvF3t2r9khsRAUi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777921654; c=relaxed/simple;
	bh=F6i0XSlZeKZaD21CmKFjIm8w3c2hYEMkkgiKAZRdC1Q=;
	h=To:Subject:From:Message-Id:Date; b=UANjUegEShzwsE/Y8a2I4Quid4mzwFYM7qvaD7z67+hL1U3ycwX5gq/hoqziXeuhv43LTUdduhI6UeknX3Ue7RiMjMlYvs+3r5AKBZ6kL9bdvUVJirYlyIaYXrdzKiuIvcsg6yCkXrSZrSoV9ynFX2dpEbOe7U0vk1CWEpGL7kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1L0eMiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1L0eMiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8ABAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777921653;
	bh=F6i0XSlZeKZaD21CmKFjIm8w3c2hYEMkkgiKAZRdC1Q=;
	h=To:Subject:From:Date:From;
	b=c1L0eMiR82nCVZNKmBfchsvQ9wBLIroHEUJ58iAxHrruLfoQPMkqUK/X1WEl4Icaq
	 Isbcnizq/Gw9d9w+DCmN0O16vB4uS/lzx+6FLLxJ7UQfePvX+ff6pGcsMHTtVX71ta
	 SZ9BmlwW6OZ9Oi59FOJvhleK85VufX1cJRWhpD999Ygl/cAnH9DWtT9y7Gakh+YrDs
	 HrkApWzHiypUS9eoUerPoV5R2Hu+9T+jtIZppU6teMgyZsX1QR5n8oHtJrHUOB6N4t
	 3sBDYtE6MvZ66/s2a+ixyiKi8W0SKfyJ5q+Swuyo7xG+4Q40LRyOA0cQT12bQNY1xO
	 RFMG1fvpPiUIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A982CFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792165368.22314.3821610557113239472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243d49bef446a4ba433a07ca92d01eea14c8f45f1941489e8035aa0e439a63ea
Date: Mon, 04 May 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777921653
