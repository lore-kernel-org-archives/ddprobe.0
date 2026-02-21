Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FD135979
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771647294; cv=none; b=obbQ4VC9PnqrOc/6Y4aGRDrQHOrv7a4JZzRHVXPJ5/OJDsXPyPQazHF6+kZK5xlHl4/d25Z2VbFyFGd/AYidGoVzou8Qmowtlv8hHw9mPPYKhJza454v+1DxLLuOcTvTkk4/Z1pb1wgACCDamMLqt0xcGISjc4It04uTQRmsICw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771647294; c=relaxed/simple;
	bh=XQ5VgFNqJJWOJfCMALZ0LJYIlZ5KfMaWJ/Ia/qEzzVo=;
	h=To:Subject:From:Message-Id:Date; b=rsARgxsue9xdPmXzZRd5t8z92FnEFrKxar8vFQNQGoLiMu/vidc2a5CqSM/zTeIywBldko43cybYGNqrLr+eCpaYn1bguocqdjRdE4VOH6o+j3avmD739fsgRrMnPhzT2BuoYrIPWkNGNTlvy0h8b+M5GDfan5Eur9XCSpfAM/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3uTRI6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3uTRI6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC26BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771647293;
	bh=XQ5VgFNqJJWOJfCMALZ0LJYIlZ5KfMaWJ/Ia/qEzzVo=;
	h=To:Subject:From:Date:From;
	b=Y3uTRI6LkXwKusanLvGRrMQAtJsr4ws+tfQDvn0jUKTng3oW3sg3rXCIdTimFvlr6
	 pmTib0tGk7UIqlt0fa06prlzNxqWHiHpievp98m3U94KkxmMqCIIgxe/L5/lbac5mN
	 iWc0OyUV/UzPGTnacRucQoSxBozuchKEPzkSywB3vFto+SROdBTySJyc6om8R9Q/qt
	 tr/4TThYC0glQUlSYm6PyFiiMPxF0h7irEgxs2dMx1A82uOZYrBg6aUhFGYf9vS0VZ
	 hOt8RfBozBmsptxMSTMSTk7gZVxUV0adfO8Yj5bEXHTz6r8iS8t0Y/MA9FG9FY2Gfs
	 mh3d94Ks+j+SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91607C531FD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164729358.15679.12057103975435645106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec1684bc7f9d47238b805f944b2620024256f5ad83db9aef1bf95170f94e172
Date: Sat, 21 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771647293
