Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A3D9476
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735492554; cv=none; b=JsqD2jfR6StmJkpxURfhFM7bmcbI6CdMR20li8vHY9g/txEyZOgc8MpBTSG6JI9VffOsqM4QYqbV4PFmQdAPDclBhl2pam2CNnTQEtQ0wLOqWZteQw9rEte20R/NhInOEnHDEEPn7wB3+vtyMNJVvMiikiScvsjiDEN9Ay5RpO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735492554; c=relaxed/simple;
	bh=sLIGvExQ6uZYw/4k+3/C2ImuOVreQWanMcvi/Rgibmk=;
	h=To:Subject:From:Message-Id:Date; b=Vp0C0yNXytXy2zPolCop3QdpjALjO9kXynxEWXBOFXJ7IbTimoQHFfF/qieMZ86BK05zxcrYySffNWYoKwoq116oXZvnheAwgNlvt+M6Hmcymm219NPuz3FKg1bQl2EJVJwaaMN07i1j2Z+VRKptHzpan1j65Jcmv9FN8mfEUuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUucX6z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUucX6z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BD7C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735492553;
	bh=sLIGvExQ6uZYw/4k+3/C2ImuOVreQWanMcvi/Rgibmk=;
	h=To:Subject:From:Date:From;
	b=kUucX6z1l+7mGqyzyrPuUyCoWAQ7mPzrGHIJOYhF0H4jZjLGmErAAXEejMV7mQJky
	 px0Ub3A6Tlqqrud7U+lrMCV1dHtkd2aJN0X/J9jwcTQ3/qk92n+XQjQDKUT/kjqZox
	 3POAzdJs7Qpb/AskPGqejGYusq1EIvUxo1YK5f2LV8qV50jIXJGjjXZtLV1SrITqeu
	 OyFO/f3rbAVcZNrXrraTFLBQ403PUfCjn4P2+cezsBl38X4egnTInkPbJ15/RcrSWU
	 ejN72Y8Qb6JtjzuGv7/9ZphpkY+Z5oR3gJ7c/YWwPtP9uiUH6OK9c/NW9cdIO5B1cX
	 uorYTsdwdrUVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA27E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173549255360.20719.13055944538923418411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a25c7561b5e069ccc95fdf78406125b85774e8a4508af0efbd17685e978275
Date: Sun, 29 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735492553
