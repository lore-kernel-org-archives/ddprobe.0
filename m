Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B7122424C
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773806694; cv=none; b=bvcBM0gah8dMGZEfD7pScNIYljPCBqexiNJo7vuueTegqyjSsutLWJYwZIHFEHx6p3RlXcu5BAdhLdi+vedfxJOhVrhLgLVk/jKBnuVmnuYVOJ8kEal3qPAbK3Ne+g460R3+y3uHsJA28LTdVnHCgotkYtFF7Br0AzKTWN52D0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773806694; c=relaxed/simple;
	bh=uuw6iyLuUlZ8ZFQjWgezdoeeH+lO3QXiy/hKPLtEm1I=;
	h=To:Subject:From:Message-Id:Date; b=OvKTo3XnCvezPc8DpP98FnGUfM/N4Or3qxigMgOIt3rrKQScYdW5MUbSo6rPyobRguIDuomU9Tm506ZIjpREvQfXg0MuR2LMADAybtBnAvZoJdVjK2DxEJgPZwEpmixGdYwP7b0/3n61B/oPbv/Mh5XmlT6NpeSJreT5E4nONWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGxE6eI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGxE6eI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A081BC2BC86
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773806693;
	bh=uuw6iyLuUlZ8ZFQjWgezdoeeH+lO3QXiy/hKPLtEm1I=;
	h=To:Subject:From:Date:From;
	b=EGxE6eI5ldAYhVUQqdbpAPvWWfbNIw4grQ3Ml3MNh9B3Rwqrd/AckfKW3spWB0nR9
	 4zj4SpWw+biLMY8Svf3HxwcnqDLSLVEbsVBpZBqg+9DxDhldLrYoWhUWpPZ2kugvpn
	 4Y+5shsj0RRUeayAX9NHxp0cfYvvYwhc1Q/4Ld0LjsYCbAyA+XDeRs8jATeoAeXdPT
	 y8mp+PVbeshlrOeunOCFiQupSE8Y+4ifmQcZjViroZZ9DTL4zlgneLVtGYjkrCOvkU
	 sn8bZqeIM38xGwi6upZh7NM2Cijhe9KQ+lunjvs5ew6LA1BY5jzgcYRE1+nvZNBgr0
	 L/p7XCXXhdafw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66AFCD0A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380669357.8358.15367522692226950883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c0b01077ddc3dbfcaeaa5876516e9bc313ac8527881cfffb689bd50b3c55e9
Date: Wed, 18 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773806693
