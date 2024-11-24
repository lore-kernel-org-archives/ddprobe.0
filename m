Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176762500A0
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732477554; cv=none; b=g6DQRuQluO/DSW1cp8iWJB79exgO4vu+sctPwzkHex6Mqim8rpqn0if8XHVL1CcAL3YYJirRAgtRthlQtCj79LfVJHHtUiWINglgWdO8aiv2CnfVeoW36evY6N7FsldSbr+eEZ9anBUobHcZan+gvdhhTDgfpKP92NR2FiahT7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732477554; c=relaxed/simple;
	bh=DZdh/EBnM7v/OTSvG1NuJCW2WiMZ3kWPSOVOmxqwq4k=;
	h=To:Subject:From:Message-Id:Date; b=MEF66pJpv0Q2Qfw5ZDtO8bkHqANuQKNjfhPJFvjFr/1+520Me61OZBaiATko0giHf3NzbIT60vb+kNLN/3OyQpfhluYqMtBi4DdOjR/5GGNiKFEZAKZfSkafO6gK9cLJh4wQBu9GHo3uVWmeDJj+nnuNb5YUc3WdZl3Tbg6yzBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJpxhKvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJpxhKvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BD6C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732477553;
	bh=DZdh/EBnM7v/OTSvG1NuJCW2WiMZ3kWPSOVOmxqwq4k=;
	h=To:Subject:From:Date:From;
	b=ZJpxhKvMbmZwTlGkPJS8xztC/GOtbNgUnDs85hc56AJ/wOlUOuf8bxUcqwoST2iyc
	 w7SYRv7oRjdXdR41zn7w67txgJZa2mSDOPHCVKchant2IbfVCvt2+s3inL/KdCmx16
	 T6P8wHnNFKmM5BPBVy2BsJxJJfPkwe054oqVcDI0eu8GKoK1/0lGjduTO0JS4ksvyh
	 km3gXenUPGFOAPIZ7OnYLK63wBIHpfeLD6n0kGX2Piyga5S5y1IN9//o2Xgf7AZ65q
	 qRThBxI8Ztag5EmJR6TM0J8NHSnehuXlas3hpzpvdzERGGlJjdIa5mrgXbBVh9sIj8
	 p2tpHqKhAjn2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ACFD75E34
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173247755360.7115.3052107265881006456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ee78e6aca1ce06f29474bfbf3a12e98177e643d8f8f52c7006db2cabac366f
Date: Sun, 24 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732477553
