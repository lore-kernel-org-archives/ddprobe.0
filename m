Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC126FBF
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759642194; cv=none; b=sC5sorbRCDIxzRq0Q/PHJ+QFHkYubSD+6x9tecCA6jtTM3hK5aFULX9sIYRvYWyloAmDgmNPqWIz3E8Mr7fvbCJVOr51v6m/tJS3t6K27ZTKwkpMTWcL5CjrKitCbiiclB9W6nMIImH4l6bbkBVVWBFmzt4ArqyMjXiv7traIuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759642194; c=relaxed/simple;
	bh=EbNKDbrEESRzSas6HLluFpATU2qr2HlSyxNLl3UcwD8=;
	h=To:Subject:From:Message-Id:Date; b=HRaMtQ7s5vTwkOcqrzEyPiBG2T95stSviW8odOGAGTqZ8OUPcSYUbQLNg71Wsyu/4r6Jx4CmHmX0A/rdpB/OXZAUvd+GiUDUAlnKrTSaaz5oMkiiegX9niIKnFH3bBPCJchtEL7rJcMMsEOGqwzymc3SGt5hfbWLEt8YsnmQk1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXvyfdQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXvyfdQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73C3C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759642193;
	bh=EbNKDbrEESRzSas6HLluFpATU2qr2HlSyxNLl3UcwD8=;
	h=To:Subject:From:Date:From;
	b=OXvyfdQqQfElQE5+D6hK563swtO4Y4Xaz/QS4Bv4vHQBizoeJbf3NnnAT+NsRau8l
	 LKD330cvt6E0KXHNSjDpxsQyOJE6hoS9ccjiWvJKruaO1Be/otriAtbwx0QWZHbwAT
	 c8uET3VUkbZj0cIxMdH5vI9WIEyLIEGzwUau50oE0BVo5tLMToaObHZOkXv1lPeFf+
	 8hiLqmGoZHDbPE6Ym5tr7pGQNu+1eTdotWfnrfSwod17Mz5iwPvLimkw8e178mgORh
	 l4+gbnhzPf811N/hQePJJYA92Em9UwnWkFpiHEj723TDYcELHCddNteNwIlggp5QiW
	 1xP5/DhAegoxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94967CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964219357.26819.1282245334509383585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ee7f0f41cc143cc6114d0b74675c564b9a24380dfdb698c53c8350620d85aa
Date: Sun, 05 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759642193
