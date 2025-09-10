Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFB32D3A89
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757531395; cv=none; b=mWBLN5Fplqg0pN1ASnvtpoNxHIadYFhTytn9R8KA3/390edX6KQkxLGEqq+YpgjBsjSNub/iEwbeCQg0BIiPt6YoW9O3VD0ogkDjE6MakorILnwtkv3cMFS/VYAxbIOYlXRXkedfWNA5hGyvNW+6dJQYtYtTkagEtpVa6FOZjU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757531395; c=relaxed/simple;
	bh=mcD5FM4zVE+FoXkZ3ZdvVTxHxv2WVCH2s0jID69SJa0=;
	h=To:Subject:From:Message-Id:Date; b=HWAc///+KOJ/6auP/BEQKuTsdZ7xuEV/384q6e2BwwCkxO5wiJjhqGX3N4pQSN4WBadNqDTjRk70b+ZyJessWDaGYWPXw1xpYCmIu/2ul3cKVe8gxpa8IgZu6u/YonppE5DcRccb4hD9kGZhPrhOlTgkxCzcJKACyk7nDJeIucE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNoiOjyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNoiOjyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA43BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757531393;
	bh=mcD5FM4zVE+FoXkZ3ZdvVTxHxv2WVCH2s0jID69SJa0=;
	h=To:Subject:From:Date:From;
	b=sNoiOjyPZ/tk//4ntwu6OORHPjLdrCdVs6mgNKJ5ddINO6GqGPVw16GeHGdrHjkEm
	 FF0QIvq/jLeJlXAlspWIVgQdbnMTJTuUeh0OBnodteXvUohZMb916p+NMB244Zmefs
	 HMVPwVEzZHWl8TuOc5NjbJH9cjKbKWcUJYTpsiHCUFpgcafyFFwshQNc95iXierfmQ
	 uIJvTGCnM5b95rDwdExisjrpkvYq84shnImrQGV2GzywTzjRvxsidNqg4eqydMj46B
	 jRquXLTbGvBO7SGTOZmlDMwlfZdFf+N4hgIxxkhK1EEsk7Apq4CShThezLCX8BX5n+
	 xEFjMo5+/73xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956CACA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753139357.3830.1897305572051948115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378e3296d0681555af53604202be964b20d1450bc2c595cc291045cf48d73c21
Date: Wed, 10 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757531393
