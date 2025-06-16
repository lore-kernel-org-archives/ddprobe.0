Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F014274FD3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750068594; cv=none; b=j1iC3+Lv/hXJBWNvB0fBNMB1uQ06PAJTVYakKmUI3H2ZoyA78NcIFlzBrPJiKCFKAy909tpbYThnJhPugmLGSBVIR8BdcpPtm0KvuiIJtZ+t7j4A6xpTF6zNfXjCTiexd5qPECrNQxcqauDYIhwDUsC+9xHpBD0KZN/287zeaSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750068594; c=relaxed/simple;
	bh=C9kQbqIsXWBQsZCKQ+x60T5z/OYbuqzxCnpmLNl4MPE=;
	h=To:Subject:From:Message-Id:Date; b=JIDDW7sASxsK81hzF3HYQbx0bvhxSDm1s67puscgFUtzV2F4utfZFCV6/wFtisTT9hT0W5WhbFMFwxDb4q4O0RhaNpt3yJjT4K1hmsv0i5eUBV+SvoSKymmLK8ymWasa98gE0qY53wGyv7UXbZkithB8r4peLmReiX+ow4OMg4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJpNALiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJpNALiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28E7C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750068593;
	bh=C9kQbqIsXWBQsZCKQ+x60T5z/OYbuqzxCnpmLNl4MPE=;
	h=To:Subject:From:Date:From;
	b=LJpNALiJymTTTmmu2hpRatbswa0++U9W+ELDOGBsND/mpxTSy5nYyIHqTysvu1g9S
	 B/YBMhu5znhrRbPeSz2xtzlK18YitZ0c9NQIQCnZMTRQ48CQ7kz+ntAzR2Q+x0sMoo
	 RwKJ22yH6AyhYmw96QugI5s3YuV43UGNqFp6zzgZI27UiiQyr66KQpDkq77JXB7J+D
	 SqxkNeIc6Xd2WQAzEZcN3t5HgZkc7odcfgbM+Lx3imgyUFCzSq9GqW4hlgVwcyFhzq
	 3EwpPcRBCVHLhZ7/lUNrFTKbmI+Cx1Kdk/Mw5aJfkQn8XCC+fGnzLjJBu/eUKviWIu
	 v7STO7RT9Vwzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156CC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006859358.376.13433751001231930003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20b9f4d0ac5f7cbc8edff7a66cd0956b343345ba39a57332dfef062e0bc68e9
Date: Mon, 16 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750068593
