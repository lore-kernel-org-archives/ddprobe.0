Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA4232E15B
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770324234; cv=none; b=l27i41kl9km4GY75Pv8eOg3V4hS2b7iNaMjtaAOHAVSh5pLU8DBpKU4tziYGssxrM1r9Zi4e9fbCOWrkn7o82esp+/OSmyqjwsl6DF7q4iiCTm5SZCqu8aC4bzZ8Qh08y6wo2XJkhyMDxst0DpOQ3VN1Td1l7paVpkPkXoSqQ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770324234; c=relaxed/simple;
	bh=qXW+fnuxW87aPxTqYITmEMeEXDtrSCbEMZ9fMnFin6Q=;
	h=To:Subject:From:Message-Id:Date; b=Lupda7Adv8zc2JY3WIWwWNHr51uOqsqwFCO31CHqfeKvMhCAqijCzkC+hJSjYJkyjgOrfVxejDVJrxwu0f6d1lVYe5yMJfWmB7IgNk3tHg547Fj7LxcGAekMxPc1Fm4G3HmrBSpEE83avBDw0EWow2SJpmruATicZmk0vEbbAmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhT4mBAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhT4mBAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B96C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770324233;
	bh=qXW+fnuxW87aPxTqYITmEMeEXDtrSCbEMZ9fMnFin6Q=;
	h=To:Subject:From:Date:From;
	b=dhT4mBAsW/QveY81/VsFR4ZvKNqvzcxrXjjpZL+GvJO4SxvGQO85EVKcJvGd55fnF
	 Ogyy3YHGmsZFVyKxanklbxkah7MCU9EBYG64f6bgFkmlNeaPmcr+mJOkIrxN0kBZkg
	 ZZmv2NUskdEhs5zU7OKi6Z2gYSM4+0vXtTN7s/PXYfRkP3Aj6ZR7n0czNfrGvQO43G
	 h8jSDHO+BGdUaotV9YGSnU4pMkr+5drGnHmnwrPMFaOG3ffwavkBTvbHmuMd1HDOnr
	 +S721Uwz9gh7oNMOYs3R7lyAw/bh1+e17jxP3E7zlN/MrfJbyzf89QGv4bBzgsElaQ
	 1M8uAebfeeRTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F81ECD9A6
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032423360.12659.15798663028268042793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726b41fa18cceeec20923b773d92a1c8fbc9ba0bac985bb07cb6b140f30e0dfc
Date: Thu, 05 Feb 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770324233
