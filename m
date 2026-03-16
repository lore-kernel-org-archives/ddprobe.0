Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C17124E4AF
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773647694; cv=none; b=BqehT//9wCB4/9YmbdMJjs4oEeexrRk0Ta/QMJ1KqxjD0Oqe402k8UwvKcAXAkph0k2ZCZRyRvGv8ovf0KR9PIFaB8RX5BRFgBJM43i8Kvgn2Tdt9ZOpdvANx94qp8m29mURa4YgLfC7BtXZ/uTTfmN+xi/vXg2PgExNGXaPpAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773647694; c=relaxed/simple;
	bh=Zk/5d+nkXDcyFS6T88A6m+Td10oVpwKLE12QdOpttcw=;
	h=To:Subject:From:Message-Id:Date; b=luYv/f/kOyluVphppl35feenni2vf6z3LPxkicHeecuPrlXlKPB3KOVM77Lt3sgKPRmSRtDpOCxznrhbLbMOXnPQMTMkadtctvlSkY0QwjKVqtKW/EQeOC33d+UW8WLYQjaCPfJ11S3rWVw+MsdsHnx7mrg6HfbRFkxGvzwPTH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtruj/6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtruj/6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF4FC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773647693;
	bh=Zk/5d+nkXDcyFS6T88A6m+Td10oVpwKLE12QdOpttcw=;
	h=To:Subject:From:Date:From;
	b=dtruj/6evS0hLP+u0KxO6JxIGM5/CY23yiNDPwPsqf2MZeoI72g9pDXSDTuCaeIZD
	 kxTP/FQnHWCsB0AB2f2TQOPLO4t0xOrNiqEkowsiqhQ1NzCZiiRzZRASp4tc176EDE
	 6+kZhYe5wLi3QhfCFXArC2+a5toYvJdRVOZCBLebyIXVydiirUHWXKzaEFEnu8c75r
	 dj0AgcyIQAsYD1iVD1pBkge+xxXIjj5qdpKxgXSwKPtgJ/YpeOAW4yhPQFOJDRvKHc
	 bUJvbe5xK+OIXpNgwe7SMIUV2Xz3gUKOpfFvzLCFRUbXBLRLE3hyxM3zIJ2mWk0i9T
	 0zvIm4BGXh9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922DDF013C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364769358.15025.1638565746709469655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9e2b4541287030579f87e3a93602bc2271b10d74c1d0a0e1bd22213e6a165c
Date: Mon, 16 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773647693
