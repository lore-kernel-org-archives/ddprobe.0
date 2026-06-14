Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ED53C4B98
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781454394; cv=none; b=fVvbtUhAUxiIcmDV8/pNSSA+xvZhy97nmw1WeTEIIoZylCgebeaL9Iv28Z+sZYH/JZNhnHnH38M44Q0V86TkcqgLJOkzDpR9HWzGZaNfu0+KW6IgUyQ1ALKJao0e18KLg6DOm31EihsSOYMyyrLQpe+nubxZIkPl/8N7ed2H6GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781454394; c=relaxed/simple;
	bh=a6fGxl6jj/4YSDRMD6XtktwZvFwSYbgU3a8R3/FKmSY=;
	h=To:Subject:From:Message-Id:Date; b=qEprh4hibLXTgNk5D1ERs5AHnuYs1yTBuBQd+cxfviNQGzY17BLhrUgdS+hFTfGXMbOLTv0OTHTanDuhavylWfijNIC2Ah6TP4SDW65QrOdanSodH1pNdFmn8R38zqxHqtQ/jsNpFHRinyIJr8VhLAbdek2Se9x3EwvSyaLj5jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOh3Kjb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOh3Kjb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA66EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781454393;
	bh=a6fGxl6jj/4YSDRMD6XtktwZvFwSYbgU3a8R3/FKmSY=;
	h=To:Subject:From:Date:From;
	b=iOh3Kjb+EQz+WRvK3kj+dT/TW7JloKggbshO8GSkGKFGV7vJNgdw6zjxHVbeeXD2N
	 1/TK0d8Fbu41ap4hYLVcWMHahNAi/AyDgkKb5QDlqjZWgsK9g14PB9N+ESz6VtHg+b
	 y8RncjlEZbhSk+2Bj9HPPmqDoek+r/tJ6dBDTFvAZKexSZqrMBlKW0LnUHfHAS3P5J
	 cMAirGe+bWIaFCwMfCi8S+q8Qn4M+TorRKk1FZ2i9Xv8zW01N6wiU8QUdLFtWXPJlw
	 5eixOG9Ii4IcSiXLoBMg9B3JaN74T6+CONiWE84zDNDwTKcnnYDe6tumByPK+2+lmw
	 mxUWHp5qMH5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18B8CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145439368.14672.5687458054548383570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd43ca0e38e308ce808fb7a272159d9b9227df65e98fa9645451b33b2b06f2f
Date: Sun, 14 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781454393
