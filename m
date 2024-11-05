Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A441D9A48
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730840754; cv=none; b=q5fKcjXXsBZwS0PWPD/pCl86DhD9/AmG+ii5aag53TbO926Vz6IAxTlFbEIEN2lSHvc4hsABHNZgmu/tSLKAV1q81Q2VLfxMeSZtMerKXhZfXL4VTndEOtA+34sF8xSg7XH6t2PpMS0tbGBKNjgKi84z5rYsEGHzbh6bDCOaNr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730840754; c=relaxed/simple;
	bh=ZRecLFL/UL8DxnMnJqegnWbRvDjdJDQPMA9R1aV4hvg=;
	h=To:Subject:From:Message-Id:Date; b=NqJnWlbzrs3aZortlPdhaKGhk0XQEkvEv0RGL9RK1R1KxHRLMz6aP6Z4/rTE+Uftq/gb4d+y+74l3Ss30llVFk80CsAxMbcFtJJEuM6OsWrXsdwM9328+mEJDPLEdORzqbTozksy/Lb7uOZD4l0AebSRXh5+oALsn2jJJ7q3pzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJ2jfVQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJ2jfVQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBF2C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730840753;
	bh=ZRecLFL/UL8DxnMnJqegnWbRvDjdJDQPMA9R1aV4hvg=;
	h=To:Subject:From:Date:From;
	b=LJ2jfVQ65LgL9AnUq14ITZpgfnrlcc8xILAHn7EzrsUBomeS1b19LKQnk3diBvtjw
	 pesipcV7n0LesX/ywkT6kpcIE7GF2vBNBFbHkt83rL5wReE5zi9qFCk2lGZWxSanMd
	 rBsLGUUu1RtBFX/mdpevghB4ZY/xclGmTSonaMgn18GGgH/XOKvJLWS/54N01nWAl2
	 je5t8qiB7J4oUQdX+5rV8gdyy6a9IDWqXR7o6vidnVd0QyWkb85LBusi4YhVWih2Zc
	 /kBhON0WO7wLeXk//nAQh1HR9AX8bnxU7hTy3kFr7+WwcALI6T0RmSsa9I0fZRg2s4
	 xjHJoes37I1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973CDD3E76B
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173084075360.19375.9946324820778653653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d006d3d50a002ad4599479a23b493516660bc91f7c35a11fb1b89f35f163250d
Date: Tue, 05 Nov 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730840753
