Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F46330B0E
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767030834; cv=none; b=XgJwDb5E3donRfjhmJZVbYrJlJmTZ4V8uuLpD0eD5lvFsDwduCbhrSZDINiYPRsgGLMCOloY8pL2YpITmC92L8PICfmXhGmS0DIfbfTLpzq6G2Hkb9fCT4NWdtSsjhS5Wt3YoXqlKsVuikDpZGaCud5sfu1Oh8rtEzt4Qbx0rM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767030834; c=relaxed/simple;
	bh=fnMquRQzPf4TBrBckBYbfJDUbTLVU0QvSq8zG7sTw7k=;
	h=To:Subject:From:Message-Id:Date; b=bKBuFj5AxZKpLW+eLjrk5NIjfv7OITqQxIP1bSBZ8OqLpRSRT9fw8szM5ytRMHIpDs8/qHFOS2vjF9uZkwkyRPHgEW9GavqCGjRhfo6lbl/us+tUlC70nnIuvnXuUX1ekcs1W4+PcvPXz4jd/AlO7ilanpxDLXS0RRbkfIsTGz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wq84742P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wq84742P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE50C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767030833;
	bh=fnMquRQzPf4TBrBckBYbfJDUbTLVU0QvSq8zG7sTw7k=;
	h=To:Subject:From:Date:From;
	b=Wq84742PX3bb+RDp10mMhn/F62iMJz3MNbucgiHaXkXjkW+eKg6x5R/xy9JzERSvD
	 zQkddp9OEFr+lsKUlkxB7EBbz5CppPIVV5ItqqPxJ+mUInDMqO8pzkppFfgbcd4B5Z
	 gnaT/YClsOdcUV/MSpfX2vl2ybSAVJBgJ0bhXxI4K7iiQM1FSyHa+sULQGQxyciKoF
	 mer2H1t4bR+kRh+3un0dlz8JsgFr504p+Gh+SZQOp1A9+kmpzNxX9R/180q+M/LLXO
	 XyxAmDisn9yxrvy8mKwNDtz7jII1bz2gF5juJQJlBwv1a+9gWq7E9hoZ7LFnu4w3vM
	 ehZ6Wh6uZcurA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F463E92FCA
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703083357.5089.6995613097367003499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b153d272893833f15bb1a64a05c1f96a02cf104a09d995cd9c42dff6cf5ff705
Date: Mon, 29 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767030833
