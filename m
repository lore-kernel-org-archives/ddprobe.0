Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF411B425C
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759063195; cv=none; b=hLcWxc4tm0MQAA3Tt2WY4rf/sXmj/AS31d0QcEB7hiyJF0BmSD5KhCjekLc2BiGy96Yxc/VGa7FxQV/H2f6t/UyMneFui1+EIPXdgNHfwM1lJ4EcxBG2stPTV5eGUGDv2z405pxSSulUchjIwim6mHQLoxwGrKYinXa7b5P2djg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759063195; c=relaxed/simple;
	bh=wF2ZmZG1yDecW0UwoJPFEyHlIsTEN2yZrVDb4ksbNHo=;
	h=To:Subject:From:Message-Id:Date; b=aWeupXhtI2tMydH16rk3u+2zHcLAF9fyCXuMedYMukR7QgPHVXe9/O24tU4N9UjhULSkO08iXwUgYDfwAmv4FX3C9HwETonhahFZ/7HH1yESHlvtSXFUQyA9v0C2Eq72qk/uDOdXu7ZcKM4BezywhZ4QTVb3EZmLbtAVb7y8QAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bopqi0jT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bopqi0jT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF19FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759063193;
	bh=wF2ZmZG1yDecW0UwoJPFEyHlIsTEN2yZrVDb4ksbNHo=;
	h=To:Subject:From:Date:From;
	b=bopqi0jTO50GdRvZP/ywthrNL5dwoVb0ncJ3qqx3AeiIPecZcW/s7Beo5nRpFHBmp
	 eCWA1Q6slhPdB6Q1PzQxpMY95CwT6Nq97yqQgN/fX0KvEH5Xtz77U6POHcAtjV5KCM
	 A1qUZSHVHHGqCMcrTAIULCJHnlXxpHVQKNm135YIC9246qqGZIpkIqDTirYNe2T3d3
	 Lkocp342ANvVH82hh/TYWHReIJhrhfPFht7f6cr1EB5Pn/UIyRQRdSqq8vqpO5+kcq
	 sVq/vklebE2ZwyE1NJLj/76VR2zIMlLXZ2F0GN59s98KLoHxmjgQqXPzLmDXn9kPnr
	 EkJ4uEahroJgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939BBCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906319358.7724.12233463317194413863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d2234b5cf77dee36366cf2660c9af4c68fe0924504dfa379997be02932e129
Date: Sun, 28 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759063193
