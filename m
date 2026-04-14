Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248EC28CF6F
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776174454; cv=none; b=Uhfo3ehRluOwbBa6tSrKt3ObnbPPR3UY9NeGFIToGQdqOMYklUDS/eozx8ADz/a74HRlAoQHGal2k6nKMIQXndZDjfFQ3iGgLFWbAXbRwcwjeBb4xB9gYB0xfctORY2sp9qiUeTWHTSXfoIyyDviltp3YXh1iKjmiYrx9yfviXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776174454; c=relaxed/simple;
	bh=CJEDygaRMb3i43yZ2pC3lWBB08uqSQH/D7dVh9ZvKII=;
	h=To:Subject:From:Message-Id:Date; b=altqwSBCe7cIOvZiXUTQcqfpQb4wi1PSNp5M9ggi06sTrc1UGV1bXRJPM8S/qxRd0Q5RgMvt15eGGM3fd/jjKKkSK1oeMbUSxif1XG2oKQyagO35bpYnTXgFN4ezY5o3LhpVbSHGYzymciKiGHu7jA9CQxE0Sdv9XLfC5nv5VuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDfsjPcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDfsjPcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E5EC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776174453;
	bh=CJEDygaRMb3i43yZ2pC3lWBB08uqSQH/D7dVh9ZvKII=;
	h=To:Subject:From:Date:From;
	b=FDfsjPcK6aKytsZA386Jf/eMbMMgzfLoI/58lx3ABhvPe+YGyuVcvaMqHMgTWsKG5
	 Qo6tSJK54zIoDlSPky1YZeE5Z/Wdjot7UJLdSVDgtW1Lwb6cp2X23kFdO6foFK+4nW
	 VP6v3o5cinW9KrpFjqNJP7PzRzqfYmpWK3oBKKmv7By3y1iuibvKiJhpqyAMWARYT4
	 coEojKoA84A8cEVyQj9ArHldLR1W0ov9+kw114SGYlwQKcp3tFpkVPLqb0AZ+0rrwA
	 oIbapO1ZtdCo9YNu13Y5kSaCgikBg5zr7eyRQOfqZq9a03buXti92Um/dshWqTwOX9
	 0d/WAdgiMANxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BFAF9D0D1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617445368.27907.10858312296584092170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65bbd3ed6da33024c5865c513f10302a8eb4a6b2d427cd471d98bc5e7c0a23e
Date: Tue, 14 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776174453
