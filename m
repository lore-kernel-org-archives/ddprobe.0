Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2690C8BF0
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725582954; cv=none; b=GcDFJaff3iWq4VPH8lyIjvWJ1GrWWNb0sQMnxsahFHu6mlgXE7l72nBAfqFuGj3O2hAu1TD+4n/H++BQpitZm5teYTMr8tS2idqniUHBzDJbB/ttMChwZP75cSKidrRjUQpXpQe2kNt6nMIyN/HNkLZbiHwyIYvK39IsQVN3Z7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725582954; c=relaxed/simple;
	bh=yQlPI3/Sv5wl0d1Ejs23Gc0DzzbRLE+vlItgpfby3g8=;
	h=To:Subject:From:Message-Id:Date; b=HqcEGi3WpQGfnFwU4MfAFviG/vHkAGmJfQbPCcl2UykVCmTE8AEoh8TmqECy6K+EjBGMunp4Hou7wPhi716Xdfg8qVKe7RBIvMhUYA1NuO4dgClZ4+NaZ7TxuIo1E7fsigQzO+YyKKVwWRpajT4CHmWnTz85Js5XBeWL8xtq3io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iamvw4v8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iamvw4v8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A510CC4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725582953;
	bh=yQlPI3/Sv5wl0d1Ejs23Gc0DzzbRLE+vlItgpfby3g8=;
	h=To:Subject:From:Date:From;
	b=iamvw4v8zrOBs/yxEL1hxzwlbi6pkAxOPaJIilpaWD0jK5vf62b2+KFXNy9B+HkSD
	 cDNsni2lNKKBP4g0p+W4Nj5WBdgIWTnqeKcWwaNjdqpWb+ILnQxgBEE6vMSukmFurd
	 9SX/AXpIVvVKrjnHdlElKjolA8LJ2AY027O5FekhYlN2zC4V96YVP0jvyGs9CVObwW
	 JJzCAJhQof0VOJqv1xQkO2WmH4q+G0Vr/zTWlmOD3K/Vr0vvBQXD+gKLKrJXvmBVxS
	 B/pv3V0fEAdK2G4ujbO32o4cru4iWwiJdJgpIGSFPnXc6d+shONMISqmb9zls4+LHX
	 rgYMFD3D3391g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177ACE7AA5
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172558295358.7648.9744473571153534022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fdc4d1fecf031104d84e84cfe4f07d71c14fee1f6c4b74b38e60eff4ed396c
Date: Fri, 06 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725582953
