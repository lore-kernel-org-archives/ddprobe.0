Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E3C31F983
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786377034; cv=none; b=kvxEc9Hpg3ZuRKnpjn/AqzWXJe8cpVho0UvKiVxFIEvjGdxbPVzZUcsRTpmGEl1/wlX2C14eKXulczZU9/SPh2xzih36QzPyRph1hbN3t1edK9p1EG01NwHFT5MtFJHzG1CQ80t0dB1XXatd6Vjn/wLTgqzEVE8zIN1ZIurmVa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786377034; c=relaxed/simple;
	bh=HzgsiF7xND89JVSFy0QIBMTf2iuFYCFAfC+39BKmJPQ=;
	h=To:Subject:From:Message-Id:Date; b=CKPe4QyimMY0SjoS3WjkAMidUkH0gqhfqtjr0GJPQDIDfjRxHR4cUbCOcbvwuma21EmXPy/Z5FR2iRceTZaaGJPAxgdvkSDFj5t07qWsBvTxQv2VNICTi2o0afFGPJfmk6YX9wP2kv7vKWTjrrqH6ZlnMMALqKT9X/Oz+pd3lfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUUDXzGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUUDXzGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4C3C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786377033;
	bh=HzgsiF7xND89JVSFy0QIBMTf2iuFYCFAfC+39BKmJPQ=;
	h=To:Subject:From:Date:From;
	b=hUUDXzGCSqP6WB+HrIXtY18Ll/CYl16VAGNZQd9G5BVdX5i4dXt8YBvaMZjqrEz8G
	 Jh7fD+b4hcqXjvhkakrIFMl/Lrs31F9PEbBAxM5c4RnJdRCQLRjaW/uDR0R44NTQ6G
	 0jVgu28foBdapCeCiLAomTNW9MxTYquWumkzgmcPt0dnI9SrffYNLZplfptL67+9Yi
	 3pFAXwhX9GidtNwlmolWz2omgUNNbXZ20TNsgbF+hcY3a4BOyuXwxn1gVYj4UXHngX
	 SF2VFyCuLMfC67k6j9WasngMoS6JlDKJIl1/PUzPNbavEo8rFMA3Apelkj2oQx9PTL
	 qOXRYJ1f61Buw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD0DC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637703369.12344.14150088309353081316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946775998f25b8bc2781dc26aa051df3fefd26447efa61210eb018554198236b
Date: Mon, 10 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786377033
