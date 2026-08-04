Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B65E555
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785885634; cv=none; b=P9Qt/ZK/t63HGZJbD0LqXU3N+p78D2j0k0bEy9xdT47NP+eaYzZUZ/4Vv0FNvvZQfAO/4x5W41tgoPL2uyfX0rpiecsl2B0O5txOH0sOt93BhL6j3S4HdQI1JW98BNqG2bAsR4Zf92A3TfW4yjVeA37osOJM941GkXcdJgrknEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785885634; c=relaxed/simple;
	bh=G2CJgh/Yp+rqMB9ROuoHnrMYyUpb1Gq48BM6UUKVpk0=;
	h=To:Subject:From:Message-Id:Date; b=V8Q52Ur6MSqd2y23B9Ty+Urq3AekRCFxy74IfzfwhEWvuUdv+eUIhH5IKjtcOQ/GyxC06ndC6SKuSI0TYbA52YYklJp0tzHdGlzu8KTW6jcPmrOa8wFo8qLx3uQwSI1EWUQ3/NvbeHH1ePrxaqn/ib3QYewUfc+FRETS0xBuGx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7MQNI8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7MQNI8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D039EC2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785885633;
	bh=G2CJgh/Yp+rqMB9ROuoHnrMYyUpb1Gq48BM6UUKVpk0=;
	h=To:Subject:From:Date:From;
	b=C7MQNI8XjZ4JFR8MngaxC4nQMezJBLInzzrWcxCxPOiRRrl3sfF0Oo9H+pE9jJobf
	 Ixyc5qvY34cMGtXa8YA/7496B9l4XrVt0UxBHesckOGelw7ktBujo1mv67kX9iEc/T
	 TPSJYyABkYSHJBBfyyT9tict6Dq3673P01QuQctKx+67Tu3WveCh0Q25M6XrMHKtD9
	 x5Rb5T3rzdm6ly5o3DRfaYakOiY71kMuGiqIzard/glCndYv64IpriI2WS3wgTfpmt
	 mpOjVHBLs25h5gZbhQ5N7U4CkszOgXdh5s1/AQndqB0K2LgJj0aM1RdXc+kKCt9EAn
	 zvZc2KKSYIhEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB5EC55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588563369.18845.6083006689477236115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e76044aa5ed5a4134467b821e52544ad3828631bf8d5b73ef85007d4ea1ad6
Date: Tue, 04 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785885633
