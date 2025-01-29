Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C32E1B85D1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738149954; cv=none; b=R937nQILcNK7Wr4Vo+0nmvMmTSL8ZSHWc2yailvoFKd8g2BO1EIPlKaAlXcY9kNp0e2zf2+ex3cGLdTVkAIF0WgfmkoWytjSEdvKffrk7WOGnfu0iQ3DSRe5/sV7X/58obHkVpNRW3Zc7oGySTVz63NWZCvjpZWsJXgPXCEUjaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738149954; c=relaxed/simple;
	bh=sWHGDvjxw7ttrjWXBVovkmFz2NoQoFdSKomN+Wtglkg=;
	h=To:Subject:From:Message-Id:Date; b=sOVhaHcFZCbu2Mbc1kzajAMSzMvGiSDLvd/bwIjjN3DDSBEQbx5s1qUheKV1HECDKH4+Wv5Pty6SpUai5i2lQM8brQ05T332JopkkGkbhJvv5fy/gsDCTxOypjSjUkNF/pOz+i+z+QhLOI84I9pTTpuopSNftnlgNgXTWVjG1AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAby04Wi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAby04Wi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4507C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738149953;
	bh=sWHGDvjxw7ttrjWXBVovkmFz2NoQoFdSKomN+Wtglkg=;
	h=To:Subject:From:Date:From;
	b=GAby04WiQSwSoew1d8+ud3Q3a8EW3XRN6/sP8eIde/BXN1wCTmZ/V0j+cnqp5aKzj
	 5XmJwF/XNlW5CiXzbo2QeJGo7/j0BC93x2PoMtNmpFzh3KM58B9grzaiPLP9g4XtyQ
	 8UPoYO68h5NaYjuZT9mvHEMjcIa9IC0RmipRBmvbY+mHS25G7x77kEZ6DEDoEPta/l
	 8oa4/n38rwXSj77Xfc0KeCx3uWX9V/0wIxmo1m9PtyQdSHxfAmfsGkbzPgaGllZ8xZ
	 f/RbTUBgV3u4kVLssVUfDzT6w+gghfF2ccRITWm9kIDfQshr3SPU2Ti7NzDY97CxwV
	 mUIDWOLgDKiLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A604C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173814995361.11838.1360848872866442993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd205ad6196ec7eef5efbe2f60e1ab4e00587cce7405db4a1f89ddbfe05c0437
Date: Wed, 29 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738149953
