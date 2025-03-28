Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3855F22094
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743188394; cv=none; b=eG4shW3Gvy2jYbvYEI9eSrsuaf6PZya1qGmfzjK4n6vbdMCXUow/HI+fz6QoJcb5NsBZTnB3PNKvQQC0hhuP2MW85jKV+VtEYU7/fsW2TtUm//hDmLuSqBGKOxhqevRqYFEgSkCgKD9c2bMe5uLP1UfZhdX2WISfNj9peKIQcsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743188394; c=relaxed/simple;
	bh=nnA8zqYJ6yv7P2HEkIlBBsIHl4L+f+on7zquwgcIkPY=;
	h=To:Subject:From:Message-Id:Date; b=Mqw33Q2AivjySVlfqdoYj7VvPTQfbDELa2hUdUmjOpGpg+GXoL2spphS684XjbN5qUQI2uDLj00HQshrIuwCWYvDd1xSFZfLH15T2XdlzPCyqJpS2xgwIjIITUXWvnD4x9bj02I01kwqlBXG59GyYVrrBmEyC7bGTX5f28Zcrag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K52LipVL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K52LipVL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAE0C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743188393;
	bh=nnA8zqYJ6yv7P2HEkIlBBsIHl4L+f+on7zquwgcIkPY=;
	h=To:Subject:From:Date:From;
	b=K52LipVLgjXjmMZafsXzaRvw7Edl3cT4mMsX32rF0Htpeg04OAv3cMYWL6FBnwvzE
	 xx43BKsF4EG5uFGCCdXtuEXzKiRmpnJGZxG9tvTdKkgh8WGJToRwuGW42vvDjNGQ1W
	 DnOW03pO74ryJOIKwa2glN2mcjoCKVZJpVXuQ5IvLZ2mqq64fhzMkHI7gqBK3KUdxp
	 2RxDBRrMvipIA19jxyHVW0FTtkFe8JqEw297ykjgmzmysKuVngWqcQj24T8vLved7b
	 dGMWPR0vuqVTMU4Y/nENxNIxha/TpQaSHCWS6XWx+n5fPdrUzIEg/PNyX2ZDF5PShc
	 U66+C2PbXmTqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C0BC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318839361.24838.14125693665544318395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b681e64a1e9707233f6bdfa8275655ddb288aaee51154c8afd7c6af81e7abb9
Date: Fri, 28 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743188393
