Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768BB322B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720327583; cv=none; b=LcGhYPhO0/ySsecrhzLBdTepWzvpiXQrOjpdngp5tRwewlbMr7tDicl9Sdu9jMrUD2aeAmJIsBDn3HqbtllgVeylCnPGwAcRFh88JN365lzKOkb1v1ZpXhBH/ioH/MCj7FTbzHSWKFnd/yGN8IpqGDqtIaFxiga1F9xY3W/UUbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720327583; c=relaxed/simple;
	bh=VP9hB2kyf8QWo/rav92HjbunoDqxKThzXX2F0Bnyxm4=;
	h=To:Subject:From:Message-Id:Date; b=IEIYaEbolU9BG1Y2SEmh8qbQaNhvaV5GuSt5IM6cHJfRbpJhCKsP3Ri558jjmktaHXg1PeRvG6CaAdHjVSQO5JlW+fRUfDGUED2U7tjtDuIlYaO2ekPqp0vfwG8qGNp9W+ppJcnTkQk2vsLIk6Pq7j8L1Ax9nht9wpFpwpPc1/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LK7GMGD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LK7GMGD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD342C32781
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720327582;
	bh=VP9hB2kyf8QWo/rav92HjbunoDqxKThzXX2F0Bnyxm4=;
	h=To:Subject:From:Date:From;
	b=LK7GMGD0ukB0mx2nPAVrZ68IdBg8j4Uel6ZA7R+BZTegThek78HCc1OoBROZGWyF5
	 7PLITjlTmtGAwDvtYvAjvWQpwd0VnmnLy3OdtS7wsvii9T1yM+kj4JyWMeqy/rBPGr
	 wK855qelRseF5obXnN/0w8Kjt5Xr6hEJmqruC7izGJGOZUaPF95FMmgBeJD5dhGbNo
	 VLMThuCbVb+Oi6OXRie1+FY0tSl8e9XBgLGEeWoPMns8uYkGb6ZBMzpwzCui+M/RJH
	 +HGLcDT2lmjWvQVyXDYK+R2JDaIoT53QMRIUiZEz8fqUCY4QwrNB5P6K2iUJxtqBoD
	 19MwpC50kvy2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D71C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032758277.11163.2011398327051484388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df1ac30f91856ede99a192ba49c02da5a66864e12a51cf42d45ea322a561bbd
Date: Sun, 07 Jul 2024 04:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720327582
