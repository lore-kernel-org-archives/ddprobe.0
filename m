Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3338637F748
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789483834; cv=none; b=SNDYMwuhyO8duaWQQ7OiqiQaq4o7nWTmLgZxvsImVrbkTqH+T7UuBcR6S/20xBiNSHLyFmd/AxgmrohA+hA2awahdieI2mdjmulMxTmP56Jr8H/VVzxavcQRUZGbJ82kxzupJ4aGHP44Hvp+C9zDt1zUgnigk5BcQC3LCIuxS+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789483834; c=relaxed/simple;
	bh=QipBs+OYGqKnws6YlBdyvHtuPC2k4dsrgysQUjlE9a0=;
	h=To:Subject:From:Message-Id:Date; b=Xuk/UYDqy1w5Ge/Mb7z0Re5oy0I5vUkleFCQ9uwlqXWemwyX99E1gkxqmuuLOLik1KA54hnd/mmvNGdVPo1SZ2a8p49ji9C2dFY861JukYH80vQVL2WKTjXIQK6qH6QLABkxrLeUqKi9PthVFfzFeMGZKp4CP1fqlV4Ouai4jrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWcSrFZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWcSrFZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA0FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789483833;
	bh=QipBs+OYGqKnws6YlBdyvHtuPC2k4dsrgysQUjlE9a0=;
	h=To:Subject:From:Date:From;
	b=kWcSrFZLV/qCampvLZZkju5OCpVEQF3T8C6wF+oO1VHrKfd4EI+GBb/k6L74Kl3ay
	 L9PIQ20arFYvb0rOreZBBvjsNDKd8mMqGrBmXexLdluJ2ecMGFq5JOlqLGqd+Or/cb
	 zUQu9aRJUwTJ2F1tC9w6ACIUiy47z1Qd9m9ARaNVL7nIpfa0p0mh8PmBkXcnS2DZO4
	 I+qe0JXpGM9TddWT5HXW5RdcvQucTgzHKCvkBFreEfMTSP2TmeQ8UE7LJHgod/BYvJ
	 gjUez0pc3zavHgBnV5jaR7YA+iAGVNPAqRzP8ZJ19XaU5mLv0Acs/QJOM9Iz8422hZ
	 Qe5bsPItoGaFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97EEC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948383368.26969.6740955917862294813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355d2c6cf62bd57814db9683ec65b2063a85de05d37225865cc9fe35ec5d62bf
Date: Tue, 15 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789483833
