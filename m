Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B985371860
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788852634; cv=none; b=sApgFd5pKF9r2HEdvPf8VkmfjjVY++aN+B6p7SoFDOczmmPejATerqyQMRaVt3ZGEX7aRxtCoISXLC1p4SSx5FLjnh3wmM9NzBgwy53Dh8hfnzpk+12xsSojI+OfBIZKvUHQTUwuzLhuuYLiSlO0EMaKHMzdUq7HowDBn96D+Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788852634; c=relaxed/simple;
	bh=BQV1VJAvzkLV7doqushVVX+momd5WzdWSz8hkrk0VC4=;
	h=To:Subject:From:Message-Id:Date; b=TY4V+JEJ6G2SUFTlSj4TpqOnVTePTDdklPitrTfP3riOb/cKxjacaYPkGtzRl7O4S75FRGHW1YwUbvFYclVMnMAz2XsCr1nGa35kui5OhBi5+ZbJDFYktksta+fFvIz2pZa37tjZdmksu6M9ddrwyVoTJgOH+jxfNd2Zh9PucPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDXX8zYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDXX8zYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF76CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788852633;
	bh=BQV1VJAvzkLV7doqushVVX+momd5WzdWSz8hkrk0VC4=;
	h=To:Subject:From:Date:From;
	b=jDXX8zYJZRSepkUYpX8hjZOZvhHamC2/87d3KieEc3kkzRcIYOJ66FHAUiwB7gFBe
	 XodT5O2hXAfnTzUzoZCzG0pL7140zm1eV6Xkpub6Za8xOuNYXoyJSQ5ywAwFK/fDFT
	 fJ74SKI1vohhJa7K91SL7ZayOMbuUgkDWk3dLGfeljWB/MrjePljZpPk0efWuZiFR+
	 mTPl9GP2xBQ7h+gZHcMaYxfwOA8DkUsUq0g/2h1iObZRDJgM5P4ZYB+TRYDn6kGHsF
	 A3Ff09ml3EAPt+GuhZrEjyT9qjtsG6+jkLE/uNzftmjnNnbKJH2UmV0TI3UVdXLFnW
	 RSvlTlBH7HqFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB793C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885263369.7199.6389812008803082307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40121f9a83c6d328bfcad7d40dffd212ff1a3f7f4853996d0527e7a5203abf6d
Date: Tue, 08 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788852633
