Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E0C28EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718774363; cv=none; b=Bk9EnsrH4SK4w/Q0zDtWrHwL7bWHJOdDoROH4iV/vwEXJvVZCeA6fgFQuyuDlCdDwWX/h+reRb22ZOKuK7d55qH1BHL72n3uEeBsfPTGwYuZva237Vlq0nZn+cHP57V1PZK958ZJmYmatq01zK82OZB4EMydQUUaM5N3lY31tFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718774363; c=relaxed/simple;
	bh=L6sbT4Hf1hC4mhXT7OL6lHYaDmKNR1fNVQ8ZlmsUYh8=;
	h=To:Subject:From:Message-Id:Date; b=NZS3oOt6PpGeafF1srIbVxL+2SDYn6tBQxF9nRB2zyUGvFVQIB7nMWoYtgd1o2s1X81VvDMUO0Sw6/4gS5tc0IrSF9wAOoX9iImoo7kbBoW5EUkPddbX6FtraPEzdohoL8FsooE9eKaWsK0n4p4IoUHhElLrKPHFeJyuHMkbJr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SisRderm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SisRderm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB89C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718774362;
	bh=L6sbT4Hf1hC4mhXT7OL6lHYaDmKNR1fNVQ8ZlmsUYh8=;
	h=To:Subject:From:Date:From;
	b=SisRderma4f0PaNvcDVjtUsHP1oUkhSbohgM90j0GGbChUQ00ykaMoVPfqXvLSW2x
	 sgneGr5I2gGV5ADBNqTqzS4NE7SECXtUeObxa9HmFwq57CohtckOE1g0PJzTzRMcg/
	 vrjjeJL5a4l9+dvFWt4gswWaZuhKpuPJXQoMD1HFNSXTZocC0/pbFJvmZdEYiMKQIo
	 JwITS0mJgptsk/YVX0KKspktOLHIhEgX6IIyqaiDLtUzPeugA5k0Gw8el95Uww4t4t
	 QkJREMHNoRNC72sZc8m0TPu8vCzpMJti+7faDXekU9R33QErNgXbDstqWp3Qn3riI3
	 8hyiXk5MoIF8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A31C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877436279.4670.11392782491552202190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bac6e567a39e05e4e223cfacc59de053ac791d4a36d0b60398cf098255d6177
Date: Wed, 19 Jun 2024 05:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718774362
