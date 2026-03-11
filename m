Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3543373BF9
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773211494; cv=none; b=gq7NS2+bGDiZrqUKa4CtsLsy2nKCeONgSZrFtPgdDiT1/MRuEnGljcA+va3hkDbSzgNITiAx7uhSvocPc8GiXfU/TSxmhpQMlCZSk/mWB8uEMJ6JN4AI5lrBnvst3gTzp/c8jcelnwyFo00j0bmTSl0jCQ/ZoH9ucJHnv/cGkF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773211494; c=relaxed/simple;
	bh=JN8zzDuNFd/ca6lz/u3P15UIsVXzYKKhFks5Mad1214=;
	h=To:Subject:From:Message-Id:Date; b=AGpxmCnTIdhESrx1OX8nGcGSMn+D71/LbXJjcuCi6Cicd6r7Zszi8USZFIp0J5326xN3ektfAy2LV6GtUxUSvZ1N+Ws85HAKncIXWL+zfZqhtsh57e+aAq2LqcP+GL2kOtRWmxT3ZBERj2dLlUBrISHNHYp45xpUYzmeNC3Vxb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SD3CIz1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SD3CIz1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E66C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773211493;
	bh=JN8zzDuNFd/ca6lz/u3P15UIsVXzYKKhFks5Mad1214=;
	h=To:Subject:From:Date:From;
	b=SD3CIz1KefSAYtDfdg5T4vNwHfz4DQZZ+spuCCjSzPKzRd0jvRo7r1Ic4YJyhd02o
	 y0NjWpy2Kz231W7M0Tl/kAsB5ZfnS4gH+e1nuJg6ylS6OC5sEG6GA2+91+4cmG68e0
	 36Q2HGNrfiS/chjpa6b6Kq4/Z3LzYKOD1BhR+JExDt11/vq1ar388k+nVusxABPyv8
	 jLUtWRE4m87MrQBGzNjJkHDlF9iY/GtmvNtOPi/gMl4E0lxqAXT0YyOqHyntwINlDL
	 PXShVjMkRUab7iFeQXwzOI/Lfcnvp3eQx8CHMTLzdph5b1M+r+4adJQvNhMfjn3F6g
	 vRovMlCuRYZ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC76FD062E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321149358.4323.18015059523196211946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f2b156835ebf24f9f79e8cb40b58ce048cb4804745f09711e1d22436e75235
Date: Wed, 11 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773211493
