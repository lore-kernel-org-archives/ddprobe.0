Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4253C3358A6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765867974; cv=none; b=NglRf3zD7oH7Y8QorEyaX5NZVC2dqBCM1euOZ2xacCrVLTpBF9yj/stJnKissFqhpP11GcOPQknPFryAcqgRNNvGlhsYHWvV60gZa9sG/Z/jt79h6tmD4mCImHJeccaksS99jjvAcA62BQqgOI08WgJpVlf+Apcg+Fbp2shUsJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765867974; c=relaxed/simple;
	bh=rT1kGOaf0q04T4ERSSS/3sdhTvmW7cebSxwzlTEtiQg=;
	h=To:Subject:From:Message-Id:Date; b=eaoBb8jLhfEC+ztImyemKFMeQU2BC0LRLYV6g9yYP5FMrPCssWrIV8+FHghbHn6EFalGHKdwmke69f9Vd9mP4eDvcCtywjzqW27RHyukcbjcvsIHBd1Z6sJ9TE2cSddNKO090cMEtBWhJh2AlBoutGXtJe827B3VpLss/iPMabM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZKiNH9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZKiNH9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5852C113D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765867973;
	bh=rT1kGOaf0q04T4ERSSS/3sdhTvmW7cebSxwzlTEtiQg=;
	h=To:Subject:From:Date:From;
	b=iZKiNH9M0an0K0m3RYNWkM9EVUkxnAWrhfwlGyqFZ8aG62aBkggJ6yCAbfkH/jOPI
	 U6jy8p+yQLTccq/jTz6uHnc8xn6abMEblAddpd8YL6STwa+BTs5ks2aHPKmyKfVikh
	 mGJgRXUBR/8gYG4UwnBJDT59yKOySc+5TrRr5tZc/3CjBIQRQE4oKutUToXBYKLyIB
	 8qarMd8YqJnqvSSs1Wh1seVx2qDg3Piu2+nhRrXk3o67xSrCVhu/SaZx4bmk/5qJ3V
	 /PjI5d+bz13azbOectMTW1Ex3JFlMN38PTlvFjd8b69SxbYgYtE/w+NFjiPfcki1wd
	 PyBitTjdltfjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96488D5B87C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586797358.814.13702894179784449198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: badde9e187e162f3aa143023374e2d1eba9eadfe1f0fd868d878351b6e26d901
Date: Tue, 16 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765867973
